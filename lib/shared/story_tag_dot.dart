import 'package:flutter/material.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

/// Küçük renkli nokta + etiket metni.
/// HomeView, StoriesView ve AllStoriesView'de ortak kullanılır.
class StoryTagDot extends StatelessWidget {
  const StoryTagDot({super.key, required this.tag, this.size = 10});

  final String tag;

  /// Hem dot boyutunu (size-4) hem de font boyutunu belirler.
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size - 4,
          height: size - 4,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 3),
        Text(tag, style: AppTextStyles.body(size, color: Colors.white70)),
      ],
    );
  }
}
