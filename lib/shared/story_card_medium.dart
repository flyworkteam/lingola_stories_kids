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
      child: SizedBox(
        width: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: AppBorderRadius.mdRadius,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [startColor, endColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: story.coverImageAsset != null
                        ? DecorationImage(
                            image: AssetImage(story.coverImageAsset!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              story.title.replaceAll('\n', ' '),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.body(
                11,
                weight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
