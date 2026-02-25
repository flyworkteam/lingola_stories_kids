import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class Toast extends StatelessWidget {
  const Toast({
    super.key,
    required this.title,
    required this.message,
    required this.icon,
    required this.backgroundColor,
    required this.appIconColor,
    this.onDismiss,
  });

  final String title;
  final String message;
  final String icon;
  final VoidCallback? onDismiss;
  final Color backgroundColor;
  final Color appIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: AppBorderRadius.lgRadius,
        border: Border.all(color: backgroundColor.withValues(alpha: 0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                icon,
                width: 18,
                height: 18,
                colorFilter: ColorFilter.mode(appIconColor, BlendMode.srcIn),
              ),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.body(
                    16,
                    weight: FontWeight.w700,
                    letterSpacing: -0.05,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  message,
                  style: AppTextStyles.body(
                    15,
                    weight: FontWeight.w300,
                    letterSpacing: -0.05,
                  ),
                ),
              ],
            ),
          ),
          if (onDismiss != null)
            GestureDetector(
              onTap: onDismiss,
              child: SvgPicture.asset(
                AppIcons.closeCircle,
                width: 18,
                height: 18,
                colorFilter: ColorFilter.mode(
                  Color(0xff545454),
                  BlendMode.srcIn,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
