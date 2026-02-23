import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class _StoryCategory {
  final String asset;
  final String label;

  const _StoryCategory({required this.asset, required this.label});
}

class Step2 extends HookWidget {
  const Step2({super.key, this.onCategoriesSelected});

  final ValueChanged<List<String>>? onCategoriesSelected;

  @override
  Widget build(BuildContext context) {
    final selected = useState<Set<String>>({});
    const List<_StoryCategory> categories = [
      _StoryCategory(asset: AppIcons.space, label: '🚀 Space Adventures'),
      _StoryCategory(asset: AppIcons.magic, label: '🦄 Magical Worlds'),
      _StoryCategory(
        asset: AppIcons.detectives,
        label: '🕵️ Little Detectives',
      ),
      _StoryCategory(asset: AppIcons.animals, label: '🐾 Lovable Friends'),
      _StoryCategory(
        asset: AppIcons.dinosaurs,
        label: '🦖 The Age of Dinosaurs',
      ),
      _StoryCategory(asset: AppIcons.superhero, label: '🦸 Superheroes'),
      _StoryCategory(
        asset: AppIcons.underwater,
        label: '🌊 Underwater Kingdom',
      ),
      _StoryCategory(
        asset: AppIcons.fairytale,
        label: '🏰 Prince and Princess Fairy Tales',
      ),
    ];
    void toggle(String label) {
      final next = Set<String>.from(selected.value);
      if (next.contains(label)) {
        next.remove(label);
      } else {
        next.add(label);
      }
      selected.value = next;
      onCategoriesSelected?.call(next.toList());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: AppSpacing.xl),
        Text(
          'What kind of stories\ndo you like?',
          textAlign: TextAlign.center,
          style: AppTextStyles.body(
            24,
            weight: FontWeight.w700,
            height: 30 / 24,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'Please indicate your preference.',
          textAlign: TextAlign.center,
          style: AppTextStyles.body(
            20,
            weight: FontWeight.w300,
            height: 25 / 20,
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final itemWidth = 159.0;
              const itemHeight = 51.0;
              return SingleChildScrollView(
                child: Wrap(
                  spacing: AppSpacing.sm,
                  runSpacing: AppSpacing.sm,
                  alignment: WrapAlignment.center,
                  children: categories.map((cat) {
                    final isSelected = selected.value.contains(cat.label);
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _CategoryTile(
                          category: cat,
                          isSelected: isSelected,
                          onTap: () => toggle(cat.label),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CategoryTile extends StatelessWidget {
  const _CategoryTile({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final _StoryCategory category;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.secondary,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppColors.primaryShadow,
                blurRadius: 4,
                offset: const Offset(0, 0),
              ),
          ],
        ),
        child: Center(
          child: Text(
            category.label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyles.body(15),
          ),
        ),
      ),
    );
  }
}
