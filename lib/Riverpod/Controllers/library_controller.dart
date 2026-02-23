import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Models/word_model.dart';
import 'package:lingolakidstories/Services/translation_service.dart';
import 'package:lingolakidstories/Services/tts_service.dart';

// ─── Raw word list (English) ──────────────────────────────────────────────────
const List<String> _rawWords = [
  'Asset',
  'Appraisal',
  'Agenda',
  'Acquisition',
  'Audit',
  'Balance',
  'Budget',
  'Capital',
  'Contract',
  'Dividend',
  'Equity',
  'Forecast',
];

const List<String> _popularWordKeys = ['Asset', 'Appraisal'];

// ─── State ────────────────────────────────────────────────────────────────────

class LibraryState {
  const LibraryState({
    required this.allWords,
    required this.popularWords,
    this.speakingWord,
  });

  final List<WordModel> allWords;
  final List<WordModel> popularWords;
  final String? speakingWord;

  LibraryState copyWith({
    List<WordModel>? allWords,
    List<WordModel>? popularWords,
    String? speakingWord,
    bool clearSpeaking = false,
  }) {
    return LibraryState(
      allWords: allWords ?? this.allWords,
      popularWords: popularWords ?? this.popularWords,
      speakingWord: clearSpeaking ? null : (speakingWord ?? this.speakingWord),
    );
  }
}

// ─── Notifier ─────────────────────────────────────────────────────────────────

class LibraryNotifier extends StateNotifier<LibraryState> {
  LibraryNotifier()
    : super(
        LibraryState(
          allWords: _rawWords
              .map((w) => WordModel(word: w, isTranslating: true))
              .toList(),
          popularWords: _popularWordKeys
              .map((w) => WordModel(word: w, isTranslating: true))
              .toList(),
        ),
      ) {
    _translateAll();
  }

  final _translation = TranslationService.instance;
  final _tts = TtsService.instance;

  Future<void> _translateAll() async {
    // Translate all words concurrently.
    final futures = _rawWords.map((word) async {
      final translated = await _translation.translate(word);
      return MapEntry(word, translated);
    });

    final results = await Future.wait(futures);
    final translationMap = Map.fromEntries(results);

    state = state.copyWith(
      allWords: _rawWords
          .map((w) => WordModel(word: w, translation: translationMap[w]))
          .toList(),
      popularWords: _popularWordKeys
          .map((w) => WordModel(word: w, translation: translationMap[w]))
          .toList(),
    );
  }

  Future<void> speakWord(String word) async {
    state = state.copyWith(speakingWord: word);
    await _tts.speak(word, languageCode: 'en-US');
    state = state.copyWith(clearSpeaking: true);
  }
}

// ─── Provider ─────────────────────────────────────────────────────────────────

final libraryProvider = StateNotifierProvider<LibraryNotifier, LibraryState>((
  ref,
) {
  return LibraryNotifier();
});
