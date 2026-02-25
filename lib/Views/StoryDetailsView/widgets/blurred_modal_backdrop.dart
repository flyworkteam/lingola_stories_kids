import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredModalBackdrop extends StatelessWidget {
  const BlurredModalBackdrop({
    super.key,
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: GestureDetector(
        onTap: onTap,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withValues(alpha: 0.55),
            child: child,
          ),
        ),
      ),
    );
  }
}
