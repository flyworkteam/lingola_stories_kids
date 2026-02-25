import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Views/AllStoriesView/all_stories_view.dart';
import 'package:lingolakidstories/Views/StoryDetailsView/story_details_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/category_chip.dart';
import 'package:lingolakidstories/shared/story_card.dart';
import 'package:lingolakidstories/shared/story_card_medium.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

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
      body: CustomScrollView(
        slivers: [
          // ─── App Bar ───────────────────────────────────────────────
          SliverToBoxAdapter(child: SizedBox(height: kToolbarHeight)),
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
                      context.t.stories.title,
                      style: AppTextStyles.heading(
                        22,
                        FontWeight.w700,
                        color: Colors.black,
                        letterSpacing: -0.05,
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
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
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
                context.t.stories.popularStories,
                style: AppTextStyles.heading(
                  20,
                  FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: -0.05,
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: StoryCard.horizontalListHeight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                itemCount: StoryData.popular.length,
                itemBuilder: (context, index) {
                  final story = StoryData.popular[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index < StoryData.popular.length - 1
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
          ),

          const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

          // ─── Recommend For You ─────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: Text(
                context.t.stories.recommendForYou,
                style: AppTextStyles.heading(
                  20,
                  FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: -0.05,
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
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
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
                    context.t.stories.allStories,
                    style: AppTextStyles.heading(
                      20,
                      FontWeight.w700,
                      color: Colors.black,
                      letterSpacing: -0.05,
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
                      context.t.stories.seeAll,
                      style: AppTextStyles.body(
                        16,
                        color: AppColors.primary,
                        weight: FontWeight.w400,
                        letterSpacing: -0.05,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: StoryCard.horizontalListHeight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                itemCount: filteredStories.length,
                itemBuilder: (context, index) {
                  final story = filteredStories[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index < filteredStories.length - 1
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
          ),

          const SliverToBoxAdapter(
            child: SafeArea(child: SizedBox(height: 20)),
          ),
        ],
      ),
    );
  }

  void _openDetails(BuildContext context, StoryModel story) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => StoryDetailsView(story: story)),
    );
  }

  String _categoryIcon(String category) {
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
}
