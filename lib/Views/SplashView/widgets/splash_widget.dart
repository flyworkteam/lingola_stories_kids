import 'package:flutter/material.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class SplashWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback? onGetStarted;
  final int currentPage;
  final int totalPages;

  const SplashWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onGetStarted,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.5;

    // StoryCard ile aynı yaklaşım: asset'i ekranda görüneceği genişliğe göre decode et.
    const filterQuality = FilterQuality.high;
    final dpr = MediaQuery.devicePixelRatioOf(context);
    final screenWidth = MediaQuery.sizeOf(context).width;
    final int targetDecodeWidth = (screenWidth * dpr).round().clamp(256, 2048);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: imageHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ResizeImage(
                  AssetImage(image),
                  width: targetDecodeWidth,
                  policy: ResizeImagePolicy.exact,
                ),
                fit: BoxFit.fitWidth,
                filterQuality: filterQuality,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 32),
          Expanded(
            flex: 1,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(bottom: -250, right: -200, child: CustomBlur()),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          totalPages,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: index == currentPage ? 32 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: index == currentPage
                                  ? AppColors.primary
                                  : AppColors.secondary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      Text(
                        title,
                        style: AppTextStyles.body(
                          32,
                          letterSpacing: -0.05,
                          height: 30,
                          weight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        subtitle,
                        style: AppTextStyles.body(
                          22,
                          letterSpacing: -0.05,
                          height: 24,
                          weight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: CustomButton(
                label: context.t.get_started,
                onPressed: onGetStarted,
                size: CustomButtonSize.large,
                borderRadius: 50,
                fullWidth: true,
                backgroundColor: AppColors.primary,
                labelStyle: AppTextStyles.body(
                  24,
                  weight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: -0.05,
                ),
                shadow: [
                  BoxShadow(
                    color: AppColors.primaryShadow,
                    blurRadius: 0,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
