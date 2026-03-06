import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Models/word_model.dart';
import 'package:lingolakidstories/Repositories/library_repository.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/Services/translation_service.dart';
import 'package:lingolakidstories/Services/tts_service.dart';
import 'package:lingolakidstories/utils/print.dart';

// ─── State ────────────────────────────────────────────────────────────────────

class LibraryState {
  const LibraryState({
    required this.allWords,
    required this.popularWords,
    this.speakingWord,
    this.isLoading = false,
    this.totalWords = 0,
    this.searchQuery = '',
  });

  final List<WordModel> allWords;
  final List<WordModel> popularWords;
  final String? speakingWord;
  final bool isLoading;
  final int totalWords;
  final String searchQuery;

  /// Words filtered by search query
  List<WordModel> get filteredWords {
    if (searchQuery.isEmpty) return allWords;
    final q = searchQuery.toLowerCase();
    return allWords
        .where(
          (w) =>
              w.word.toLowerCase().contains(q) ||
              (w.translation?.toLowerCase().contains(q) ?? false),
        )
        .toList();
  }

  LibraryState copyWith({
    List<WordModel>? allWords,
    List<WordModel>? popularWords,
    String? speakingWord,
    bool clearSpeaking = false,
    bool? isLoading,
    int? totalWords,
    String? searchQuery,
  }) {
    return LibraryState(
      allWords: allWords ?? this.allWords,
      popularWords: popularWords ?? this.popularWords,
      speakingWord: clearSpeaking ? null : (speakingWord ?? this.speakingWord),
      isLoading: isLoading ?? this.isLoading,
      totalWords: totalWords ?? this.totalWords,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

// ─── Notifier ─────────────────────────────────────────────────────────────────

class LibraryNotifier extends StateNotifier<LibraryState> {
  LibraryNotifier(this._repository, this._ref)
    : super(
        const LibraryState(allWords: [], popularWords: [], isLoading: true),
      ) {
    _listenUserLanguageChanges();
    _loadFromBackend();
  }

  final LibraryRepository _repository;
  final Ref _ref;
  final _tts = TtsService.instance;
  String _lastAppliedLanguage = 'en';

  String _cacheKey(WordModel word) => '${word.sourceLanguage}|${word.word}';

  Future<String> _resolvePreferredLanguage() async {
    final currentLang = _ref
        .read(userProfileProvider)
        .valueOrNull
        ?.user
        .preferredLanguage;
    if (currentLang != null && currentLang.isNotEmpty) {
      return currentLang;
    }

    try {
      final profile = await _ref.read(userProfileProvider.future);
      final lang = profile?.user.preferredLanguage;
      if (lang != null && lang.isNotEmpty) {
        return lang;
      }
    } catch (e) {
      Print.error('Could not resolve preferred language from profile: $e');
    }

    return 'en';
  }

  Future<Map<String, String>> _buildTranslationCache(
    Iterable<WordModel> words,
    String targetLanguage,
  ) async {
    if (words.isEmpty) return const {};

    final uniqueWords = <String, WordModel>{};
    for (final word in words) {
      uniqueWords[_cacheKey(word)] = word;
    }

    if (targetLanguage == 'en') {
      return {
        for (final entry in uniqueWords.entries) entry.key: entry.value.word,
      };
    }

    final translatedEntries = await Future.wait(
      uniqueWords.entries.map((entry) async {
        final word = entry.value;
        final translated = await TranslationService.instance.translate(
          word.word,
          sourceLang: word.sourceLanguage,
          targetLang: targetLanguage,
        );
        return MapEntry(entry.key, translated);
      }),
    );

    return {for (final entry in translatedEntries) entry.key: entry.value};
  }

  List<WordModel> _applyTranslatedWords(
    List<WordModel> words,
    String targetLanguage,
    Map<String, String> translations,
  ) {
    return words.map((word) {
      final translated = translations[_cacheKey(word)] ?? word.word;
      return word.copyWith(
        translation: translated,
        targetLanguage: targetLanguage,
      );
    }).toList();
  }

  void _listenUserLanguageChanges() {
    _ref.listen<AsyncValue<dynamic>>(userProfileProvider, (previous, next) {
      final previousLang = previous?.valueOrNull?.user.preferredLanguage;
      final nextLang = next.valueOrNull?.user.preferredLanguage;

      if (nextLang == null || nextLang.isEmpty || nextLang == previousLang) {
        return;
      }

      // Profile language changed: re-translate in memory instead of refetching.
      unawaited(_retranslateFromState(nextLang));
    });
  }

  Future<void> _retranslateFromState(String targetLanguage) async {
    if (targetLanguage == _lastAppliedLanguage) return;
    if (state.allWords.isEmpty && state.popularWords.isEmpty) {
      _lastAppliedLanguage = targetLanguage;
      return;
    }

    state = state.copyWith(isLoading: true);
    try {
      final translationCache = await _buildTranslationCache([
        ...state.allWords,
        ...state.popularWords,
      ], targetLanguage);

      final allWordsForUserLanguage = _applyTranslatedWords(
        state.allWords,
        targetLanguage,
        translationCache,
      );
      final popularWordsForUserLanguage = _applyTranslatedWords(
        state.popularWords,
        targetLanguage,
        translationCache,
      );

      _lastAppliedLanguage = targetLanguage;
      state = state.copyWith(
        allWords: allWordsForUserLanguage,
        popularWords: popularWordsForUserLanguage,
        isLoading: false,
      );
    } catch (e) {
      Print.error('Error re-translating library words: $e');
      state = state.copyWith(isLoading: false);
    }
  }

  /// Load words from backend API
  Future<void> _loadFromBackend({String? preferredLanguage}) async {
    state = state.copyWith(isLoading: true);
    try {
      final userPreferredLanguage =
          preferredLanguage ?? await _resolvePreferredLanguage();

      // Fetch user library and popular words in parallel
      final results = await Future.wait([
        _repository.getUserLibrary(limit: 100),
        _repository.getPopularWords(),
      ]);

      final libraryResponse = results[0] as LibraryResponse;
      final popularWords = results[1] as List<WordModel>;

      final translationCache = await _buildTranslationCache([
        ...libraryResponse.words,
        ...popularWords,
      ], userPreferredLanguage);

      final allWordsForUserLanguage = _applyTranslatedWords(
        libraryResponse.words,
        userPreferredLanguage,
        translationCache,
      );
      final popularWordsForUserLanguage = _applyTranslatedWords(
        popularWords,
        userPreferredLanguage,
        translationCache,
      );

      _lastAppliedLanguage = userPreferredLanguage;

      state = state.copyWith(
        allWords: allWordsForUserLanguage,
        popularWords: popularWordsForUserLanguage,
        totalWords: libraryResponse.totalWords,
        isLoading: false,
      );
    } catch (e) {
      Print.error('Error loading library from backend: $e');
      state = state.copyWith(isLoading: false);
    }
  }

  /// Refresh library from backend
  Future<void> refresh() async {
    final preferredLanguage = await _resolvePreferredLanguage();
    if (preferredLanguage != _lastAppliedLanguage &&
        (state.allWords.isNotEmpty || state.popularWords.isNotEmpty)) {
      await _retranslateFromState(preferredLanguage);
      return;
    }

    await _loadFromBackend(preferredLanguage: preferredLanguage);
  }

  /// Save a word to the library via backend
  Future<bool> saveWord({
    required String word,
    String? translation,
    String sourceLanguage = 'en',
  }) async {
    try {
      final targetLanguage = await _resolvePreferredLanguage();

      // If no translation provided, try to translate
      final translatedText =
          translation ??
          await TranslationService.instance.translate(
            word,
            targetLang: targetLanguage,
          );

      final savedWord = await _repository.saveWord(
        word: word,
        translation: translatedText,
        sourceLanguage: sourceLanguage,
        targetLanguage: targetLanguage,
      );

      if (savedWord != null) {
        // Add to local state
        final updatedWords = [
          savedWord.copyWith(
            translation: translatedText,
            targetLanguage: targetLanguage,
          ),
          ...state.allWords,
        ];
        state = state.copyWith(
          allWords: updatedWords,
          totalWords: state.totalWords + 1,
        );
        return true;
      }
      return false;
    } catch (e) {
      Print.error('Error saving word: $e');
      return false;
    }
  }

  /// Delete a word from the library via backend
  Future<bool> deleteWord(int wordId) async {
    try {
      final success = await _repository.deleteWord(id: wordId);
      if (success) {
        final updatedWords = state.allWords
            .where((w) => w.id != wordId)
            .toList();
        state = state.copyWith(
          allWords: updatedWords,
          totalWords: state.totalWords - 1,
        );
      }
      return success;
    } catch (e) {
      Print.error('Error deleting word: $e');
      return false;
    }
  }

  Future<void> speakWord(String word) async {
    state = state.copyWith(speakingWord: word);
    await _tts.speak(word, languageCode: 'en-US');
    state = state.copyWith(clearSpeaking: true);
  }

  /// Filter words by search query
  void filterWords(String query) {
    state = state.copyWith(searchQuery: query);
  }
}

// ─── Provider ─────────────────────────────────────────────────────────────────

final libraryProvider = StateNotifierProvider<LibraryNotifier, LibraryState>((
  ref,
) {
  final repository = ref.read(AllProviders.libraryRepositoryProvider);
  return LibraryNotifier(repository, ref);
});
