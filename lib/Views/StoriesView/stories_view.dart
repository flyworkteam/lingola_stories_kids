import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Riverpod/Controllers/story_controller.dart';
import 'package:lingolakidstories/Views/AllStoriesView/all_stories_view.dart';
import 'package:lingolakidstories/Views/StoryDetailsView/story_details_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/category_chip.dart';
import 'package:lingolakidstories/shared/story_card.dart';
import 'package:lingolakidstories/shared/story_card_medium.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class StoriesView extends HookConsumerWidget {
  const StoriesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = useState('popular');
    final storyState = ref.watch(storyProvider);

    final categories = const [
      'popular',
      'space',
      'magic',
      'animals',
      'detectives',
      'dinosaurs',
      'superhero',
      'underwater',
      'fairytale',
    ];
    final popularStories = storyState.popularStories;
    final allStories = storyState.allStories;

    final categoryStoriesFuture = useFuture(
      useMemoized(
        () => ref
            .read(storyProvider.notifier)
            .fetchPage(
              limit: 5,
              isPopular: selectedCategory.value == 'popular' ? true : null,
              category: selectedCategory.value == 'popular'
                  ? null
                  : _apiCategory(selectedCategory.value),
            ),
        [selectedCategory.value],
      ),
    );
    final filteredStories = categoryStoriesFuture.data ?? [];

    if (storyState.isLoading) {
      return const Scaffold(
        backgroundColor: AppColors.backgroundLight,
        body: Center(child: CircularProgressIndicator()),
      );
    }

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
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  final isSelected = cat == selectedCategory.value;
                  return CategoryChip(
                    label: _categoryLabel(context, cat),
                    icon: _categoryIcon(cat),
                    isPng: true,
                    isSelected: isSelected,
                    onTap: () => selectedCategory.value = cat,
                  );
                },
              ),
            ),
          ),

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
                          initialCategory: _apiCategory(selectedCategory.value),
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
              child:
                  categoryStoriesFuture.connectionState ==
                      ConnectionState.waiting
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.xl,
                      ),
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
                            onTap: () => _openDetails(context, ref, story),
                          ),
                        );
                      },
                    ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

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
                itemCount: popularStories.length,
                itemBuilder: (context, index) {
                  final story = popularStories[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index < popularStories.length - 1
                          ? AppSpacing.md
                          : 0,
                    ),
                    child: StoryCard(
                      story: story,
                      onTap: () => _openDetails(context, ref, story),
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
                itemCount: allStories.length,
                itemBuilder: (context, index) {
                  final story = allStories[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index < allStories.length - 1 ? AppSpacing.md : 0,
                    ),
                    child: StoryCardMedium(
                      story: story,
                      onTap: () => _openDetails(context, ref, story),
                    ),
                  );
                },
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

          const SliverToBoxAdapter(
            child: SafeArea(child: SizedBox(height: 20)),
          ),
        ],
      ),
    );
  }

  void _openDetails(BuildContext context, WidgetRef ref, StoryModel story) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => StoryDetailsView(story: story)),
    );
  }

  String _categoryLabel(BuildContext context, String categoryKey) {
    switch (categoryKey) {
      case 'popular':
        return context.t.stories.categories.popular;
      case 'space':
        return context.t.stories.categories.space;
      case 'magic':
        return context.t.stories.categories.magic;
      case 'animals':
        return context.t.stories.categories.animals;
      case 'detectives':
        return context.t.stories.categories.detectives;
      case 'dinosaurs':
        return context.t.stories.categories.dinosaurs;
      case 'superhero':
        return context.t.stories.categories.superhero;
      case 'underwater':
        return context.t.stories.categories.underwater;
      case 'fairytale':
        return context.t.stories.categories.fairytale;
      default:
        return context.t.stories.categories.popular;
    }
  }

  String _apiCategory(String categoryKey) {
    switch (categoryKey) {
      case 'popular':
        return 'Popular';
      case 'space':
        return 'Space';
      case 'magic':
        return 'Magic';
      case 'animals':
        return 'Animals';
      case 'detectives':
        return 'Detectives';
      case 'dinosaurs':
        return 'Dinosaurs';
      case 'superhero':
        return 'Superhero';
      case 'underwater':
        return 'Underwater';
      case 'fairytale':
        return 'Fairy Tale';
      default:
        return 'Popular';
    }
  }

  String _categoryIcon(String category) {
    switch (category) {
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
      case 'fairytale':
        return '🏰';
      default:
        return '⭐';
    }
  }
}
