import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/utils/print.dart';

class FeedbackRepository {
  FeedbackRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Submit feedback
  /// POST /api/feedback
  Future<bool> submitFeedback({
    required String subject,
    required String message,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.post(
        'feedback',
        data: {'subject': subject, 'message': message},
        cancelToken: cancelToken,
      );

      return response.data['success'] == true;
    } catch (e) {
      Print.error('Error submitting feedback: $e');
      rethrow;
    }
  }
}
