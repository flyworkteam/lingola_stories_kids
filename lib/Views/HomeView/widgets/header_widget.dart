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
          return context.t.languageOptions.english;
        case 'tr':
          return context.t.languageOptions.turkish;
        case 'de':
          return context.t.languageOptions.german;
        case 'fr':
          return context.t.languageOptions.french;
        case 'es':
          return context.t.languageOptions.spanish;
        case 'it':
          return context.t.languageOptions.italian;
        case 'pt':
          return context.t.languageOptions.portuguese;
        case 'ja':
          return context.t.languageOptions.japanese;
        case 'ko':
          return context.t.languageOptions.korean;

        default:
          return code.toUpperCase();
      }
    }

    return GestureDetector(
      onTap: () => Navigator.pushNamedAndRemoveUntil(
        context,
        '/main',
        (route) => false,
        arguments: {'initialIndex': 3},
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
        child: Row(
          children: [
            // Avatar
            Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  AvatarSelector.assetPath(avatarFile),
                  height: 44,
                  width: 44,
                ),
                if (user?.isPremium ?? false)
                  Positioned(
                    left: -10,
                    top: -5,
                    child: Container(
                      width: 20,
                      height: 20,
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
                          AppIcons.proBudge,
                          height: 16,
                          width: 16,
                          colorFilter: const ColorFilter.mode(
                            Color(0xffFF8D28),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
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
                  context.t.continue_to(
                    language: languageDisplayName(language),
                  ),
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
      ),
    );
  }
}
