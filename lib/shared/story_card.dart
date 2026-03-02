import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/shared/story_tag_dot.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
    required this.story,
    required this.onTap,
    this.tagSize = 12,
    this.titleSize = 16,
    this.aspectRatio,
  });

  final StoryModel story;
  final VoidCallback onTap;
  final double tagSize;
  final double titleSize;
  final double? aspectRatio;

  /// Default height for using [StoryCard] inside a horizontal list.
  ///
  /// A horizontal [ListView] inside a sliver needs a bounded height;
  /// keep the value centralized to avoid magic numbers in screens.
  static const double horizontalListHeight = 260;

  static const double _radius = 18;
  static const double _overlayRadius = 16;
  static const double _overlayHeight = 75;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final String title = story.title.trim();

    // Tags shown in the overlay (matches the design: 1 line of small tags under title)
    final List<String> tags = <String>[
      ...story.tags,
    ].map((e) => e.trim()).where((e) => e.isNotEmpty).toSet().toList();

    // Cover image in this app is a local asset.
    final String? imageAsset = story.coverImageAsset?.trim();

    /// Use a high-quality render path to avoid blurry scaled assets
    /// in horizontally scrolling lists.
    const FilterQuality filterQuality = FilterQuality.high;

    final dpr = MediaQuery.devicePixelRatioOf(context);
    // Card width is determined by parent; approximate a good decode width.
    // With aspectRatio ~0.8 and horizontalListHeight 260 => width ~208 logical.
    final int targetDecodeWidth = (220 * dpr).round().clamp(256, 1024);

    final Widget image = (imageAsset == null || imageAsset.isEmpty)
        ? Container(
            color: theme.colorScheme.surfaceContainerHighest,
            alignment: Alignment.center,
            child: Icon(
              Icons.auto_stories,
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              size: 28,
            ),
          )
        : Image(
            image: ResizeImage(
              AssetImage(imageAsset),
              width: targetDecodeWidth,
              policy: ResizeImagePolicy.exact,
            ),
            // cover prevents odd scaling that can look blurry in a clipped card
            fit: BoxFit.cover,
            filterQuality: filterQuality,
            isAntiAlias: true,
            errorBuilder: (_, _, _) => Container(
              color: theme.colorScheme.surfaceContainerHighest,
              alignment: Alignment.center,
              child: Icon(
                Icons.broken_image_outlined,
                color: theme.colorScheme.onSurfaceVariant.withValues(
                  alpha: 0.6,
                ),
                size: 28,
              ),
            ),
          );

    return AspectRatio(
      // Default card shape: a bit taller and narrower.
      aspectRatio: aspectRatio ?? 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background image
                Positioned.fill(child: image),

                // Bottom frosted overlay with blur + translucent fill
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(_overlayRadius),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                      child: Container(
                        width: double.infinity,
                        height: _overlayHeight,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.50),
                          borderRadius: BorderRadius.circular(_overlayRadius),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.10),
                            width: 1,
                          ),
                        ),
                        child: _OverlayContent(
                          title: title,
                          tags: tags,
                          titleSize: titleSize,
                          tagSize: tagSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OverlayContent extends StatelessWidget {
  const _OverlayContent({
    required this.title,
    required this.tags,
    required this.titleSize,
    required this.tagSize,
  });

  final String title;
  final List<String> tags;
  final double titleSize;
  final double tagSize;

  @override
  Widget build(BuildContext context) {
    final titleStyle = AppTextStyles.body(
      titleSize,
      color: Colors.white,
      weight: FontWeight.w600,
      height: titleSize - 1,
      letterSpacing: -0.05,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: titleStyle,
          ),
        if (tags.isNotEmpty) ...[
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: [
              for (final t in tags.take(3)) StoryTagDot(tag: t, size: tagSize),
            ],
          ),
        ],
      ],
    );
  }
}
