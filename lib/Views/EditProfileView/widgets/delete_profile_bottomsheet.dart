import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class DeleteProfileBottomsheet extends StatelessWidget {
  const DeleteProfileBottomsheet({super.key, this.onDelete});

  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.xxxl,
          AppSpacing.sm,
          AppSpacing.xxxl,
          AppSpacing.md,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 49,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            Container(
              width: 64,
              height: 64,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFFEBEE),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 43,
                height: 43,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppIcons.deleteAccount,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              t.deleteDialogTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.heading(
                20,
                FontWeight.w700,
                letterSpacing: -0.05,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              t.deleteDialogDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.body(
                18,
                weight: FontWeight.w300,
                letterSpacing: -0.05,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    label: t.profile.logoutDialog.cancelButton,
                    onPressed: () => Navigator.of(context).pop(),
                    size: CustomButtonSize.large,
                    fullWidth: true,
                    backgroundColor: const Color(0xFFD9D9D9),
                    labelStyle: AppTextStyles.body(
                      24,
                      weight: FontWeight.w700,
                      color: Color(0xff6F6F6F),
                      letterSpacing: -0.05,
                    ),
                    shadow: [
                      BoxShadow(
                        color: Color(0xffB7B7B7),
                        blurRadius: 0,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: AppBorderRadius.lg,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: CustomButton(
                    label: t.delete,
                    onPressed: () {
                      Navigator.of(context).pop();
                      onDelete?.call();
                    },
                    size: CustomButtonSize.large,
                    fullWidth: true,
                    backgroundColor: const Color(0xFFF44336),
                    labelStyle: AppTextStyles.body(
                      24,
                      weight: FontWeight.w700,
                      letterSpacing: -0.05,
                      color: Colors.white,
                    ),
                    borderRadius: AppBorderRadius.lg,
                    shadow: [
                      BoxShadow(
                        color: Color(0xff731711),
                        blurRadius: 0,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
