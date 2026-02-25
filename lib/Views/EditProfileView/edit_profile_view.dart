import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Views/EditProfileView/widgets/avatar_selector.dart';
import 'package:lingolakidstories/Views/EditProfileView/widgets/delete_profile_bottomsheet.dart';
import 'package:lingolakidstories/Views/EditProfileView/widgets/profile_text_field.dart';
import 'package:lingolakidstories/Views/EditProfileView/widgets/select_learn_language.dart';
import 'package:lingolakidstories/Views/ShareFriendView/widgets/toast.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class EditProfileView extends HookWidget {
  const EditProfileView({super.key});

  void _showDeleteBottomSheet(BuildContext context, VoidCallback onDelete) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => DeleteProfileBottomsheet(onDelete: onDelete),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    final nameController = useTextEditingController(text: 'Henry Johnson');
    final showSuccess = useState(false);

    void save() {
      showSuccess.value = true;
      Future.delayed(const Duration(seconds: 3), () {
        if (context.mounted) showSuccess.value = false;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 32),
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight),
            Row(
              children: [
                SizedBox(width: AppSpacing.xl),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset(AppIcons.longLeftArrow),
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  t.editProfile.title,
                  style: AppTextStyles.heading(
                    18,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            // Avatar selector
            const AvatarSelector(),
            const SizedBox(height: AppSpacing.xxl),

            // Form fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Full Name
                  ProfileTextField(
                    label: t.editProfile.fullName,
                    hint: 'Henry Johnson',
                    icon: AppIcons.editProfile,
                    controller: nameController,
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // Email (read-only)
                  ProfileTextField(
                    label: t.editProfile.email,
                    hint: 'alex.johnson@icloud.com',
                    icon: AppIcons.mail,
                    readOnly: true,
                    trailingSuffix: SvgPicture.asset(
                      AppIcons.lock,
                      width: 18,
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // Age (read-only)
                  ProfileTextField(
                    label: t.editProfile.age,
                    hint: '28',
                    icon: AppIcons.birth,
                    readOnly: true,
                    trailingSuffix: SvgPicture.asset(
                      AppIcons.lock,
                      width: 18,
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // Select Learn Language
                  Text(
                    context.t.editProfile.learnLanguage,
                    style: AppTextStyles.body(
                      14,
                      weight: FontWeight.w700,
                      letterSpacing: -0.05,
                      color: const Color(0xFF5F8486),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SelectLearnLanguage(),
                ],
              ),
            ),

            const SizedBox(height: AppSpacing.xxl),

            // Success toast
            if (showSuccess.value) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Toast(
                  title: t.storyDetails.successfully,
                  message: t.editProfile.updateSuccess,
                  onDismiss: () => showSuccess.value = false,
                  icon: AppIcons.successToast,
                  backgroundColor: const Color(
                    0xFFE6F7F1,
                  ).withValues(alpha: 0.8),
                  appIconColor: const Color(0xFF43A047),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
            ],

            // Save button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: CustomButton(
                label: context.t.save,
                size: CustomButtonSize.large,
                fullWidth: true,
                borderRadius: 18,
                labelStyle: AppTextStyles.body(
                  24,
                  weight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: -0.05,
                ),
                backgroundColor: AppColors.primary,
                shadow: [
                  BoxShadow(
                    color: AppColors.primaryShadow,
                    blurRadius: 0,
                    offset: const Offset(0, 5),
                  ),
                ],
                onPressed: save,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),

            // Delete account
            GestureDetector(
              onTap: () => _showDeleteBottomSheet(context, () {}),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.delete,
                    width: 18,
                    height: 18,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFFE53935),
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    t.editProfile.deleteAccount,
                    style: AppTextStyles.body(
                      14,
                      weight: FontWeight.w600,
                      color: const Color(0xFFE53935),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
