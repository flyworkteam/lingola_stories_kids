import 'package:flutter/material.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/shared/story_tag_dot.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

/// Yatay kaydırmalı listede kullanılan büyük gradient hikaye kartı (genişlik: 180).
/// coverImageAsset: PNG veya WebP asset yolu. null ise gradient gösterilir.
class StoryCardLarge extends StatelessWidget {
  const StoryCardLarge({
    super.key,
    required this.story,
    required this.onTap,
    this.tagSize = 10,
    this.titleSize = 13,
    this.gradientBegin = Alignment.topLeft,
    this.gradientEnd = Alignment.bottomRight,
  });

  final StoryModel story;
  final VoidCallback onTap;
  final double tagSize;
  final double titleSize;
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradientEnd;

  @override
  Widget build(BuildContext context) {
    final startColor = Color(
      int.parse(story.coverGradientStart.replaceFirst('0x', ''), radix: 16),
    );
    final endColor = Color(
      int.parse(story.coverGradientEnd.replaceFirst('0x', ''), radix: 16),
    );

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: AppBorderRadius.lgRadius,
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [startColor, endColor],
              begin: gradientBegin,
              end: gradientEnd,
            ),
            image: story.coverImageAsset != null
                ? DecorationImage(
                    image: AssetImage(story.coverImageAsset!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black54],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      story.title,
                      style: AppTextStyles.heading(
                        titleSize,
                        FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Wrap(
                      spacing: AppSpacing.xs,
                      children: story.tags
                          .map((tag) => StoryTagDot(tag: tag, size: tagSize))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
