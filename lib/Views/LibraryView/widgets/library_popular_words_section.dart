import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Models/word_model.dart';
import 'package:lingolakidstories/Riverpod/Controllers/library_controller.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class LibraryPopularWordsSection extends ConsumerWidget {
  const LibraryPopularWordsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(libraryProvider);
    final notifier = ref.read(libraryProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: Text(
            'Popular Words',
            style: AppTextStyles.heading(
              22,
              FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            itemCount: state.popularWords.length,
            separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.md),
            itemBuilder: (context, index) {
              final item = state.popularWords[index];
              return _PopularWordCard(
                item: item,
                isSpeaking: state.speakingWord == item.word,
                onSpeakTap: () => notifier.speakWord(item.word),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _PopularWordCard extends StatelessWidget {
  const _PopularWordCard({
    required this.item,
    required this.isSpeaking,
    required this.onSpeakTap,
  });

  final WordModel item;
  final bool isSpeaking;
  final VoidCallback onSpeakTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppBorderRadius.lgRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.word,
                  style: AppTextStyles.heading(
                    15,
                    FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                item.isTranslating
                    ? Container(
                        width: 80,
                        height: 11,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      )
                    : Text(
                        item.translation ?? item.word,
                        style: AppTextStyles.body(12, color: Colors.black54),
                        overflow: TextOverflow.ellipsis,
                      ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          GestureDetector(
            onTap: onSpeakTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: isSpeaking ? AppColors.primaryShadow : AppColors.primary,
                shape: BoxShape.circle,
                boxShadow: isSpeaking
                    ? [
                        BoxShadow(
                          color: AppColors.primary.withValues(alpha: 0.45),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ]
                    : [],
              ),
              child: Center(
                child: SvgPicture.asset(
                  isSpeaking ? AppIcons.stop : AppIcons.speaker,
                  width: 18,
                  height: 18,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
