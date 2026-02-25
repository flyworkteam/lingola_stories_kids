import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_overlay.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';
import 'package:palette_generator/palette_generator.dart';

import 'widgets/bottom_actions_bar.dart';
import 'widgets/cover_header.dart';
import 'widgets/feedback_sheet.dart';
import 'widgets/highlightable_text.dart';
import 'widgets/rating_sheet.dart';
import 'widgets/section_title.dart';
import 'widgets/story_tag.dart';
import 'widgets/story_text_map.dart';
import 'widgets/three_dot_menu.dart';
import 'widgets/translation_sheet.dart';

// ─── Main View ────────────────────────────────────────────────────────────────

class StoryDetailsView extends HookWidget {
  const StoryDetailsView({super.key, required this.story});
  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    final isReading = useState(false);
    final isListening = useState(false);
    final showMenu = useState(false);
    final showRating = useState(false);
    final showFeedback = useState(false);
    final currentRating = useState(story.rating.round());
    final showTranslate = useState('');
    final translateWord = useState('');

    // ── Dynamic background color from cover image ─────────────────────────────
    final startColor = Colors.black;
    // Dominant color extracted from the cover image via palette_generator.
    // Falls back to startColor if no image or extraction fails.
    final dominantColor = useState<Color>(startColor);
    final dominantColorDark = useState<Color>(
      // Previously 0.55 blended to black; make it a touch lighter.
      Color.lerp(startColor, Colors.black, 0.40)!,
    );

    // ── Word-level progress tracking ──────────────────────────────────────────
    final activeWordStart = useState(-1);
    final activeWordEnd = useState(-1);
    final readUpTo = useState(
      0,
    ); // chars already read (persistently highlighted)

    final tts = useMemoized(() => FlutterTts());
    final textMap = useMemoized(() => StoryTextMap.from(story), [story.id]);

    // ── Palette extraction from cover image ──────────────────────────────────
    useEffect(() {
      final imageAsset = story.coverImageAsset;
      // palette_generator only works with raster images; skip SVGs entirely.
      if (imageAsset == null || imageAsset.toLowerCase().endsWith('.svg')) {
        return null;
      }
      PaletteGenerator.fromImageProvider(
        AssetImage(imageAsset),
        maximumColorCount: 16,
      ).then((palette) {
        final color =
            palette.dominantColor?.color ??
            palette.vibrantColor?.color ??
            palette.mutedColor?.color ??
            startColor;
        // Saturate / slightly brighten for a richer (but not too dark) background feel
        final hsl = HSLColor.fromColor(color);
        final richColor = hsl
            .withSaturation((hsl.saturation + 0.15).clamp(0.0, 1.0))
            // Previously -0.05; darkened too much. Nudge it brighter.
            .withLightness((hsl.lightness + 0.03).clamp(0.10, 0.75))
            .toColor();
        dominantColor.value = richColor;
        // Previously 0.55 blended to black; make the dark variant lighter.
        dominantColorDark.value = Color.lerp(richColor, Colors.black, 0.42)!;
      });
      return null;
    }, [story.coverImageAsset]);

    // ── TTS init ──
    useEffect(() {
      tts.setLanguage('en-US');
      tts.setSpeechRate(0.42);
      tts.setPitch(1.0);
      tts.setVolume(1.0);

      // Word-level progress callback
      tts.setProgressHandler((text, start, end, word) {
        activeWordStart.value = start;
        activeWordEnd.value = end;
        if (end > readUpTo.value) readUpTo.value = end;
      });

      tts.setCompletionHandler(() {
        activeWordStart.value = -1;
        activeWordEnd.value = -1;
        if (!isReading.value && !isListening.value) return;
        // TTS finished whole text
        isReading.value = false;
        isListening.value = false;
      });

      return () => tts.stop();
    }, [tts]);

    Future<void> startRead() async {
      isReading.value = true;
      isListening.value = false;
      readUpTo.value = 0;
      activeWordStart.value = -1;
      activeWordEnd.value = -1;
      await tts.speak(textMap.fullText);
    }

