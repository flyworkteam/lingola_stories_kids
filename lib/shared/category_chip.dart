import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

/// Kategori ikonu + etiket chip'i.
/// HomeView ve StoriesView'de ortak kullanılır.
/// [onTap] verilmezse pasif (HomeView statik listesi gibi) davranır.
class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.label,
    required this.icon,
    this.isPng = false,
    this.isSelected = false,
    this.onTap,
  });

  final String label;
  final String icon;
  final bool isPng;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSpacing.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.surfaceLight,
                borderRadius: AppBorderRadius.mdRadius,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: isPng
                    ? Image.asset(icon, width: 28, height: 28)
                    : SvgPicture.asset(icon, width: 28, height: 28),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTextStyles.body(
                11,
                weight: isSelected ? FontWeight.w700 : FontWeight.w400,
                color: isSelected ? AppColors.primary : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
