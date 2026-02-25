import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Views/StoryDetailsView/story_details_view.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/shared/story_card.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class AllStoriesView extends HookWidget {
  const AllStoriesView({super.key, this.initialCategory = 'Popular'});

  final String initialCategory;

  @override
  Widget build(BuildContext context) {
    final selectedCategories = useState<Set<String>>({});
    final showFilter = useState(false);

    final displayedStories = useMemoized(() {
      if (selectedCategories.value.isEmpty) return StoryData.all;
      return StoryData.all
          .where(
            (s) => s.categories.any(
              (c) => selectedCategories.value.any(
                (sel) => sel.toLowerCase() == c.toLowerCase(),
              ),
            ),
          )
          .toList();
    }, [selectedCategories.value]);

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
                    onTap: () => showFilter.value = true,
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
                          if (selectedCategories.value.isNotEmpty)
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

              // ─── Story Grid ───────────────────────────────────────────
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.xl,
                  AppSpacing.md,
                  AppSpacing.xl,
                  120,
                ),
                sliver: displayedStories.isEmpty
                    ? SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.dummyBook,
                                  width: 80,
                                  height: 80,
                                  colorFilter: ColorFilter.mode(
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
                      )
                    : SliverGrid.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: AppSpacing.md,
                              mainAxisSpacing: AppSpacing.md,
                              childAspectRatio: 0.7,
                            ),
                        itemCount: displayedStories.length,
                        itemBuilder: (context, index) {
                          final story = displayedStories[index];
                          return StoryCard(
                            story: story,
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      StoryDetailsView(story: story),
                                ),
                              ),
                            },
                          );
                        },
                      ),
              ),
            ],
          ),

          // ─── Filter Bottom Sheet Overlay ─────────────────────────────
          if (showFilter.value)
            _FilterOverlay(
              selectedCategories: selectedCategories.value,
              onApply: (cats) {
                selectedCategories.value = cats;
                showFilter.value = false;
              },
              onClose: () => showFilter.value = false,
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

    final allFilterCategories = StoryData.categories.toList();

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
                      Spacer(),
                      Text(
                        context.t.allStories.selectFilter,
                        style: AppTextStyles.heading(
                          18,
                          FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
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
                    children: allFilterCategories.map((cat) {
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
                            cat,
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
