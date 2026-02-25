import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Views/HomeView/widgets/header_widget.dart';
import 'package:lingolakidstories/Views/StoryDetailsView/story_details_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/category_chip.dart';
import 'package:lingolakidstories/shared/story_card.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});

  void _openDetails(BuildContext context, StoryModel story) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => StoryDetailsView(story: story)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState<String>('Popular');
    String categoryIcon(String category) {
      switch (category.toLowerCase()) {
        case 'popular':
          return '⭐';
        case 'space':
          return '🚀';
        case 'magic':
          return '🦄';
        case 'animals':
          return '🐾';
        case 'detectives':
          return '🕵️‍♂️';
        case 'dinosaurs':
          return '🦖';
        case 'superhero':
          return '🦸';
        case 'underwater':
          return '🌊';
        case 'fairy tale':
          return '🏰';
        default:
          return '⭐';
      }
    }

    final featuredStories = StoryData.popular;
    final historyStories = StoryData.all.take(2).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              SizedBox(height: MediaQuery.of(context).padding.top),
              const HeaderWidget(),
              const SizedBox(height: AppSpacing.xl),
              // Category chips
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  itemCount: StoryData.categories.length,
                  itemBuilder: (context, index) {
                    final cat = StoryData.categories[index];
                    final isSelected = cat == selectedCategory.value;
                    return CategoryChip(
                      label: cat,
                      icon: categoryIcon(cat),
                      isPng: true,
                      isSelected: isSelected,
                      onTap: () => selectedCategory.value = cat,
                    );
                  },
                ),
              ),

              const SizedBox(height: AppSpacing.md),

              // Featured story cards
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  itemCount: featuredStories.length,
                  itemBuilder: (context, index) {
                    final story = featuredStories[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index < featuredStories.length - 1
                            ? AppSpacing.md
                            : 0,
                      ),
                      child: StoryCard(
                        story: story,
                        onTap: () => _openDetails(context, story),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: AppSpacing.xl),

              // Pick up where you left off
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Text(
                  context.t.home.pickUpWhereYouLeftOff,
                  style: AppTextStyles.heading(
                    17,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: _ContinueReadingCard(),
              ),

              const SizedBox(height: AppSpacing.xl),

              // Premium banner
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Text(
                  context.t.home.premiumSection,
                  style: AppTextStyles.heading(
                    17,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: const _PremiumBanner(),
              ),

              const SizedBox(height: AppSpacing.xl),

              // History section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Text(
                  context.t.home.history,
                  style: AppTextStyles.heading(
                    17,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Row(
                  children: [
                    for (int i = 0; i < historyStories.length; i++) ...[
                      Expanded(
                        child: StoryCard(
                          story: historyStories[i],
                          onTap: () => _openDetails(context, historyStories[i]),
                          aspectRatio: 0.85,
                          titleSize: 12,
                          tagSize: 9,
                        ),
                      ),
                      if (i < historyStories.length - 1)
                        const SizedBox(width: AppSpacing.md),
                    ],
                  ],
                ),
              ),

              const SizedBox(height: AppSpacing.xl),

              // Library banner
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  child: const _LibraryBanner(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Continue Reading Card ────────────────────────────────────────────────────

class _ContinueReadingCard extends StatelessWidget {
  const _ContinueReadingCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: AppBorderRadius.mdRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Book thumbnail
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.smRadius,
              color: const Color(0xFFD4E8C2),
            ),
            child: ClipRRect(
              borderRadius: AppBorderRadius.smRadius,
              child: Image.asset(
                'assets/images/ic_dummybook3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Key to the Lost City',
                  style: AppTextStyles.heading(
                    14,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Progress bar
                          ClipRRect(
                            borderRadius: AppBorderRadius.pillRadius,
                            child: LinearProgressIndicator(
                              value: 0.5,
                              backgroundColor: Colors.grey.shade200,
                              color: AppColors.primary,
                              minHeight: 6,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Page 24 / 40',
                                style: AppTextStyles.body(
                                  11,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                '50% completed',
                                style: AppTextStyles.body(
                                  11,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          AppIcons.play,
                          width: 14,
                          height: 14,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Premium Banner ───────────────────────────────────────────────────────────

class _PremiumBanner extends StatelessWidget {
  const _PremiumBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 67,
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
    );
  }
}

// ─── Library Banner ───────────────────────────────────────────────────────────

class _LibraryBanner extends StatelessWidget {
  const _LibraryBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: AppBorderRadius.mdRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.15),
              borderRadius: AppBorderRadius.smRadius,
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.libraryIcon,
                width: 26,
                height: 26,
                colorFilter: const ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.home.librarySection,
                  style: AppTextStyles.heading(
                    14,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  context.t.home.libraryDescription,
                  style: AppTextStyles.body(11, color: Colors.black54),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right_rounded,
            color: Colors.black38,
            size: 22,
          ),
        ],
      ),
    );
  }
}
