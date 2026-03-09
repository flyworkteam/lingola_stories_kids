import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Riverpod/Controllers/story_controller.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/Views/HomeView/widgets/header_widget.dart';
import 'package:lingolakidstories/Views/HomeView/widgets/library_banner.dart';
import 'package:lingolakidstories/Views/HomeView/widgets/premium_banner.dart';
import 'package:lingolakidstories/Views/StoryDetailsView/story_details_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/category_chip.dart';
import 'package:lingolakidstories/shared/story_card.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  void _openDetails(BuildContext context, StoryModel story) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => StoryDetailsView(story: story)),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(userProfileProvider.notifier).logActivity();
      });
      return null;
    }, const []);

    final selectedCategory = useState<String>('popular');
    final isPremium = ref.watch(
      userProfileProvider.select(
        (data) => data.valueOrNull?.user.isPremium ?? false,
      ),
    );
    String categoryLabel(BuildContext context, String categoryKey) {
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

    String apiCategory(String categoryKey) {
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

    String categoryIcon(String categoryKey) {
      switch (categoryKey) {
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
    final featuredStoriesFuture = useFuture(
      useMemoized(
        () => ref
            .read(storyProvider.notifier)
            .fetchPage(
              limit: 5,
              isPopular: selectedCategory.value == 'popular' ? true : null,
              category: selectedCategory.value == 'popular'
                  ? null
                  : apiCategory(selectedCategory.value),
            ),
        [selectedCategory.value],
      ),
    );
    final featuredStories = featuredStoriesFuture.data ?? [];

    final historyFuture = useFuture(
      useMemoized(
        () => ref.read(storyProvider.notifier).getReadingHistory(),
        [],
      ),
    );
    final historyStories = historyFuture.data ?? [];

    final continueReadingFuture = useFuture(
      useMemoized(
        () => ref.read(storyProvider.notifier).getContinueReading(),
        [],
      ),
    );
    final continueReadingStory = continueReadingFuture.data;

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
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final cat = categories[index];
                    final isSelected = cat == selectedCategory.value;
                    return CategoryChip(
                      label: categoryLabel(context, cat),
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
                child:
                    featuredStoriesFuture.connectionState ==
                        ConnectionState.waiting
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
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

              if (continueReadingStory != null) ...[
                // Pick up where you left off
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  child: _ContinueReadingCard(
                    story: continueReadingStory,
                    onTap: () => _openDetails(context, continueReadingStory),
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
              ],

              // Premium banner
              if (!isPremium) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  child: const PremiumBanner(),
                ),
              ],
              const SizedBox(height: AppSpacing.xl),

              if (historyStories.isNotEmpty) ...[
                // History section
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
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
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xl,
                    ),
                    itemCount: historyStories.length,
                    itemBuilder: (context, index) {
                      final story = historyStories[index];
                      return Padding(
                        padding: EdgeInsets.only(
                          right: index < historyStories.length - 1
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
              ],

              // Library banner
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  child: const LibraryBanner(),
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
  const _ContinueReadingCard({required this.story, required this.onTap});

  final StoryModel story;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // Current page is 0-indexed internally, so +1 for display
    final displayedPage = story.currentPage + 1;
    final total = story.totalPages > 0 ? story.totalPages : 1;
    final pct = (displayedPage / total).clamp(0.0, 1.0);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
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
                child:
                    story.coverImage != null &&
                        story.coverImage!.startsWith('http')
                    ? Image.network(
                        story.coverImage!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const _FallbackCover(),
                      )
                    : (story.coverImage != null
                          ? Image.asset(
                              story.coverImage!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const _FallbackCover(),
                            )
                          : const _FallbackCover()),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    story.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
                                value: pct,
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
                                  'Page $displayedPage / $total',
                                  style: AppTextStyles.body(
                                    11,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  '${(pct * 100).toInt()}%',
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
      ),
    );
  }
}

class _FallbackCover extends StatelessWidget {
  const _FallbackCover();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: const Center(
        child: Icon(Icons.book, color: Colors.white54, size: 24),
      ),
    );
  }
}
