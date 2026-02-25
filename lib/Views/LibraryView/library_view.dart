import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_popular_words_section.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_search_bar.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_word_grid.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFFAF3EC),
      body: Stack(
        children: [
          Positioned(
            top: -250,
            left: -200,
            child: CustomBlur(color: Color(0xFFFFB256)),
          ),
          Positioned(bottom: -250, right: -200, child: CustomBlur()),
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kToolbarHeight),
                // ── Header ──────────────────────────────────────────────
                _LibraryHeader(),

                const SizedBox(height: AppSpacing.lg),

                // ── Search + Owl ─────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              context.t.library.searchWord,
                              style: AppTextStyles.body(
                                20,
                                weight: FontWeight.w700,
                                letterSpacing: -0.05,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            LibrarySearchBar(),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSpacing.lg),
                      SvgPicture.asset(
                        AppIcons.libraryIcon,
                        width: 100,
                        height: 160,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xxl),

                // ── Popular Words ────────────────────────────────────────
                const LibraryPopularWordsSection(),

                const SizedBox(height: AppSpacing.xxl),

                // ── All Words Grid ───────────────────────────────────────
                const LibraryWordGrid(),

                const SizedBox(height: AppSpacing.xxl),
                const SizedBox(height: AppSpacing.xxl),
                const SizedBox(height: AppSpacing.xxl),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Header
// ─────────────────────────────────────────────────────────────────────────────
class _LibraryHeader extends StatelessWidget {
  const _LibraryHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xl,
        vertical: AppSpacing.lg,
      ),
      child: Row(
        children: [
          Text(
            context.t.library.title,
            style: AppTextStyles.heading(
              24,
              FontWeight.w800,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
