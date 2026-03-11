import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Models/user_model.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/Services/secure_storage_service.dart';
import 'package:lingolakidstories/utils/print.dart';

class UserRepository {
  UserRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);
  SecureStorageService get _storageService =>
      ref.read(AllProviders.secureStorageServiceProvider);

  /// Get user profile
  /// GET /api/user/profile
  Future<UserProfileResponse> getUserProfile({CancelToken? cancelToken}) async {
    try {
      final response = await _dioService.get(
        'user/profile',
        cancelToken: cancelToken,
      );

      Print.info('User profile response: ${response.data}');

      return UserProfileResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      Print.error('Error getting user profile: $e');
      rethrow;
    }
  }

  /// Update user profile
  /// PUT /api/user/profile
  Future<bool> updateUserProfile({
    String? fullName,
    String? preferredLanguage,
    String? profilePictureUrl,
    String? age,
    CancelToken? cancelToken,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (fullName != null) data['full_name'] = fullName;
      if (preferredLanguage != null) {
        data['preferred_language'] = preferredLanguage;
      }
      if (profilePictureUrl != null) {
        data['profile_picture_url'] = profilePictureUrl;
      }
      if (age != null) {
        data['age'] = age;
      }

      final response = await _dioService.put(
        'user/profile',
        data: data,
        cancelToken: cancelToken,
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error updating user profile: $e');
      rethrow;
    }
  }

  /// Upload profile photo
  /// POST /api/user/profile/photo
  Future<String?> uploadProfilePhoto({
    required File photo,
    CancelToken? cancelToken,
  }) async {
    try {
      final formData = FormData.fromMap({
        'photo': await MultipartFile.fromFile(
          photo.path,
          filename: photo.path.split('/').last,
        ),
      });

      final response = await _dioService.postForm(
        'user/profile/photo',
        formData: formData,
        cancelToken: cancelToken,
      );

      if (response.data['success'] == true) {
        return response.data['profilePictureUrl'] as String?;
      }
      return null;
    } catch (e) {
      Print.error('Error uploading profile photo: $e');
      rethrow;
    }
  }

  /// Save OneSignal player ID
  /// POST /api/user/onesignal
  Future<bool> saveOneSignalPlayerId({
    required String playerId,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.post(
        'user/onesignal',
        data: {'player_id': playerId},
        cancelToken: cancelToken,
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error saving OneSignal player ID: $e');
      rethrow;
    }
  }

  /// Log user daily activity
  /// POST /api/user/activity
  Future<bool> logActivity({CancelToken? cancelToken}) async {
    try {
      final response = await _dioService.post(
        'user/activity',
        cancelToken: cancelToken,
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error logging activity: $e');
      rethrow;
    }
  }

  /// Delete user account
  /// DELETE /api/user/account
  Future<bool> deleteAccount({CancelToken? cancelToken}) async {
    try {
      final response = await _dioService.delete(
        'user/account',
        cancelToken: cancelToken,
      );

      final success = response.data['success'] == true;
      if (success) {
        await _storageService.clearAll();
      }

      return success;
    } catch (e) {
      Print.error('Error deleting account: $e');
      rethrow;
    }
  }
}
