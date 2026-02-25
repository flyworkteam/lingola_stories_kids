import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class DayStreakCard extends StatelessWidget {
  const DayStreakCard({super.key});

  @override
  Widget build(BuildContext context) {
    const days = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'];
    const completedCount = 3;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff9957DF),
        borderRadius: AppBorderRadius.mdRadius,
        boxShadow: const [
          BoxShadow(
            color: Color(0xff3E146A),
            blurRadius: 0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned.fill(
            child: SvgPicture.asset(AppIcons.dayStreak, fit: BoxFit.fill),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.lg,
              bottom: AppSpacing.lg,
              left: AppSpacing.xl,
              right: AppSpacing.xl,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.t.dayStreak.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.heading(
                    22,
                    FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: -0.05,
                  ),
                ),
                const SizedBox(height: 12),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.lg,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: AppBorderRadius.lgRadius,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        days.length,
                        (i) => DayCell(
                          label: days[i],
                          isCompleted: i < completedCount,
                        ),
                      ),
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

class DayCell extends StatelessWidget {
  const DayCell({super.key, required this.label, required this.isCompleted});

  final String label;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: AppTextStyles.body(
            16,
            weight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: -0.05,
          ),
        ),
        const SizedBox(height: 6),
        isCompleted
            ? SvgPicture.asset(AppIcons.verify, width: 32, height: 32)
            : Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.5),
                    width: 2,
                  ),
                ),
              ),
      ],
    );
  }
}
