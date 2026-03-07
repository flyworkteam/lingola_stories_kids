import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Core/Routes/app_routes.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
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
import 'package:lingolakidstories/utils/print.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final userAsync = ref.watch(userProfileProvider);
    final user = userAsync.valueOrNull?.user;
    final displayName = user?.fullName ?? '';
    void showLogoutDialog() {
      showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        builder: (ctx) {
          return LogoutBottomSheet(
            onLogout: () {
              final authRepo = ref.read(AllProviders.authRepositoryProvider);
              authRepo.logout();
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil(AppRoutes.splash, (route) => false);
            },
          );
        },
      );
    }

    Offerings? offerings0;

    Future<void> fetchOfferings() async {
      try {
        final offerings = await Purchases.getOfferings();
        Print.info(offerings);
        if (context.mounted) {
          offerings0 = offerings;
        }
      } catch (e) {
        debugPrint('Error fetching offerings: $e');
      }
    }

    useEffect(() {
      fetchOfferings();
      return null;
    }, []);
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
                    name: displayName,
                    subtitle: user?.isPremium == true
                        ? t.profile.menu.premium
                        : t.profile.freeVersion,
                    avatarFile: user?.profilePictureUrl,
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
                      trailingLabel: user?.isPremium == true
                          ? t.profile.menu.premium
                          : t.profile.passive,
                      iconBackgroundColor: Color(0xffFFFBEB),
                      trailingLabelColor: const Color(0xFFF5A524),
                      onTap: () async {
                        if (user?.isPremium == true) {
                        } else {
                          final paywallresult =
                              await RevenueCatUI.presentPaywall(
                                offering: offerings0?.current,
                              );

                          if (paywallresult == PaywallResult.purchased) {
                            await ref
                                .read(userProfileProvider.notifier)
                                .refresh();

                            if (context.mounted) {
                              Navigator.pop(context);
                            }
                          }
                        }
                      },
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
                  onTap: () => showLogoutDialog(),
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
}
