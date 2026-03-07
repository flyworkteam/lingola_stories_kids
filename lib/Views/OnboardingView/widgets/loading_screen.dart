import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/floating_icon.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/print.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class LoadingScreen extends HookConsumerWidget {
  final VoidCallback onComplete;
  final void Function(double progress)? onProgressChanged;
  final Map<String, dynamic> onboardingData;

  const LoadingScreen({
    super.key,
    required this.onComplete,
    required this.onboardingData,
    this.onProgressChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = useState<double>(0.0);
    final hasError = useState<String?>(null);

    useEffect(() {
      Print.info('🟢 LoadingScreen MOUNTED');
      bool isCompleted = false;
      bool hasSubmittedData = false;

      // Start progress animation
      final timer =
          Stream.periodic(const Duration(milliseconds: 50), (i) {
            if (i >= 100) return 1.0;
            return (i + 1) / 100.0;
          }).take(101).listen((value) async {
            progress.value = value;
            onProgressChanged?.call(value);

            // At 50% progress, submit onboarding data
            if (value >= 0.5 && !hasSubmittedData) {
              hasSubmittedData = true;

              try {
                Print.info('🟡 Starting onboarding submission');

                // Submit onboarding preferences (language + categories)
                final onboardingRepo = ref.read(
                  AllProviders.onboardingRepositoryProvider,
                );

                final language = onboardingData['learningLanguage'] as String?;
                final prefs =
                    onboardingData['storyPreferences'] as Map<String, dynamic>?;
                final categories = prefs?['categories'] as List?;

                await onboardingRepo.savePreferences(
                  preferredLanguage: language,
                  preferredCategories: categories
                      ?.map((e) => e.toString())
                      .toList(),
                );
                // Save OneSignal player id to backend right after preferences.
                final oneSignalPlayerId = OneSignal.User.pushSubscription.id;
                if (oneSignalPlayerId != null && oneSignalPlayerId.isNotEmpty) {
                  try {
                    await ref
                        .read(userRepositoryProvider)
                        .saveOneSignalPlayerId(playerId: oneSignalPlayerId);
                    Print.info(
                      '✅ OneSignal player id saved after onboarding: $oneSignalPlayerId',
                    );
                  } catch (e) {
                    // Non-blocking: onboarding can complete even if this sync fails.
                    Print.error(
                      '⚠️ Failed to save OneSignal player id after onboarding: $e',
                    );
                  }
                } else {
                  Print.info(
                    'ℹ️ OneSignal player id not available during onboarding completion',
                  );
                }

                await ref.read(userProfileProvider.notifier).refresh();

                Print.info('✅ Onboarding completed successfully');
              } catch (e) {
                Print.error('❌ Error during onboarding submission: $e');
                hasError.value = e.toString();
              }
            }

            if (value >= 1.0 && !isCompleted) {
              isCompleted = true;
              Print.info('🟢 Progress 100% - calling onComplete in 1 second');
              Future.delayed(const Duration(seconds: 1), () {
                if (hasError.value == null) {
                  Print.info('🟢 onComplete NOW');
                  onComplete();
                } else {
                  Print.error(
                    '❌ Cannot complete - error occurred: ${hasError.value}',
                  );
                }
              });
            }
          });

      return () {
        Print.info('🔴 LoadingScreen DISPOSED');
        timer.cancel();
      };
    }, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingIcon(),
        const SizedBox(height: 38),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: context.t.onboarding.loading.titlePart1,
                style: AppTextStyles.body(
                  30,
                  letterSpacing: -0.05,
                  height: 35,
                  weight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: context.t.onboarding.loading.titlePart2,
                style: AppTextStyles.body(
                  30,
                  letterSpacing: -0.05,
                  height: 35,
                  weight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 3),
        Text(
          context.t.onboarding.loading.subtitle,
          style: AppTextStyles.body(
            20,
            weight: FontWeight.w300,
            height: 25,
            letterSpacing: -0.05,
          ),
        ),
        const SizedBox(height: 23),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.t.onboarding.loading.optimization,
              style: AppTextStyles.body(14, weight: FontWeight.w600),
            ),
            Text(
              ' ${(progress.value * 100).toInt()}%',
              style: AppTextStyles.body(14, weight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: LinearProgressIndicator(
            value: progress.value,
            minHeight: 8,
            backgroundColor: AppColors.secondary.withValues(alpha: 0.5),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      ],
    );
  }
}
