import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/floating_icon.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class FinalScreen extends HookWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final progress = useState<double>(100.0);

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
                  weight: FontWeight.w700,
                  height: 35,
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
