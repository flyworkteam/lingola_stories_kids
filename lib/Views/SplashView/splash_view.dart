import 'dart:async';

import 'package:cross_fade/cross_fade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Views/SplashView/models/splash_info_model.dart';
import 'package:lingolakidstories/Views/SplashView/widgets/splash_widget.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';
import 'package:lingolakidstories/utils/constants.dart';

class SplashView extends HookConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showInitialSplash = useState<bool>(true);

    final currentPage = useState<int>(0);
    final autoScrollTimer = useRef<Timer?>(null);

    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () async {
        // final authRepo = ref.read(AllProviders.authRepositoryProvider);
        // final isLoggedIn = await authRepo.isLoggedIn();

        // if (!context.mounted) return;

        // if (isLoggedIn) {
        //   Navigator.of(context).pushReplacementNamed('/main');
        // } else {
        //   showInitialSplash.value = false;
        // }
        showInitialSplash.value = false;
      });
      return null;
    }, []);

    final splashData = [
      SplashInfoModel(
        imagePath: AppImages.splash1,
        title: context.t.splash.screen1.title,
        description: context.t.splash.screen1.description,
      ),
      SplashInfoModel(
        imagePath: AppImages.splash2,
        title: context.t.splash.screen2.title,
        description: context.t.splash.screen2.description,
      ),
    ];

    void startAutoScroll() {
      autoScrollTimer.value?.cancel();
      autoScrollTimer.value = Timer.periodic(const Duration(seconds: 3), (
        timer,
      ) {
        if (currentPage.value < splashData.length - 1) {
          currentPage.value++;
        } else {
          currentPage.value = 0;
        }
      });
    }

    void resetAutoScroll() {
      autoScrollTimer.value?.cancel();
      startAutoScroll();
    }

    useEffect(() {
      if (!showInitialSplash.value) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          startAutoScroll();
        });
      }
      return () {
        autoScrollTimer.value?.cancel();
      };
    }, [showInitialSplash.value]);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CrossFade<bool>(
        value: showInitialSplash.value,
        duration: const Duration(milliseconds: 800),
        builder: (context, isInitialSplash) {
          if (isInitialSplash) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFFF3E8),
                    Color(0xFFFFFFFF),
                    Color(0xFFFFF0F5),
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: -250,
                    left: -200,
                    child: CustomBlur(color: Color(0xFFFFB256)),
                  ),
                  Positioned(bottom: -250, right: -200, child: CustomBlur()),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(36),
                          child: Builder(
                            builder: (context) {
                              const double logoSize = 130;
                              final dpr = MediaQuery.devicePixelRatioOf(
                                context,
                              );
                              final int targetDecodeWidth = (logoSize * dpr)
                                  .round()
                                  .clamp(128, 1024);

                              return Image(
                                image: ResizeImage(
                                  const AssetImage(AppAssets.appLogo),
                                  width: targetDecodeWidth,
                                  policy: ResizeImagePolicy.exact,
                                ),
                                fit: BoxFit.contain,
                                width: logoSize,
                                height: logoSize,
                                filterQuality: FilterQuality.high,
                                isAntiAlias: true,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          Constants.appName,
                          style: AppTextStyles.body(
                            32,
                            weight: FontWeight.bold,
                            letterSpacing: -0.05,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                  if (currentPage.value > 0) {
                    currentPage.value--;
                    resetAutoScroll();
                  }
                } else if (details.primaryVelocity! < 0) {
                  if (currentPage.value < splashData.length - 1) {
                    currentPage.value++;
                    resetAutoScroll();
                  }
                }
              },
              child: CrossFade<int>(
                value: currentPage.value,
                duration: const Duration(milliseconds: 400),
                builder: (context, page) {
                  return SplashWidget(
                    image: splashData[page].imagePath,
                    title: splashData[page].title,
                    subtitle: splashData[page].description,
                    currentPage: page,
                    totalPages: splashData.length,
                    onGetStarted: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
