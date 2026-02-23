import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Controllers/library_controller.dart';
import 'package:lingolakidstories/Views/LibraryView/widgets/library_word_card.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class LibraryWordGrid extends ConsumerWidget {
  const LibraryWordGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(libraryProvider);
    final notifier = ref.read(libraryProvider.notifier);
    final words = state.allWords;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Words',
                style: AppTextStyles.heading(
                  22,
                  FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '${words.length * 150} Words',
                style: AppTextStyles.body(13, color: Colors.black45),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: words.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.md,
              mainAxisSpacing: AppSpacing.md,
              childAspectRatio: 1.1,
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
