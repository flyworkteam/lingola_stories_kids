import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class BottomActionsBar extends StatelessWidget {
  const BottomActionsBar({
    super.key,
    required this.isReading,
    required this.isListening,
    required this.onStartStop,
    required this.onListen,
    required this.backgroundColor,
    this.backgroundGradient,
    this.showTopBorder = false,
  });

  final bool isReading;
  final bool isListening;
  final VoidCallback onStartStop;
  final VoidCallback onListen;
  final Color backgroundColor;
  final Gradient? backgroundGradient;
  final bool showTopBorder;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
              AppSpacing.xl,
              AppSpacing.md,
              AppSpacing.xl,
              MediaQuery.of(context).padding.bottom + AppSpacing.md,
            ),

            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: onStartStop,
                    type: CustomButtonType.filled,
                    size: CustomButtonSize.small,
                    fullWidth: true,
                    borderRadius: 18,
                    backgroundColor: isReading
                        ? const Color(0xFFF44336)
                        : AppColors.primary,
                    foregroundColor: Colors.white,
                    shadow: [
                      BoxShadow(
                        color: (isReading
                            ? const Color(0xFF731711)
                            : AppColors.primaryShadow),
                        blurRadius: 0,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    icon: SvgPicture.asset(
                      isReading ? AppIcons.stop : AppIcons.play,
                      width: 18,
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    iconPadding: AppSpacing.sm,
                    label: isReading
                        ? context.t.storyDetails.stop
                        : context.t.storyDetails.start,
                    labelStyle: AppTextStyles.body(
                      24,
                      color: Colors.white,
                      letterSpacing: -0.05,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),

                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned.fill(
                          child: SvgPicture.asset(
                            AppIcons.listenShadow,
                            width: 160,
                            height: 230,
                            fit: BoxFit.contain,
                          ),
                        ),
                        InkWell(
                          onTap: onListen,
                          borderRadius: BorderRadius.circular(18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.speaker,
                                width: 18,
                                height: 18,
                                colorFilter: ColorFilter.mode(
                                  isListening
                                      ? AppColors.primary
                                      : Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: AppSpacing.sm),
                              Text(
                                context.t.storyDetails.listen,
                                style: AppTextStyles.body(
                                  24,
                                  color: Colors.white,
                                  letterSpacing: -0.05,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
