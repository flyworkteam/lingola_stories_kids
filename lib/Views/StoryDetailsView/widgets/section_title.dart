import 'package:flutter/material.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.heading(16, FontWeight.w700, color: Colors.white),
    );
  }
}
