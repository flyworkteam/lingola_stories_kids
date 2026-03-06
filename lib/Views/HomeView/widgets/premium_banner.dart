import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';
import 'package:lingolakidstories/utils/print.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';

class PremiumBanner extends HookConsumerWidget {
  const PremiumBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Offerings? offerings0;

    Future<void> fetchOfferings() async {
      try {
        final offerings = await Purchases.getOfferings();
        Print.info(offerings);
        if (context.mounted) {
          offerings0 = offerings;
        }
      } catch (e) {
        debugPrint('Error fetching offerings: $e');
      }
    }

    useEffect(() {
      fetchOfferings();
      return null;
    }, []);

    return GestureDetector(
      onTap: () async {
        if (offerings0?.current != null) {
          try {
            // Present the Paywall
            final paywallresult = await RevenueCatUI.presentPaywall(
              offering: offerings0?.current,
            );

            if (paywallresult == PaywallResult.purchased) {
              // Force refresh of premium status and user profile
              await ref.read(userProfileProvider.notifier).refresh();

              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          } catch (e) {
            debugPrint('Error presenting paywall: $e');
          }
        }
      },
      child: Container(
        width: double.infinity,
        height: 75,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFF6C667), Color(0xFFFFC272)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: AppBorderRadius.mdRadius,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: AppSpacing.md),
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppIcons.proBudge,
                      width: 22,
                      height: 22,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppSpacing.xs),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.t.home.upgradeToPremium,
                      style: AppTextStyles.heading(
                        18,
                        FontWeight.w700,
                        letterSpacing: -0.05,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      context.t.home.unlimitedStories,
                      style: AppTextStyles.body(
                        12,
                        letterSpacing: -0.05,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: AppSpacing.md),
                SvgPicture.asset(AppIcons.leftArrow),
                SizedBox(width: AppSpacing.xs),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(AppIcons.proStar),
            ),
          ],
        ),
      ),
    );
  }
}
