import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_popular_words_section.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_search_bar.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_word_grid.dart';
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
          const Positioned(
            top: -60,
            left: -60,
            child: CustomBlur(color: Color(0xffFFB256)),
          ),
          const Positioned(
            bottom: 100,
            right: -60,
            child: CustomBlur(color: Color(0xffFA96BA)),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Header ──────────────────────────────────────────────
                  _LibraryHeader(),

                  const SizedBox(height: AppSpacing.lg),

                  // ── Search + Owl ─────────────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xl,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Expanded(child: LibrarySearchBar()),
                        const SizedBox(width: AppSpacing.sm),
                        SvgPicture.asset(
                          AppIcons.libraryIcon,
                          width: 100,
                          height: 110,
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
                ],
              ),
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
            'Library',
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
