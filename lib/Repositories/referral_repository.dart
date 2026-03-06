import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/utils/print.dart';

class ReferralRepository {
  ReferralRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Apply referral code
  /// POST /api/user/apply-referral-code
  Future<ReferralResponse> applyReferralCode({
    required String referralCode,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dioService.post(
        'user/apply-referral-code',
        data: {'referral_code': referralCode},
        cancelToken: cancelToken,
      );

      return ReferralResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      Print.error('Error applying referral code: $e');
      rethrow;
    }
  }
}

class ReferralResponse {
  final bool success;
  final String message;
  final DateTime? yourPremiumEndTime;
  final DateTime? referrerPremiumEndTime;
  final String? referrerName;

  ReferralResponse({
    required this.success,
    required this.message,
    this.yourPremiumEndTime,
    this.referrerPremiumEndTime,
    this.referrerName,
  });

  factory ReferralResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>?;
    return ReferralResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      yourPremiumEndTime: data?['yourPremiumEndTime'] != null
          ? DateTime.tryParse(data!['yourPremiumEndTime'].toString())
          : null,
      referrerPremiumEndTime: data?['referrerPremiumEndTime'] != null
          ? DateTime.tryParse(data!['referrerPremiumEndTime'].toString())
          : null,
      referrerName: data?['referrerName'] as String?,
    );
  }
}
