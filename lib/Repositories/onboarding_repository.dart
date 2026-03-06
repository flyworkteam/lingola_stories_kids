import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/utils/print.dart';

class OnboardingRepository {
  OnboardingRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Save user preferences (language + categories)
  /// POST /api/user/preferences
  Future<bool> savePreferences({
    String? preferredLanguage,
    List<String>? preferredCategories,
    CancelToken? cancelToken,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (preferredLanguage != null) {
        data['preferred_language'] = preferredLanguage;
      }
      if (preferredCategories != null) {
        data['preferred_categories'] = preferredCategories;
      }

      final response = await _dioService.post(
        'user/preferences',
        data: data,
        cancelToken: cancelToken,
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error saving preferences: $e');
      rethrow;
    }
  }
}
