import 'dart:async';

import 'package:cross_fade/cross_fade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Views/SplashView/models/splash_info_model.dart';
import 'package:lingolakidstories/Views/SplashView/widgets/splash_widget.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

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
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashscreen1),
                  fit: BoxFit.cover,
                ),
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
