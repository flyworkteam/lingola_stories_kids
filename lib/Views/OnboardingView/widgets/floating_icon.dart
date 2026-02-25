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

    final shadowScale = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SizedBox(
          width: 248,
          height: 260,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 0,
                child: Transform.scale(
                  scaleX: shadowScale.value,
                  scaleY: shadowScale.value,
                  child: SvgPicture.asset(AppIcons.loadingShadow),
                ),
              ),
              Positioned(
                bottom: 18,
                child: Transform.translate(
                  offset: Offset(0, offsetY.value),
                  child: SvgPicture.asset(AppIcons.loading),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
