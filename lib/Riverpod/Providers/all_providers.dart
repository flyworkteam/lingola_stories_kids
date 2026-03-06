import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Repositories/auth_repository.dart';
import 'package:lingolakidstories/Repositories/feedback_repository.dart';
import 'package:lingolakidstories/Repositories/language_repository.dart';
import 'package:lingolakidstories/Repositories/library_repository.dart';
import 'package:lingolakidstories/Repositories/onboarding_repository.dart';
import 'package:lingolakidstories/Repositories/referral_repository.dart';
import 'package:lingolakidstories/Repositories/story_repository.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/Services/secure_storage_service.dart';

class AllProviders {
  static final dioServiceProvider = Provider<DioService>((ref) {
    return DioService(ref);
  });

  static final secureStorageServiceProvider = Provider<SecureStorageService>((
    ref,
  ) {
    return SecureStorageService();
  });

  // ─── Repository Providers ───────────────────────────────────────────

  static final authRepositoryProvider = Provider<AuthRepository>((ref) {
    return AuthRepository(ref);
  });

  static final libraryRepositoryProvider = Provider<LibraryRepository>((ref) {
    return LibraryRepository(ref);
  });

  static final feedbackRepositoryProvider = Provider<FeedbackRepository>((ref) {
    return FeedbackRepository(ref);
  });

  static final referralRepositoryProvider = Provider<ReferralRepository>((ref) {
    return ReferralRepository(ref);
  });

  static final onboardingRepositoryProvider = Provider<OnboardingRepository>((
    ref,
  ) {
    return OnboardingRepository(ref);
  });

  static final languageRepositoryProvider = Provider<LanguageRepository>((ref) {
    return LanguageRepository(ref);
  });

  static final storyRepositoryProvider = Provider<StoryRepository>((ref) {
    return StoryRepository(ref);
  });
}
