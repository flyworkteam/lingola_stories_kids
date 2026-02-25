import 'package:flutter/material.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/day_streak_card.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/logout_bottomsheet.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/logout_button.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/notification_toggle.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/profile_header.dart';
import 'package:lingolakidstories/Views/ProfileView/widgets/profile_settings_card.dart';
import 'package:lingolakidstories/Views/ShareFriendView/share_friend_view.dart';
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
    final t = context.t;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Blur blobs
          Positioned(
            top: -250,
            left: -200,
            child: CustomBlur(color: Color(0xFFFFB256)),
          ),
          Positioned(bottom: -250, right: -200, child: CustomBlur()),

          // Scrollable content
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              bottom: AppSpacing.xxxl,
              left: AppSpacing.lg,
              right: AppSpacing.lg,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kToolbarHeight),
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
                      iconBackgroundColor: const Color(0xFFEFF6FF),
                      onTap: () {
                        Navigator.pushNamed(context, '/edit-profile');
                      },
                    ),
                    ProfileSettingsItem(
                      icon: AppIcons.notification,
                      iconBackgroundColor: const Color(0xffFAF5FF),
                      label: t.profile.menu.notifications,
                      trailing: const NotificationToggle(),
                      showArrow: false,
                      onTap: null,
                    ),
                    ProfileSettingsItem(
                      icon: AppIcons.proBudge,
                      iconColor: Color(0xffF59E0B),
                      label: t.profile.menu.premium,
                      trailingLabel: 'Passive',
                      iconBackgroundColor: Color(0xffFFFBEB),
                      trailingLabelColor: const Color(0xFFF5A524),
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),

                // General section
                SectionLabel(label: t.profile.sections.general),
                const SizedBox(height: AppSpacing.sm),
                ProfileSettingsCard(
                  items: [
                    ProfileSettingsItem(
                      icon: AppIcons.translate,
                      iconColor: Color(0xff069185),
                      label: t.profile.menu.appLanguage,
                      iconBackgroundColor: Color(0xffF0FDFA),
                      onTap: () {
                        Navigator.pushNamed(context, '/app-language');
                      },
                    ),
                    ProfileSettingsItem(
                      icon: AppIcons.profileUsers,
                      label: t.profile.menu.shareWithFriends,
                      iconBackgroundColor: Color(0xffEEF2FF),
                      onTap: () {
                        ShareFriendBottomSheet.show(context);
                      },
                    ),
                    ProfileSettingsItem(
                      icon: AppIcons.likeOutline,
                      label: t.profile.menu.rateUs,
                      iconBackgroundColor: Color(0xffFFF7ED),
                      onTap: () {},
                    ),
                    ProfileSettingsItem(
                      icon: AppIcons.questionMark,
                      label: t.profile.menu.faq,
                      iconBackgroundColor: Color(0xffF3F4F6),
                      onTap: () {
                        Navigator.pushNamed(context, '/faq');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),

                // Logout button
                LogoutButton(
                  label: t.profile.menu.logout,
                  icon: AppIcons.logout,
                  onTap: () => _showLogoutDialog(context, t),
                ),
                const SizedBox(height: AppSpacing.xxl),

                // Version
                Center(
                  child: Text(
                    Constants.appVersion,
                    style: AppTextStyles.body(12, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: AppSpacing.xxxl),
                const SizedBox(height: AppSpacing.xxxl),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, Translations t) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return LogoutBottomSheet(onLogout: () {});
      },
    );
  }
}
