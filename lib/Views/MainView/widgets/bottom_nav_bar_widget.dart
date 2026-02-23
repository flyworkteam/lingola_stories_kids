import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;
  const BottomNavBarWidget({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onIndexChanged,
      backgroundColor: Colors.white,
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppTextStyles.bottomNavBar(12, color: AppColors.primary);
        }
        return AppTextStyles.bottomNavBar(12, color: AppColors.bottomNavBar);
      }),
      destinations: [
        NavigationDestination(
          icon: SvgPicture.asset(AppIcons.home),
          selectedIcon: SvgPicture.asset(
            AppIcons.home,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(AppIcons.telescope),
          selectedIcon: SvgPicture.asset(
            AppIcons.telescope,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),
          label: 'Stories',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            AppIcons.library,
            colorFilter: ColorFilter.mode(
              AppColors.bottomNavBar,
              BlendMode.srcIn,
            ),
          ),
          selectedIcon: SvgPicture.asset(
            AppIcons.library,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),
          label: 'Library',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(AppIcons.profile),
          selectedIcon: SvgPicture.asset(
            AppIcons.profile,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
