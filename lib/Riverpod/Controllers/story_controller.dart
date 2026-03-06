import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Repositories/story_repository.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/utils/print.dart';

// ─── State ────────────────────────────────────────────────────────────────────

class StoryState {
  const StoryState({
    required this.allStories,
    this.isLoading = false,
    this.error,
  });

  final List<StoryModel> allStories;
  final bool isLoading;
  final String? error;

  /// Stories marked as popular.
  List<StoryModel> get popularStories =>
      allStories.where((s) => s.isPopular).toList();

  /// Unique category names extracted from all stories.
  List<String> get categories {
    final cats = <String>{};
    for (final story in allStories) {
      cats.addAll(story.categories);
    }
    return cats.toList();
  }

  /// Filter stories by category name (case-insensitive).
  List<StoryModel> getByCategory(String category) {
    if (category.toLowerCase() == 'popular') return popularStories;
    final filteredStories = allStories.where((s) {
      Print.info('Story: ${s.title}');
      return s.categories.any((c) {
        Print.info('Category: $c');
        return c.toLowerCase() == category.toLowerCase();
      });
    }).toList();
    Print.info('Category: $category');
    Print.info('Filtered stories: $filteredStories');
    return filteredStories;
  }

  StoryState copyWith({
    List<StoryModel>? allStories,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return StoryState(
      allStories: allStories ?? this.allStories,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

// ─── Notifier ─────────────────────────────────────────────────────────────────

class StoryNotifier extends StateNotifier<StoryState> {
  StoryNotifier(this._repository)
    : super(const StoryState(allStories: [], isLoading: true)) {
    _loadStories();
  }

  final StoryRepository _repository;

  Future<void> _loadStories() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final response = await _repository.getAllStories();
      final data = response['data'] as List? ?? [];
      final stories = data
          .map((json) => StoryModel.fromJson(json as Map<String, dynamic>))
          .toList();

      state = state.copyWith(allStories: stories, isLoading: false);
    } catch (e) {
      Print.error('Error loading stories: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Refresh stories from the backend.
  Future<void> refresh() => _loadStories();

  /// Fetch a page of stories for paginated views.
  Future<List<StoryModel>> fetchPage({
    int limit = 20,
    int offset = 0,
    String? category,
    bool? isPopular,
  }) async {
    final response = await _repository.getAllStories(
      limit: limit,
      offset: offset,
      category: category,
      isPopular: isPopular,
    );
    final data = response['data'] as List? ?? [];
    return data
        .map((json) => StoryModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Load sections for a specific story from the backend.
  /// Returns a new StoryModel with sections populated.
  Future<StoryModel> loadStorySections(StoryModel story) async {
    try {
      final response = await _repository.getStorySections(storyId: story.id);
      final data = response['data'] as List? ?? [];
      final sections = data
          .map((json) => StorySection.fromJson(json as Map<String, dynamic>))
          .toList();

      return story.copyWith(sections: sections);
    } catch (e) {
      Print.error('Error loading story sections: $e');
      rethrow;
    }
  }

  /// Get the user's progress for a specific story.
  Future<Map<String, dynamic>?> getStoryProgress(String storyId) async {
    try {
      return await _repository.getStoryProgress(storyId: storyId);
    } catch (e) {
      Print.error('Error fetching story progress from controller: $e');
      return null;
    }
  }

  /// Get reading history.
  Future<List<StoryModel>> getReadingHistory() async {
    try {
      final response = await _repository.getReadingHistory();
      final data = response['data'] as List? ?? [];
      return data
          .map((json) => StoryModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      Print.error('Error fetching history: $e');
      return [];
    }
  }

  /// Get continue reading story (if any).
  Future<StoryModel?> getContinueReading() async {
    try {
      final response = await _repository.getContinueReading();
      final data = response['data'];
      if (data != null && data is Map<String, dynamic>) {
        final story = StoryModel.fromJson(data);

        // Use the progress dictionary injected by the backend
        final progressMap = data['progress'];
        if (progressMap != null) {
          final int page = progressMap['current_page'] ?? 0;
          return story.copyWith(currentPage: page);
        }

        return story;
      }
      return null;
    } catch (e) {
      Print.error('Error fetching continue reading: $e');
      return null;
    }
  }

  /// Save progress for a specific story.
  Future<void> saveStoryProgress({
    required String storyId,
    required int currentPage,
    required double audioPosition,
    required bool isCompleted,
  }) async {
    try {
      await _repository.updateStoryProgress(
        storyId: storyId,
        progressData: {
          'current_page': currentPage,
          'audio_position': audioPosition,
          'is_completed': isCompleted,
        },
      );
    } catch (e) {
      Print.error('Error saving story progress: $e');
    }
  }
}

// ─── Provider ─────────────────────────────────────────────────────────────────

final storyProvider = StateNotifierProvider<StoryNotifier, StoryState>((ref) {
  final repository = ref.read(AllProviders.storyRepositoryProvider);
  return StoryNotifier(repository);
});
