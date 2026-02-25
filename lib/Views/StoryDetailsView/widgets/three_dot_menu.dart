import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class ThreeDotMenu extends StatelessWidget {
  const ThreeDotMenu({
    super.key,
    required this.onFeedback,
    required this.onRating,
  });

  final VoidCallback onFeedback;
  final VoidCallback onRating;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 170, maxWidth: 230),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF2A3447).withValues(alpha: 0.72),
          borderRadius: AppBorderRadius.mdRadius,
          border: Border.all(color: Colors.white10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.28),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _MenuOption(
              icon: AppIcons.feedback,
              label: context.t.storyDetails.feedback,
              onTap: onFeedback,
            ),
            const _MenuDivider(),
            _MenuOption(
              icon: AppIcons.ratingStar,
              label: context.t.storyDetails.rating,
              onTap: onRating,
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuDivider extends StatelessWidget {
  const _MenuDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white12,
    );
  }
}

class _MenuOption extends StatelessWidget {
  const _MenuOption({
    required this.icon,
    required this.label,
    required this.onTap,
  });
  final String icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppBorderRadius.mdRadius,
      child: Padding(
        // tighter than before
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: 10,
        ),
        child: Row(
          // Make the whole row a reliable hit target
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              width: 16,
              height: 16,
              colorFilter: const ColorFilter.mode(
                Colors.white70,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            Text(label, style: AppTextStyles.body(12, color: Colors.white)),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
