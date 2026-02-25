import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
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
    List<_StoryCategory> categories = [
      _StoryCategory(
        asset: AppIcons.space,
        label: context.t.onboarding.step2.categories.space,
      ),
      _StoryCategory(
        asset: AppIcons.magic,
        label: context.t.onboarding.step2.categories.magic,
      ),
      _StoryCategory(
        asset: AppIcons.detectives,
        label: context.t.onboarding.step2.categories.detectives,
      ),
      _StoryCategory(
        asset: AppIcons.animals,
        label: context.t.onboarding.step2.categories.animals,
      ),
      _StoryCategory(
        asset: AppIcons.dinosaurs,
        label: context.t.onboarding.step2.categories.dinosaurs,
      ),
      _StoryCategory(
        asset: AppIcons.superhero,
        label: context.t.onboarding.step2.categories.superhero,
      ),
      _StoryCategory(
        asset: AppIcons.underwater,
        label: context.t.onboarding.step2.categories.underwater,
      ),
      _StoryCategory(
        asset: AppIcons.fairytale,
        label: context.t.onboarding.step2.categories.fairytale,
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
          context.t.onboarding.step2.title,
          textAlign: TextAlign.center,
          style: AppTextStyles.body(
            24,
            weight: FontWeight.w700,
            height: 30,
            letterSpacing: -0.05,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          context.t.onboarding.step2.subtitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.body(
            20,
            weight: FontWeight.w300,
            height: 25,
            letterSpacing: -0.05,
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        const SizedBox(height: AppSpacing.xxl),
        const SizedBox(height: AppSpacing.xxl),
        Wrap(
          spacing: AppSpacing.md,
          runSpacing: AppSpacing.md,
          alignment: WrapAlignment.center,
          children: categories.map((cat) {
            final isSelected = selected.value.contains(cat.label);
            return SizedBox(
              width: 150,
              height: 50,
              child: _CategoryTile(
                category: cat,
                isSelected: isSelected,
                onTap: () => toggle(cat.label),
              ),
            );
          }).toList(),
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
          child: SizedBox(
            width: 150,
            child: Text(
              category.label,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTextStyles.body(
                17,
                weight: FontWeight.w400,
                height: 18,
                letterSpacing: -0.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
