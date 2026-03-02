import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

import 'blurred_modal_backdrop.dart';

class RatingSheet extends HookWidget {
  const RatingSheet({
    super.key,
    required this.initialRating,
    required this.onClose,
    required this.onSend,
    required this.backgroundGradient,
  });

  final int initialRating;
  final VoidCallback onClose;
  final void Function(int) onSend;
  final Gradient backgroundGradient;

  @override
  Widget build(BuildContext context) {
    final rating = useState(initialRating);

    return BlurredModalBackdrop(
      onTap: onClose,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: backgroundGradient,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppBorderRadius.xl),
              ),
            ),
            padding: EdgeInsets.fromLTRB(
              AppSpacing.xl,
              AppSpacing.lg,
              AppSpacing.xl,
              MediaQuery.of(context).padding.bottom + AppSpacing.lg,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: AppBorderRadius.pillRadius,
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                // Row(
                //   children: [
                //     Expanded(
                //       child: Text(
                //         context.t.storyDetails.rateThisStory,
                //         style: AppTextStyles.heading(
                //           18,
                //           FontWeight.w700,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: onClose,
                //       child: const Icon(
                //         Icons.close_rounded,
                //         color: Colors.white54,
                //         size: 22,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: AppSpacing.xs),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     context.t.storyDetails.enjoyStory,
                //     style: AppTextStyles.body(13, color: Colors.white54),
                //   ),
                // ),
                const SizedBox(height: AppSpacing.xl),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (i) {
                    final filled = i < rating.value;
                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => rating.value = i + 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: SvgPicture.asset(
                          AppIcons.ratingStar,
                          width: 51,
                          height: 51,
                          colorFilter: filled
                              ? const ColorFilter.mode(
                                  Color(0xFFF5C842),
                                  BlendMode.srcIn,
                                )
                              : const ColorFilter.mode(
                                  Color(0xffB2B2B2),
                                  BlendMode.srcIn,
                                ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: AppSpacing.xl),
                CustomButton(
                  onPressed: () => onSend(rating.value),
                  type: CustomButtonType.filled,
                  size: CustomButtonSize.large,
                  fullWidth: true,
                  borderRadius: 18,
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  label: context.t.storyDetails.send,
                  shadow: [
                    BoxShadow(
                      color: AppColors.primaryShadow,
                      blurRadius: 0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  icon: SvgPicture.asset(
                    AppIcons.send,
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  iconPosition: CustomButtonIconPosition.trailing,
                  labelStyle: AppTextStyles.body(
                    25,
                    weight: FontWeight.bold,
                    letterSpacing: -0.05,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
