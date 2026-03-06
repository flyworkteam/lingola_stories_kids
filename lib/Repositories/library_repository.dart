import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Models/word_model.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/utils/print.dart';

class LibraryRepository {
  LibraryRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Get user's saved words
  /// GET /api/library
  Future<LibraryResponse> getUserLibrary({
    String? search,
    int limit = 20,
    int offset = 0,
    CancelToken? cancelToken,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'offset': offset};
      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }

      final response = await _dioService.get(
        'library',
        queryParameters: queryParams,
        cancelToken: cancelToken,
      );

      return LibraryResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      Print.error('Error fetching user library: $e');
      rethrow;
    }
  }

  /// Save a word to library
  /// POST /api/library/save
  Future<WordModel?> saveWord({
    required String word,
    String? translation,
    String sourceLanguage = 'en',
    String targetLanguage = 'tr',
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.post(
        'library/save',
        data: {
          'word': word,
          'translation': translation,
          'source_language': sourceLanguage,
          'target_language': targetLanguage,
        },
        cancelToken: cancelToken,
      );

      if (response.data['success'] == true && response.data['data'] != null) {
        return WordModel.fromJson(
          response.data['data'] as Map<String, dynamic>,
        );
      }
      return null;
    } catch (e) {
      Print.error('Error saving word: $e');
      rethrow;
    }
  }

  /// Delete a word from library
  /// DELETE /api/library/:id
  Future<bool> deleteWord({required int id, CancelToken? cancelToken}) async {
    try {
      final response = await _dioService.delete(
        'library/$id',
        cancelToken: cancelToken,
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error deleting word: $e');
      rethrow;
    }
  }

  /// Get popular words across all users
  /// GET /api/library/popular
  Future<List<WordModel>> getPopularWords({CancelToken? cancelToken}) async {
    try {
      final response = await _dioService.get(
        'library/popular',
        cancelToken: cancelToken,
      );

      if (response.data['success'] == true) {
        final List data = response.data['data'] as List;
        return data
            .map((json) => WordModel.fromJson(json as Map<String, dynamic>))
            .toList();
      }
      return [];
    } catch (e) {
      Print.error('Error fetching popular words: $e');
      rethrow;
    }
  }
}

/// Response model for GET /api/library
class LibraryResponse {
  final bool success;
  final int totalWords;
  final List<WordModel> words;

  LibraryResponse({
    required this.success,
    required this.totalWords,
    required this.words,
  });

  factory LibraryResponse.fromJson(Map<String, dynamic> json) {
    final List data = json['data'] as List? ?? [];
    return LibraryResponse(
      success: json['success'] as bool? ?? false,
      totalWords: json['total_words'] as int? ?? 0,
      words: data
          .map((e) => WordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
