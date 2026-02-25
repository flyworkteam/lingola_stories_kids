import 'package:flutter/material.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';

class CoverHeader extends StatelessWidget {
  const CoverHeader({
    super.key,
    required this.startColor,
    required this.endColor,
    required this.onBack,
    required this.onMenuTap,
    this.coverImageAsset,
    this.height = 360,
  });

  final Color startColor;
  final Color endColor;
  final VoidCallback onBack;
  final VoidCallback onMenuTap;
  final String? coverImageAsset;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          // Gradient BG
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    startColor,
                    endColor,
                    endColor.withValues(alpha: 0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 0.65, 1.0],
                ),
              ),
            ),
          ),

          // Cover image
          if (coverImageAsset != null)
            Positioned.fill(
              child: Image.asset(
                coverImageAsset!,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),

          // Back button
          Positioned(
            top: MediaQuery.of(context).padding.top + AppSpacing.sm,
            left: AppSpacing.md,
            child: _CircleButton(
              icon: Icons.arrow_back_ios_new_rounded,
              onTap: onBack,
            ),
          ),
        ],
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.35),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}
