import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Riverpod/Controllers/story_controller.dart';
import 'package:lingolakidstories/Views/StoryDetailsView/story_details_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/shared/story_card.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

const _pageSize = 20;

const _allCategories = [
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

class AllStoriesView extends ConsumerStatefulWidget {
  const AllStoriesView({super.key, this.initialCategory = 'popular'});

  final String initialCategory;

  @override
  ConsumerState<AllStoriesView> createState() => _AllStoriesViewState();
}

class _AllStoriesViewState extends ConsumerState<AllStoriesView> {
  final Set<String> _selectedCategories = {};
  bool _showFilter = false;

  late final PagingController<int, StoryModel> _pagingController;

  @override
  void initState() {
    super.initState();

    // Accept both key values (popular) and legacy API/display values (Popular).
    _selectedCategories.add(_normalizeCategoryKey(widget.initialCategory));

    _pagingController = PagingController<int, StoryModel>(
      getNextPageKey: (state) {
        final pages = state.pages;
        if (pages == null || pages.isEmpty) return 0;
        final lastPageItems = pages.last.length;
        if (lastPageItems < _pageSize) return null;
        final totalFetched = pages.fold<int>(0, (sum, p) => sum + p.length);
        return totalFetched;
      },
      fetchPage: (pageKey) => _fetchPage(pageKey),
    );
    // Fetch first page on init
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pagingController.fetchNextPage();
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<List<StoryModel>> _fetchPage(int pageKey) async {
    final notifier = ref.read(storyProvider.notifier);

    String? categoryFilter;
    bool? isPopular;
    if (_selectedCategories.isNotEmpty) {
      if (_selectedCategories.contains('popular') &&
          _selectedCategories.length == 1) {
        isPopular = true;
      } else {
        final nonPopular = _selectedCategories.where((c) => c != 'popular');
        if (nonPopular.isNotEmpty) {
          categoryFilter = _apiCategory(nonPopular.first);
        }
        if (_selectedCategories.contains('popular')) {
          isPopular = true;
        }
      }
    }

    final stories = await notifier.fetchPage(
      limit: _pageSize,
      offset: pageKey,
      category: categoryFilter,
      isPopular: isPopular,
    );
    return stories;
  }

  void _onCategoryFilterChanged(Set<String> cats) {
    setState(() {
      _selectedCategories.clear();
      _selectedCategories.addAll(cats);
      _showFilter = false;
    });
    _pagingController.refresh();
    _pagingController.fetchNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // ─── App Bar ─────────────────────────────────────────────
              SliverAppBar(
                backgroundColor: AppColors.backgroundLight,
                elevation: 0,
                pinned: true,
                leading: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: SvgPicture.asset(
                      AppIcons.longLeftArrow,
                      colorFilter: const ColorFilter.mode(
                        Colors.black87,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  context.t.allStories.title,
                  style: AppTextStyles.heading(
                    18,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () => setState(() => _showFilter = true),
                    child: Padding(
                      padding: const EdgeInsets.only(right: AppSpacing.xl),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SvgPicture.asset(
                            AppIcons.filter,
                            width: 24,
                            height: 24,
                            colorFilter: const ColorFilter.mode(
                              Colors.black87,
                              BlendMode.srcIn,
                            ),
                          ),
                          if (_selectedCategories.isNotEmpty)
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // ─── Paginated Story Grid ──────────────────────────────────
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.xl,
                  AppSpacing.md,
                  AppSpacing.xl,
                  120,
                ),
                sliver: ValueListenableBuilder<PagingState<int, StoryModel>>(
                  valueListenable: _pagingController,
                  builder: (context, state, child) {
                    return PagedSliverGrid<int, StoryModel>(
                      state: state,
                      fetchNextPage: _pagingController.fetchNextPage,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: AppSpacing.md,
                            mainAxisSpacing: AppSpacing.md,
                            childAspectRatio: 0.7,
                          ),
                      builderDelegate: PagedChildBuilderDelegate<StoryModel>(
                        noItemsFoundIndicatorBuilder: (context) => Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.dummyBook,
                                  width: 80,
                                  height: 80,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.black26,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.md),
                                Text(
                                  context.t.allStories.noStoriesFound,
                                  style: AppTextStyles.heading(
                                    16,
                                    FontWeight.w600,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        itemBuilder: (context, story, index) {
                          return StoryCard(
                            story: story,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      StoryDetailsView(story: story),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          // ─── Filter Bottom Sheet Overlay ─────────────────────────────
          if (_showFilter)
            _FilterOverlay(
              selectedCategories: _selectedCategories,
              onApply: _onCategoryFilterChanged,
              onClose: () => setState(() => _showFilter = false),
            ),
        ],
      ),
    );
  }
}

// ─── Filter Overlay ────────────────────────────────────────────────────────────

class _FilterOverlay extends HookWidget {
  const _FilterOverlay({
    required this.selectedCategories,
    required this.onApply,
    required this.onClose,
  });

  final Set<String> selectedCategories;
  final void Function(Set<String>) onApply;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final localSelected = useState<Set<String>>(Set.from(selectedCategories));

    return GestureDetector(
      onTap: onClose,
      child: Container(
        color: Colors.black45,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(AppBorderRadius.xl),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xl,
                AppSpacing.lg,
                AppSpacing.xl,
                AppSpacing.xxxl,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Drag handle
                  Center(
                    child: Container(
                      width: 52,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: AppBorderRadius.pillRadius,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // Header
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        context.t.allStories.selectFilter,
                        style: AppTextStyles.heading(
                          18,
                          FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: onClose,
                        child: SvgPicture.asset(
                          AppIcons.closeCircle,
                          width: 23,
                          height: 23,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSpacing.lg),

                  Text(
                    context.t.allStories.category,
                    style: AppTextStyles.heading(
                      14,
                      FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.t.allStories.categorySubtitle,
                    style: AppTextStyles.body(12, color: Colors.black54),
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Category Chips
                  Wrap(
                    spacing: AppSpacing.sm,
                    runSpacing: AppSpacing.sm,
                    children: _allCategories.map((cat) {
                      final isSelected = localSelected.value.contains(cat);
                      return GestureDetector(
                        onTap: () {
                          final newSet = Set<String>.from(localSelected.value);
                          if (isSelected) {
                            newSet.remove(cat);
                          } else {
                            newSet.add(cat);
                          }
                          localSelected.value = newSet;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 180),
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.lg,
                            vertical: AppSpacing.sm,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primary
                                : Colors.transparent,
                            borderRadius: AppBorderRadius.pillRadius,
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primary
                                  : Colors.black26,
                            ),
                          ),
                          child: Text(
                            _categoryLabel(context, cat),
                            style: AppTextStyles.body(
                              13,
                              weight: FontWeight.w600,
                              color: isSelected ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: AppSpacing.xl),

                  CustomButton(
                    label: context.t.allStories.apply,
                    size: CustomButtonSize.large,
                    fullWidth: true,
                    borderRadius: 18,
                    labelStyle: AppTextStyles.body(
                      24,
                      weight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: -0.05,
                    ),
                    backgroundColor: AppColors.primary,
                    shadow: [
                      BoxShadow(
                        color: AppColors.primaryShadow,
                        blurRadius: 0,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    onPressed: () => onApply(localSelected.value),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String _categoryLabel(BuildContext context, String category) {
  switch (category) {
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

String _normalizeCategoryKey(String category) {
  switch (category.toLowerCase()) {
    case 'popular':
      return 'popular';
    case 'space':
      return 'space';
    case 'magic':
      return 'magic';
    case 'animals':
      return 'animals';
    case 'detectives':
      return 'detectives';
    case 'dinosaurs':
      return 'dinosaurs';
    case 'superhero':
      return 'superhero';
    case 'underwater':
      return 'underwater';
    case 'fairytale':
    case 'fairy tale':
      return 'fairytale';
    default:
      return 'popular';
  }
}
