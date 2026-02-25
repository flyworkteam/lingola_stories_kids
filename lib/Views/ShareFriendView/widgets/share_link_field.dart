import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class ShareLinkField extends StatelessWidget {
  const ShareLinkField({super.key, required this.link, this.onCopy});

  final String link;
  final VoidCallback? onCopy;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF9FBFB),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFCCCCCC)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.md,
              ),
              child: Text(
                link,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 14 * -0.05,
                  height: 16 / 14,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: link));
              onCopy?.call();
            },
            child: SizedBox(
              width: 48,
              height: 48,

              child: Center(
                child: SvgPicture.asset(
                  AppIcons.copy,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(
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
