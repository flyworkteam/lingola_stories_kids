import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Views/AllStoriesView/all_stories_view.dart';
import 'package:lingolakidstories/shared/category_chip.dart';
import 'package:lingolakidstories/shared/story_card_large.dart';
import 'package:lingolakidstories/shared/story_card_medium.dart';
import 'package:lingolakidstories/shared/story_gradient_card.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class StoriesView extends HookWidget {
  const StoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState('Popular');

    final filteredStories = useMemoized(
      () => StoryData.getByCategory(selectedCategory.value),
      [selectedCategory.value],
    );

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            // ─── App Bar ───────────────────────────────────────────────
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.xl,
                  vertical: AppSpacing.md,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Stories',
                        style: AppTextStyles.heading(
                          24,
                          FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.surfaceLight,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.06),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          AppIcons.search,
                          width: 18,
                          height: 18,
                          colorFilter: const ColorFilter.mode(
                            Colors.black87,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ─── Category Chips ────────────────────────────────────────
            SliverToBoxAdapter(
              child: SizedBox(
                height: 88,
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
                      icon: _categoryIcon(cat),
                      isPng: true,
                      isSelected: isSelected,
                      onTap: () => selectedCategory.value = cat,
                    );
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.lg)),

            // ─── Popular Stories ───────────────────────────────────────
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Text(
                  'Popular Stories',
                  style: AppTextStyles.heading(
                    17,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  itemCount: StoryData.popular.length,
                  itemBuilder: (context, index) {
                    final story = StoryData.popular[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index < StoryData.popular.length - 1
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
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

            // ─── Recommend For You ─────────────────────────────────────
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Text(
                  'Recommend For You',
                  style: AppTextStyles.heading(
                    17,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  itemCount: StoryData.all.length,
                  itemBuilder: (context, index) {
                    final story = StoryData.all[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index < StoryData.all.length - 1
                            ? AppSpacing.md
                            : 0,
                      ),
                      child: StoryCardMedium(
                        story: story,
                        onTap: () => _openDetails(context, story),
                      ),
                    );
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

            // ─── All Stories ───────────────────────────────────────────
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Stories',
                      style: AppTextStyles.heading(
                        17,
                        FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AllStoriesView(
                            initialCategory: selectedCategory.value,
                          ),
                        ),
                      ),
                      child: Text(
                        'See all',
                        style: AppTextStyles.body(
                          13,
                          color: AppColors.primary,
                          weight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSpacing.md,
                  mainAxisSpacing: AppSpacing.md,
                  childAspectRatio: 0.82,
                ),
                itemCount: filteredStories.length > 4
                    ? 4
                    : filteredStories.length,
                itemBuilder: (context, index) {
                  final story = filteredStories[index];
                  return StoryGradientCard(
                    story: story,
                    onTap: () => _openDetails(context, story),
                  );
                },
              ),
            ),

            const SliverToBoxAdapter(
              child: SafeArea(child: SizedBox(height: 20)),
            ),
          ],
        ),
      ),
    );
  }

  void _openDetails(BuildContext context, StoryModel story) {}

  String _categoryIcon(String category) {
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
}