    Future<void> stopAll() async {
      isReading.value = false;
      isListening.value = false;
      activeWordStart.value = -1;
      activeWordEnd.value = -1;
      await tts.stop();
    }

    Future<void> startListen() async {
      isListening.value = true;
      isReading.value = false;
      readUpTo.value = 0;
      activeWordStart.value = -1;
      activeWordEnd.value = -1;
      await tts.speak(textMap.fullText);
    }

    final menuLink = useMemoized(() => LayerLink());
    final menuEntry = useRef<OverlayEntry?>(null);

    void hideMenu() {
      showMenu.value = false;
      menuEntry.value?.remove();
      menuEntry.value = null;
    }

    void showMenuOverlay() {
      if (showMenu.value) return;
      showMenu.value = true;

      menuEntry.value?.remove();
      menuEntry.value = OverlayEntry(
        builder: (ctx) {
          return Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: hideMenu,
              child: Stack(
                children: [
                  CompositedTransformFollower(
                    link: menuLink,
                    showWhenUnlinked: false,
                    followerAnchor: Alignment.topRight,
                    targetAnchor: Alignment.bottomRight,
                    offset: const Offset(0, 8),
                    child: Material(
                      color: Colors.transparent,
                      child: ThreeDotMenu(
                        onFeedback: () {
                          hideMenu();
                          showRating.value = false;
                          showFeedback.value = true;
                        },
                        onRating: () {
                          hideMenu();
                          showFeedback.value = false;
                          showRating.value = true;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

      Overlay.of(context, rootOverlay: true).insert(menuEntry.value!);
    }

    void toggleMenu() {
      if (showMenu.value) {
        hideMenu();
      } else {
        showMenuOverlay();
      }
    }

    useEffect(() {
      return () {
        menuEntry.value?.remove();
        menuEntry.value = null;
      };
    }, const []);

    return Scaffold(
      backgroundColor: dominantColorDark.value,
      body: Stack(
        children: [
          // ── Animated background ──
          AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(color: dominantColorDark.value),
            constraints: const BoxConstraints.expand(),
          ),

          // Header stays behind the sheet
          CoverHeader(
            startColor: dominantColor.value,
            endColor: dominantColorDark.value,
            coverImageAsset: story.coverImageAsset,
            height: 360,
            onBack: () => Navigator.pop(context),
            onMenuTap: () => showMenu.value = !showMenu.value,
          ),

          // ── Draggable bottom sheet content ──
          DraggableScrollableSheet(
            initialChildSize: 0.62,
            minChildSize: 0.50,
            maxChildSize: 0.94,
            snap: true,
            snapSizes: const [0.62, 0.94],
            builder: (context, scrollController) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: dominantColorDark.value,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppBorderRadius.xl),
                  ),
                ),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          AppSpacing.xl,
                          AppSpacing.lg,
                          AppSpacing.xl,
                          AppSpacing.sm,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // drag handle
                            Center(
                              child: Container(
                                width: 44,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: AppBorderRadius.pillRadius,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSpacing.lg),

                            // Title + actions (bookmark + 3-dot)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    story.title.replaceAll('\n', ' '),
                                    style: AppTextStyles.heading(
                                      24,
                                      FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: AppSpacing.md),

                                // 3 dot menu trigger + inline menu
                                CompositedTransformTarget(
                                  link: menuLink,
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: toggleMenu,
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withValues(
                                          alpha: 0.08,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.more_vert_rounded,
                                          color: Colors.white70,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: AppSpacing.md),

                            // Tags
                            Wrap(
                              spacing: AppSpacing.sm,
                              runSpacing: AppSpacing.xs,
                              children: story.tags
                                  .map((t) => StoryTag(label: t))
                                  .toList(),
                            ),

                            const SizedBox(height: AppSpacing.xl),

                            // Introduction
                            const SectionTitle(text: 'Introduction'),
                            const SizedBox(height: AppSpacing.sm),
                            HighlightableText(
                              text: story.introduction,
                              globalOffset: textMap.introOffset,
                              activeWordStart: activeWordStart.value,
                              activeWordEnd: activeWordEnd.value,
                              readUpTo: readUpTo.value,
                              isReadingMode: isReading.value,
                              onTranslate: (w) {
                                translateWord.value = w;
                                showTranslate.value = w;
                              },
                              onSave: (w) {
                                CustomOverlay.show(
                                  context,
                                  title: context.t.storyDetails.saved,
                                  message:
                                      context.t.storyDetails.wordAddedToLibrary,
                                  icon: AppIcons.successToast,
                                  type: OverlayType.success,
                                );
                              },
                              onSpeak: (w) => tts.speak(w),
                            ),

                            // Sections
                            ...story.sections.asMap().entries.map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(
                                  top: AppSpacing.xl,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SectionTitle(text: e.value.title),
                                    const SizedBox(height: AppSpacing.sm),
                                    HighlightableText(
                                      text: e.value.content,
                                      globalOffset:
                                          textMap.sectionOffsets[e.key]!,
                                      activeWordStart: activeWordStart.value,
                                      activeWordEnd: activeWordEnd.value,
                                      readUpTo: readUpTo.value,
                                      isReadingMode: isReading.value,
                                      onTranslate: (w) {
                                        translateWord.value = w;
                                        showTranslate.value = w;
                                      },
                                      onSave: (w) {
                                        CustomOverlay.show(
                                          context,
                                          title: 'Saved',
                                          message:
                                              'The word has been added to the library. Undo',
                                          icon: AppIcons.successToast,
                                          type: OverlayType.success,
                                        );
                                      },
                                      onSpeak: (w) => tts.speak(w),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 140),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

          // ── Bottom bar ──
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomActionsBar(
              isReading: isReading.value,
              isListening: isListening.value,
              onStartStop: () => isReading.value ? stopAll() : startRead(),
              onListen: () => isListening.value ? stopAll() : startListen(),
              backgroundColor: dominantColorDark.value,
            ),
          ),

          // ── Rating ──
          if (showRating.value)
            RatingSheet(
              initialRating: currentRating.value,
              onClose: () => showRating.value = false,
              onSend: (r) {
                currentRating.value = r;
                showRating.value = false;
                CustomOverlay.show(
                  context,
                  title: context.t.storyDetails.successfully,
                  message: context.t.storyDetails.ratingSubmitted,
                  icon: AppIcons.successToast,
                  type: OverlayType.success,
                );
              },
            ),

          // ── Feedback ──
          if (showFeedback.value)
            FeedbackSheet(
              onClose: () => showFeedback.value = false,
              onSend: (subject, msg) {
                showFeedback.value = false;
                if (subject.isEmpty || msg.isEmpty) {
                  CustomOverlay.show(
                    context,
                    title: context.t.storyDetails.warning,
                    message: context.t.storyDetails.fillAllFields,
                    icon: AppIcons.warning,
                    type: OverlayType.error,
                  );
                } else {
                  CustomOverlay.show(
                    context,
                    title: context.t.storyDetails.successfully,
                    message: context.t.storyDetails.messageSent,
                    icon: AppIcons.successToast,
                    type: OverlayType.success,
                  );
                }
              },
            ),

          // ── Translation ──
          if (showTranslate.value.isNotEmpty)
            TranslationSheet(
              word: translateWord.value,
              onClose: () => showTranslate.value = '',
              onSpeak: () => tts.speak(translateWord.value),
              onSave: () {
                showTranslate.value = '';
                CustomOverlay.show(
                  context,
                  title: context.t.storyDetails.saved,
                  message: context.t.storyDetails.wordAddedToLibrary,
                  icon: AppIcons.successToast,
                  type: OverlayType.success,
                );
              },
            ),
        ],
      ),
    );
  }
}
