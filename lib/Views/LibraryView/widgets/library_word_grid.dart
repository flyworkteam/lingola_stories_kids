import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Controllers/library_controller.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_word_card.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class LibraryWordGrid extends ConsumerWidget {
  const LibraryWordGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(libraryProvider);
    final notifier = ref.read(libraryProvider.notifier);
    final words = state.filteredWords;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.t.library.allWords,
                style: AppTextStyles.heading(
                  22,
                  FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                context.t.library.wordCount(count: state.totalWords),
                style: AppTextStyles.body(13, color: Colors.black45),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
        if (words.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.xl,
              vertical: AppSpacing.xxl,
            ),
            child: Center(
              child: Text(
                state.searchQuery.isNotEmpty
                    ? 'No results found'
                    : 'No words saved yet',
                style: AppTextStyles.body(
                  14,
                  color: AppColors.black.withValues(alpha: 0.4),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.xl,
              0,
              AppSpacing.xl,
              0,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: words.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: AppSpacing.md,
                mainAxisSpacing: AppSpacing.md,
                childAspectRatio: 1.7,
              ),
              itemBuilder: (context, index) {
                final entry = words[index];
                return LibraryWordCard(
                  word: entry.word,
                  translation: entry.translation,
                  isTranslating: entry.isTranslating,
                  isSpeaking: state.speakingWord == entry.word,
                  onSpeakTap: () => notifier.speakWord(entry.word),
                );
              },
            ),
          ),
      ],
    );
  }
}
