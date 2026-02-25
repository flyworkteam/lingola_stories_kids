import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class LanguageGridItem extends StatelessWidget {
  const LanguageGridItem({
    super.key,
    required this.flagPath,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String flagPath;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppBorderRadius.mdRadius,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.secondary,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppColors.primaryShadow,
                blurRadius: 4,
                offset: const Offset(0, 0),
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              flagPath,
              width: 48,
              height: 32,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              label,
              textAlign: TextAlign.center,
              style: AppTextStyles.body(
                15,
                weight: FontWeight.w500,
                letterSpacing: -0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
