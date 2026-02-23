import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/final_screen.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/loading_screen.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/step1.dart';
import 'package:lingolakidstories/Views/OnboardingView/widgets/step2.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final currentStep = useState<int>(0);

    final loadingProgress = useState<double>(0.0);

    final learningLanguage = useState('en');
    final storyPreferences = useState<Map<String, dynamic>>({});

    final isLoadingScreen = currentStep.value == 2;
    final isFinalScreen = currentStep.value == 3;
    // Adımlar: 0=Step1, 1=Step2, 2=LoadingScreen, 3=FinalScreen
    void nextPage() {
      if (currentStep.value < 3) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
        currentStep.value++;
      }
    }

    void handleOnPressed() {
      if (isFinalScreen) {
        Navigator.of(context).pushReplacementNamed('/main');
      } else if (isLoadingScreen) {
      } else {
        nextPage();
      }
    }

    final shouldShowTopBar = !isLoadingScreen && !isFinalScreen;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: -80,
            left: -80,
            child: CustomBlur(color: Color(0xffFFB256)),
          ),
          Positioned(bottom: -80, right: -80, child: CustomBlur()),
          if (currentStep.value == 0)
            Positioned(
              bottom: 50,
              left: 0,
              child: SvgPicture.asset(AppIcons.langPageIcon),
            ),
          if (currentStep.value == 1)
            Positioned(
              top: 50,
              right: 0,
              child: SvgPicture.asset(AppIcons.kindofPageIcon),
            ),

          Padding(
            padding: AppPaddings.horizontalPage,
            child: Column(
              children: [
                if (shouldShowTopBar) const SizedBox(height: AppSpacing.xxxl),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: shouldShowTopBar ? 1.0 : 0.0,
                  child: IgnorePointer(
                    ignoring: !shouldShowTopBar,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: AppSpacing.xl,
                        right: AppSpacing.xl,
                        top: AppSpacing.md,
                        bottom: AppSpacing.lg,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [const SizedBox(width: AppSpacing.sm)],
                          ),
                          const SizedBox(height: AppSpacing.sm),
                        ],
                      ),
                    ),
                  ),
                ),

                // 2) MIDDLE (değişen içerik)
                Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Step1(
                        onLanguageSelected: (code) {
                          learningLanguage.value = code;
                        },
                      ),
                      Step2(
                        onCategoriesSelected: (categories) {
                          storyPreferences.value = {'categories': categories};
                        },
                      ),
                      LoadingScreen(
                        onComplete: nextPage,
                        onProgressChanged: (progress) {
                          loadingProgress.value = progress;
                        },
                        onboardingData: {
                          'learningLanguage': learningLanguage.value,
                          'storyPreferences': storyPreferences.value,
                        },
                      ),
                      const FinalScreen(),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.lg),
                SafeArea(
                  top: false,
                  child: IgnorePointer(
                    ignoring: isLoadingScreen,
                    child: CustomButton(
                      label: isFinalScreen || isLoadingScreen
                          ? context.t.get_started
                          : context.t.kContinue,
                      size: CustomButtonSize.large,
                      fullWidth: true,
                      labelStyle: AppTextStyles.body(
                        24,
                        weight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      backgroundColor: isLoadingScreen
                          ? AppColors.secondary
                          : AppColors.primary,
                      shadow: [
                        BoxShadow(
                          color: isLoadingScreen
                              ? AppColors.secondaryShadow
                              : AppColors.primaryShadow,
                          blurRadius: 0,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      onPressed: handleOnPressed,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
