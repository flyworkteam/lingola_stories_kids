import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class LibraryWordCard extends StatelessWidget {
  const LibraryWordCard({
    super.key,
    required this.word,
    required this.translation,
    required this.onSpeakTap,
    this.isSpeaking = false,
    this.isTranslating = false,
  });

  final String word;
  final String? translation;
  final VoidCallback onSpeakTap;
  final bool isSpeaking;
  final bool isTranslating;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppBorderRadius.lgRadius,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffCCDBE8),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onSpeakTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: isSpeaking ? AppColors.primaryShadow : AppColors.primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryShadow,
                    blurRadius: 0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  isSpeaking ? AppIcons.stop : AppIcons.speaker,
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            word,
            style: AppTextStyles.heading(
              18,
              FontWeight.w600,
              color: Colors.black,
              letterSpacing: -0.05,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 2),
          isTranslating
              ? const SizedBox(width: 60, height: 12, child: _ShimmerBox())
              : Text(
                  translation ?? word,
                  style: AppTextStyles.body(
                    14,
                    color: Color(0xffb2b2b2),
                    letterSpacing: -0.05,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
        ],
      ),
    );
  }
}

class _ShimmerBox extends StatefulWidget {
  const _ShimmerBox();

  @override
  State<_ShimmerBox> createState() => _ShimmerBoxState();
}

class _ShimmerBoxState extends State<_ShimmerBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _anim = CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _anim.drive(Tween(begin: 0.3, end: 0.8)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
