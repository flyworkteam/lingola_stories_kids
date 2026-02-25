import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class DeleteAccountDialog extends StatelessWidget {
  const DeleteAccountDialog({
    super.key,
    required this.title,
    required this.description,
    required this.cancelLabel,
    required this.deleteLabel,
    required this.onDelete,
  });

  final String title;
  final String description;
  final String cancelLabel;
  final String deleteLabel;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.lgRadius),
      insetPadding: const EdgeInsets.symmetric(horizontal: 32),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            Container(
              width: 64,
              height: 64,
              decoration: const BoxDecoration(
                color: Color(0xFFFFEBEB),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppIcons.deleteAccount,
                  width: 32,
                  height: 32,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFFE53935),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: AppTextStyles.heading(
                18,
                FontWeight.w700,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: AppTextStyles.body(13, color: Colors.grey, height: 1.4),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      side: const BorderSide(color: Color(0xFFD6D6D6)),
                      shape: RoundedRectangleBorder(
                        borderRadius: AppBorderRadius.lgRadius,
                      ),
                    ),
                    child: Text(
                      cancelLabel,
                      style: AppTextStyles.body(
                        14,
                        weight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: onDelete,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE53935),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: AppBorderRadius.lgRadius,
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      deleteLabel,
                      style: AppTextStyles.body(
                        14,
                        weight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
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
