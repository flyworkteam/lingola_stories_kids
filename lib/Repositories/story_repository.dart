import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/utils/print.dart';

/// Story repository — sadece API tanımları.
/// View'lara bağlanmayacak, ileride kullanıma hazır olacak.
class StoryRepository {
  StoryRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Get all stories (paginated)
  /// GET /api/stories?limit=&offset=&category=&is_popular=
  Future<Map<String, dynamic>> getAllStories({
    int limit = 20,
    int offset = 0,
    String? category,
    bool? isPopular,
    CancelToken? cancelToken,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'offset': offset};
      if (category != null) queryParams['category'] = category;
      if (isPopular == true) queryParams['is_popular'] = '1';

      final response = await _dioService.get(
        'stories',
        queryParameters: queryParams,
        cancelToken: cancelToken,
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error fetching all stories: $e');
      rethrow;
    }
  }

  /// Get story details
  /// GET /api/stories/:id
  Future<Map<String, dynamic>> getStoryDetails({
    required String storyId,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'stories/$storyId',
        cancelToken: cancelToken,
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error fetching story details: $e');
      rethrow;
    }
  }

  /// Get story sections
  /// GET /api/stories/:id/sections
  Future<Map<String, dynamic>> getStorySections({
    required String storyId,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'stories/$storyId/sections',
        cancelToken: cancelToken,
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error fetching story sections: $e');
      rethrow;
    }
  }

  /// Get continue reading
  /// GET /api/stories/continue-reading
  Future<Map<String, dynamic>> getContinueReading({
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'stories/continue-reading',
        cancelToken: cancelToken,
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error fetching continue reading: $e');
      rethrow;
    }
  }

  /// Get reading history
  /// GET /api/stories/history
  Future<Map<String, dynamic>> getReadingHistory({
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'stories/history',
        cancelToken: cancelToken,
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error fetching reading history: $e');
      rethrow;
    }
  }

  /// Get recommended stories
  /// GET /api/stories/recommended
  Future<Map<String, dynamic>> getRecommended({
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'stories/recommended',
        cancelToken: cancelToken,
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      Print.error('Error fetching recommended stories: $e');
      rethrow;
    }
  }

  /// Update story progress
  /// POST /api/stories/:id/update-progress
  Future<bool> updateStoryProgress({
    required String storyId,
    required Map<String, dynamic> progressData,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.post(
        'stories/$storyId/update-progress',
        data: progressData,
        cancelToken: cancelToken,
      );
      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error updating story progress: $e');
      rethrow;
    }
  }

  /// Get story progress
  /// GET /api/stories/:id/progress
  Future<Map<String, dynamic>?> getStoryProgress({
    required String storyId,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.get(
        'stories/$storyId/progress',
        cancelToken: cancelToken,
      );
      if (response.data['success'] == true && response.data['data'] != null) {
        return response.data['data'] as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      Print.error('Error fetching story progress: $e');
      return null;
    }
  }

  /// Rate a story
  /// POST /api/stories/:id/rate
  Future<bool> rateStory({
    required String storyId,
    required double rating,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.post(
        'stories/$storyId/rate',
        data: {'rating': rating},
        cancelToken: cancelToken,
      );
      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error rating story: $e');
      rethrow;
    }
  }
}
