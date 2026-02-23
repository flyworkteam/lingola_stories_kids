import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class FloatingIcon extends HookWidget {
  const FloatingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1200),
    );

    final offsetY = Tween<double>(
      begin: -10.0,
      end: 10.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    useEffect(() {
      controller.repeat(reverse: true);
      return null;
    }, []);

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, offsetY.value),
          child: child,
        );
      },
      child: SvgPicture.asset(AppIcons.loading),
    );
  }
}
