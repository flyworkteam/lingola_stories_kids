import 'package:flutter/material.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/shared/story_tag_dot.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

/// Gradient arka planlı kart — hikaye grid'i, tüm hikayeler sayfası ve
/// geçmiş bölümünde ortak kullanılır.
///
/// [aspectRatio] verilirse [AspectRatio] ile sarmalanır (HomeView history),
/// aksi hâlde kartı saran parent boyutu kullanılır.
///
/// coverImageAsset: PNG veya WebP asset yolu. null ise gradient gösterilir.
class StoryGradientCard extends StatelessWidget {
  const StoryGradientCard({
    super.key,
    required this.story,
    required this.onTap,
    this.tagSize = 9,
    this.titleSize = 12,
    this.aspectRatio,
    this.showShadow = false,
    this.gradientBegin = Alignment.topCenter,
    this.gradientEnd = Alignment.bottomCenter,
  });

  final StoryModel story;
  final VoidCallback onTap;
  final double tagSize;
  final double titleSize;
  final double? aspectRatio;
  final bool showShadow;
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

    Widget card = GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: AppBorderRadius.lgRadius,
        child: Container(
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
            boxShadow: showShadow
                ? [
                    BoxShadow(
                      color: startColor.withValues(alpha: 0.4),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Dark overlay for text contrast
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black54],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              // Title + tags
              Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      story.title.replaceAll('\n', ' '),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.heading(
                        titleSize,
                        FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Wrap(
                      spacing: AppSpacing.xs,
                      runSpacing: 2,
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

    if (aspectRatio != null) {
      return AspectRatio(aspectRatio: aspectRatio!, child: card);
    }
    return card;
  }
}
