import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class DayStreakCard extends ConsumerWidget {
  const DayStreakCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const days = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'];

    final userAsync = ref.watch(userProfileProvider);
    final streak = userAsync.valueOrNull?.streak;
    final weekActivity = streak?.weekActivity ?? List.filled(7, false);

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
                          isCompleted: i < weekActivity.length
                              ? weekActivity[i]
                              : false,
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
                  border: Border.all(color: Color(0xffB8B8B8), width: 2),
                ),
              ),
      ],
    );
  }
}
