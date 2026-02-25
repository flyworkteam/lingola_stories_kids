import 'package:flutter/material.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class StoryTag extends StatelessWidget {
  const StoryTag({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: AppBorderRadius.pillRadius,
        border: Border.all(color: Colors.white24),
      ),
      child: Text(label, style: AppTextStyles.body(12, color: Colors.white70)),
    );
  }
}
