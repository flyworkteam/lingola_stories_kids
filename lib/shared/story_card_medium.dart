import 'package:flutter/material.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

/// Orta boy hikaye kartı — yatay kaydırmalı "Önerilen" listesinde kullanılır.
/// coverImageAsset: PNG veya WebP asset yolu. null ise gradient gösterilir.
class StoryCardMedium extends StatelessWidget {
  const StoryCardMedium({super.key, required this.story, required this.onTap});

  final StoryModel story;
  final VoidCallback onTap;

  static const double _thumbSize = 110; // logical px (SizedBox width)

  @override
  Widget build(BuildContext context) {
    final asset = story.coverImageAsset?.trim();

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: _thumbSize,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kapak görselinin boyutu sabit kalsın ve kare (1:1) kalsın
            ClipRRect(
              borderRadius: AppBorderRadius.mdRadius,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: (asset == null || asset.isEmpty)
                    ? Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFEEF2FF), Color(0xFFDDE7FF)],
                          ),
                        ),
                      )
                    : Image(
                        image: ResizeImage(
                          AssetImage(asset),
                          // Decode near the needed size to prevent runtime downscale blur.
                          // 256 keeps it sharp on most DPRs while staying lightweight.
                          width: 256,
                        ),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                        isAntiAlias: true,
                      ),
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              story.title.replaceAll('\n', ' '),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.body(
                14,
                weight: FontWeight.w600,
                height: 13,
                letterSpacing: -0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
