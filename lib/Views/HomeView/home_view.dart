import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Views/HomeView/widgets/header_widget.dart';
import 'package:lingolakidstories/shared/category_chip.dart';
import 'package:lingolakidstories/shared/story_card_large.dart';
import 'package:lingolakidstories/shared/story_gradient_card.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});

  void _openDetails(BuildContext context, StoryModel story) {}

  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState<String>('Popular');
    String categoryIcon(String category) {
      switch (category.toLowerCase()) {
        case 'popular':
          return AppIcons.popular;
        case 'space':
          return AppIcons.space;
        case 'magic':
          return AppIcons.magic;
        case 'animals':
          return AppIcons.animals;
        case 'detectives':
          return AppIcons.detectives;
        case 'dinosaurs':
          return AppIcons.dinosaurs;
        case 'superhero':
          return AppIcons.superhero;
        case 'underwater':
          return AppIcons.underwater;
        case 'fairy tale':
          return AppIcons.fairytale;
        default:
          return AppIcons.popular;
      }
    }

    final featuredStories = StoryData.popular;
    final historyStories = StoryData.all.take(2).toList();

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              const HeaderWidget(),

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
                      child: StoryCardLarge(
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
                  'Pick up where you left off',
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
                  'Premium',
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
                  'History',
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
                        child: StoryGradientCard(
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
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF5C842), Color(0xFFF0A830)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: AppBorderRadius.lgRadius,
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.3),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.proStar,
                width: 22,
                height: 22,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
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
                  'Upgrade to Premium',
                  style: AppTextStyles.heading(
                    14,
                    FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Unlimited stories and an ad-free experience',
                  style: AppTextStyles.body(
                    11,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.3),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.chevron_right_rounded,
              color: Colors.white,
              size: 18,
            ),
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
                  'Library',
                  style: AppTextStyles.heading(
                    14,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'The words you have saved will appear here.',
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
