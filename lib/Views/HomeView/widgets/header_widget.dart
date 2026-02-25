import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 2),
            ),
            child: Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: SvgPicture.asset(AppIcons.profileIcon, height: 30),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hello Henry,',
                style: AppTextStyles.body(
                  18,
                  color: Colors.black,
                  weight: FontWeight.w300,
                  letterSpacing: -0.05,
                  height: 16,
                ),
              ),
              Text(
                'Continue to English',
                style: AppTextStyles.heading(
                  20,
                  FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: -0.05,
                ),
              ),
            ],
          ),
          Spacer(),
          // Notification bell
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffCCDBE8),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.bell,
                width: 20,
                height: 20,
                colorFilter: const ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
