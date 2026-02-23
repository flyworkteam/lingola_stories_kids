import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/floating_icon.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

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
    final hasError = useState<bool>(false);

    useEffect(() {
      const totalDuration = Duration(seconds: 4);
      const tickInterval = Duration(milliseconds: 50);
      final totalTicks =
          totalDuration.inMilliseconds / tickInterval.inMilliseconds;
      final increment = 100.0 / totalTicks;

      final timer = Timer.periodic(tickInterval, (timer) {
        progress.value = (progress.value + increment).clamp(0.0, 100.0);
        onProgressChanged?.call(progress.value);
        if (progress.value >= 100.0) {
          timer.cancel();
          if (!hasError.value) {
            onComplete();
          }
        }
      });

      return timer.cancel;
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
                text: 'Your Personal Account is\n',
                style: AppTextStyles.body(
                  30,
                  letterSpacing: -0.5,
                  height: 35 / 30,
                  weight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'Being Created',
                style: AppTextStyles.body(
                  30,
                  letterSpacing: -0.5,
                  weight: FontWeight.w700,
                  height: 35 / 30,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 3),
        Text(
          'We create wonderful stories for you',
          style: AppTextStyles.body(
            20,
            weight: FontWeight.w300,
            height: 25 / 20,
          ),
        ),
        const SizedBox(height: 23),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Optimization',
              style: AppTextStyles.body(14, weight: FontWeight.w600),
            ),
            Text(
              ' ${progress.value.toInt()}%',
              style: AppTextStyles.body(14, weight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: LinearProgressIndicator(
            value: progress.value / 100,
            minHeight: 8,
            backgroundColor: AppColors.secondary.withValues(alpha: 0.5),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      ],
    );
  }
}
