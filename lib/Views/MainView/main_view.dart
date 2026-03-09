import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lingolakidstories/Views/HomeView/home_view.dart';
import 'package:lingolakidstories/Views/LibraryView/library_view.dart';
import 'package:lingolakidstories/Views/MainView/widgets/bottom_nav_bar_widget.dart';
import 'package:lingolakidstories/Views/ProfileView/profile_view.dart';
import 'package:lingolakidstories/Views/StoriesView/stories_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_overlay.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class MainView extends HookWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final initialIndex = args?['initialIndex'] as int? ?? 0;

    final currentIndex = useState(initialIndex);

    final lastBackPress = useState<DateTime?>(null);

    final pages = [
      const HomeView(),
      const StoriesView(),
      const LibraryView(),
      const ProfileView(),
    ];

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        final now = DateTime.now();
        final backButtonHasBeenPressedBefore =
            lastBackPress.value != null &&
            now.difference(lastBackPress.value!) < const Duration(seconds: 2);

        if (backButtonHasBeenPressedBefore) {
          SystemNavigator.pop();
          return;
        }

        lastBackPress.value = now;
        CustomOverlay.show(
          context,
          message: context.t.pressBackAgainToExit,
          icon: AppIcons.warning,
          type: OverlayType.info,
        );
      },
      child: Scaffold(
        body: pages[currentIndex.value],
        extendBody: true,
        bottomNavigationBar: BottomNavBarWidget(
          currentIndex: currentIndex.value,
          onIndexChanged: (index) {
            currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
