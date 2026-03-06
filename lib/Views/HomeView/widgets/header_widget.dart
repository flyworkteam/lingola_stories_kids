import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lingolakidstories/Core/Routes/app_routes.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/Views/EditProfileView/widgets/avatar_selector.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class HeaderWidget extends ConsumerWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userProfileProvider);
    final user = userAsync.valueOrNull?.user;

    final firstName = (user?.fullName ?? '').split(' ').first;
    final displayName = firstName.isNotEmpty ? firstName : '';
    final language = user?.preferredLanguage ?? 'en';
    final avatarFile = user?.profilePictureUrl ?? 'ic_avatar3.svg';

    // Language code → display name
    String languageDisplayName(String code) {
      switch (code.toLowerCase()) {
        case 'en':
          return 'English';
        case 'tr':
          return 'Türkçe';
        case 'de':
          return 'Deutsch';
        case 'fr':
          return 'Français';
        case 'es':
          return 'Español';
        case 'it':
          return 'Italiano';
        case 'pt':
          return 'Português';
        case 'ja':
          return 'Japanese';
        case 'ko':
          return 'Korean';
        case 'zh':
          return 'Chinese';
        default:
          return code.toUpperCase();
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
      child: Row(
        children: [
          // Avatar
          SvgPicture.asset(
            AvatarSelector.assetPath(avatarFile),
            height: 44,
            width: 44,
          ),
          const SizedBox(width: AppSpacing.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                displayName.isNotEmpty
                    ? context.t.welcome(name: displayName)
                    : context.t.welcome(name: ''),
                style: AppTextStyles.body(
                  18,
                  color: Colors.black,
                  weight: FontWeight.w300,
                  letterSpacing: -0.05,
                  height: 16,
                ),
              ),
              Text(
                'Continue to ${languageDisplayName(language)}',
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.notifications);
            },
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
