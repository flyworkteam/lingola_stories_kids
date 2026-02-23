import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class ProfileSettingsCard extends StatelessWidget {
  const ProfileSettingsCard({super.key, required this.items});

  final List<ProfileSettingsItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppBorderRadius.lgRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: List.generate(items.length, (i) {
          return ProfileSettingsItem(
            icon: items[i].icon,
            label: items[i].label,
            trailing: items[i].trailing,
            trailingLabel: items[i].trailingLabel,
            trailingLabelColor: items[i].trailingLabelColor,
            onTap: items[i].onTap,
            showArrow: items[i].showArrow,
            showDivider: i < items.length - 1,
          );
        }),
      ),
    );
  }
}

class ProfileSettingsItem extends StatelessWidget {
  const ProfileSettingsItem({
    super.key,
    required this.icon,
    required this.label,
    this.trailing,
    this.trailingLabel,
    this.trailingLabelColor,
    this.onTap,
    this.showArrow = true,
    this.showDivider = true,
  });

  final String icon;
  final String label;
  final Widget? trailing;
  final String? trailingLabel;
  final Color? trailingLabelColor;
  final VoidCallback? onTap;
  final bool showArrow;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final bool isSvg = icon.endsWith('.svg');

    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: showDivider
              ? BorderRadius.zero
              : AppBorderRadius.lgRadius,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md + 2,
            ),
            child: Row(
              children: [
                // Icon
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F5FC),
                    borderRadius: AppBorderRadius.smRadius,
                  ),
                  child: Center(
                    child: isSvg
                        ? SvgPicture.asset(icon, width: 20, height: 20)
                        : Image.asset(icon, width: 20, height: 20),
                  ),
                ),
                const SizedBox(width: 12),
                // Label
                Expanded(
                  child: Text(
                    label,
                    style: AppTextStyles.body(
                      14,
                      weight: FontWeight.w500,
                      height: 1.2,
                    ),
                  ),
                ),
                // Trailing
                ?trailing,
                if (trailingLabel != null) ...[
                  Text(
                    trailingLabel!,
                    style: AppTextStyles.body(
                      13,
                      color: trailingLabelColor ?? Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 4),
                ],
                if (showArrow)
                  const Icon(
                    Icons.chevron_right_rounded,
                    color: Color(0xFFB2B2B2),
                    size: 20,
                  ),
              ],
            ),
          ),
        ),
        if (showDivider)
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.withValues(alpha: 0.1),
            indent: AppSpacing.lg,
            endIndent: AppSpacing.lg,
          ),
      ],
    );
  }
}
