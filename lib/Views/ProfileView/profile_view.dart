import 'package:flutter/material.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/day_streak_card.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/logout_button.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/notification_toggle.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/profile_header.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/profile_settings_card.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';
import 'package:lingolakidstories/utils/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Blur blobs
          const Positioned(
            top: -60,
            left: -60,
            child: CustomBlur(color: Color(0xffFFB256)),
          ),
          const Positioned(
            bottom: 100,
            right: -60,
            child: CustomBlur(color: Color(0xffFA96BA)),
          ),

          // Scrollable content
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.xl,
                vertical: AppSpacing.lg,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    t.profile.title,
                    style: AppTextStyles.heading(
                      22,
                      FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Profile header
                  Center(
                    child: ProfileHeaderWidget(
                      name: 'Henry Jhonson',
                      subtitle: t.profile.freeVersion,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Day Streak
                  const DayStreakCard(),
                  const SizedBox(height: AppSpacing.xl),

                  // Account Settings section
                  SectionLabel(label: t.profile.sections.accountSettings),
                  const SizedBox(height: AppSpacing.sm),
                  ProfileSettingsCard(
                    items: [
                      ProfileSettingsItem(
                        icon: AppIcons.userEdit,
                        label: t.profile.menu.editProfile,
                        onTap: () {},
                      ),
                      ProfileSettingsItem(
                        icon: AppIcons.notification,
                        label: t.profile.menu.notifications,
                        trailing: const NotificationToggle(),
                        showArrow: false,
                        onTap: null,
                      ),
                      ProfileSettingsItem(
                        icon: AppIcons.proBudge,
                        label: t.profile.menu.premium,
                        trailingLabel: 'Passive',
                        trailingLabelColor: const Color(0xFFF5A524),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // General section
                  SectionLabel(label: t.profile.sections.supportAndOther),
                  const SizedBox(height: AppSpacing.sm),
                  ProfileSettingsCard(
                    items: [
                      ProfileSettingsItem(
                        icon: AppIcons.langPageIcon,
                        label: t.profile.menu.appLanguage,
                        onTap: () {},
                      ),
                      ProfileSettingsItem(
                        icon: AppIcons.profileUsers,
                        label: t.profile.menu.shareWithFriends,
                        onTap: () {},
                      ),
                      ProfileSettingsItem(
                        icon: AppIcons.ratingStar,
                        label: t.profile.menu.rateUs,
                        onTap: () {},
                      ),
                      ProfileSettingsItem(
                        icon: AppIcons.questionMark,
                        label: t.profile.menu.faq,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Logout button
                  LogoutButton(
                    label: t.profile.menu.logout,
                    icon: AppIcons.logout,
                    onTap: () {},
                  ),
                  const SizedBox(height: AppSpacing.sm),

                  // Version
                  Center(
                    child: Text(
                      Constants.appVersion,
                      style: AppTextStyles.body(12, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
