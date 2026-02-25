import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
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
  });

  final int initialRating;
  final VoidCallback onClose;
  final void Function(int) onSend;

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
            decoration: const BoxDecoration(
              color: Color(0xFF1E2A3D),
              borderRadius: BorderRadius.vertical(
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.t.storyDetails.rateThisStory,
                        style: AppTextStyles.heading(
                          18,
                          FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onClose,
                      child: const Icon(
                        Icons.close_rounded,
                        color: Colors.white54,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xs),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    context.t.storyDetails.enjoyStory,
                    style: AppTextStyles.body(13, color: Colors.white54),
                  ),
                ),
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
                        child: Icon(
                          filled
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded,
                          size: 42,
                          color: filled
                              ? const Color(0xFFF5C842)
                              : Colors.white24,
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: AppSpacing.xl),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () => onSend(rating.value),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: AppBorderRadius.pillRadius,
                      ),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.t.storyDetails.send,
                          style: AppTextStyles.body(15, color: Colors.white),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        SvgPicture.asset(
                          AppIcons.send,
                          width: 16,
                          height: 16,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
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
