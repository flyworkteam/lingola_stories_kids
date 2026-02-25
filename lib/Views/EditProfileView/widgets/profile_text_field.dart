import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.controller,
    this.readOnly = false,
    this.trailingSuffix,
    this.keyboardType,
  });

  final String label;
  final String hint;
  final String icon;
  final TextEditingController? controller;
  final bool readOnly;
  final Widget? trailingSuffix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final bool isSvg = icon.endsWith('.svg');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.body(
            14,
            weight: FontWeight.w700,
            letterSpacing: -0.05,
            color: const Color(0xFF5F8486),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF0F7F7),
            borderRadius: AppBorderRadius.mdRadius,
          ),
          child: TextField(
            controller: controller,
            readOnly: readOnly,
            keyboardType: keyboardType,
            textAlignVertical: TextAlignVertical.center,
            style: AppTextStyles.body(
              14,
              weight: FontWeight.bold,
              letterSpacing: -0.05,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTextStyles.body(
                14,
                weight: FontWeight.bold,
                color: Color(0xff5F8486).withValues(alpha: 0.6),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: isSvg
                    ? SvgPicture.asset(
                        icon,
                        width: 18,
                        height: 18,
                        colorFilter: const ColorFilter.mode(
                          Color(0xff5F8486),
                          BlendMode.srcIn,
                        ),
                      )
                    : Image.asset(icon, width: 18, height: 18),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 48,
                minHeight: 48,
              ),
              suffixIcon: trailingSuffix != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: trailingSuffix,
                    )
                  : null,
              suffixIconConstraints: const BoxConstraints(
                minWidth: 48,
                minHeight: 48,
              ),
              border: InputBorder.none,
              fillColor: Color(0xffF4F9F9),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
