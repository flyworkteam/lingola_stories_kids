import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/Riverpod/Controllers/library_controller.dart';
import 'package:lingolakidstories/Riverpod/Controllers/story_controller.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/story_audio_service.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_overlay.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';
import 'package:lingolakidstories/utils/print.dart';
import 'package:palette_generator/palette_generator.dart';

import 'widgets/bottom_actions_bar.dart';
import 'widgets/cover_header.dart';
import 'widgets/feedback_sheet.dart';
import 'widgets/highlightable_text.dart';
import 'widgets/rating_sheet.dart';
import 'widgets/story_tag.dart';
import 'widgets/story_text_map.dart';
import 'widgets/three_dot_menu.dart';

// ─── Main View ────────────────────────────────────────────────────────────────

class StoryDetailsView extends HookConsumerWidget {
  const StoryDetailsView({super.key, required this.story});
  final StoryModel story;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storyNotifier = ref.read(storyProvider.notifier);
    final isReading = useState(false);
    final isListening = useState(false);
    final showMenu = useState(false);
    final showRating = useState(false);
    final showFeedback = useState(false);
    final currentRating = useState(4);

    // ── Story with sections loaded from backend ───────────────────────────────
    final loadedStory = useState<StoryModel>(story);
    final sectionsLoaded = useState(false);

    // ── ElevenLabs audio service ──────────────────────────────────────────────
    final audioService = useMemoized(() => StoryAudioService(), const []);
    useEffect(() => audioService.dispose, const []);

    // ── Word-level highlight from audio timestamps ───────────────────────────
    final currentWordState = useState<WordHighlightState?>(null);

    useEffect(() {
      void listener() {
        currentWordState.value = audioService.currentWord.value;
      }

      audioService.currentWord.addListener(listener);
      return () => audioService.currentWord.removeListener(listener);
    }, [audioService]);

    // Sync isReading/isListening with audio service
    useEffect(() {
      void listener() {
        final playing = audioService.isPlaying.value;
        if (!playing) {
          isReading.value = false;
          isListening.value = false;
        }
      }

      audioService.isPlaying.addListener(listener);
      return () => audioService.isPlaying.removeListener(listener);
    }, [audioService]);

    final savedSectionIndex = useState(0);
    final savedAudioPos = useState<Duration?>(null);
    final manualProgressSet = useState(false);
    final forceStartFromSavedProgress = useState(false);

    // ── Word-level progress tracking (fallback TTS for single-word speak) ────
    final activeWordStart = useState(-1);
    final activeWordEnd = useState(-1);
    final readUpTo = useState(0);

    final tts = useMemoized(() => FlutterTts());
    final textMap = useMemoized(() => StoryTextMap.from(loadedStory.value), [
      loadedStory.value.sections.length,
    ]);

    int resolveSectionStartOffset({
      required StoryModel storyData,
      required int sectionIndex,
    }) {
      if (storyData.sections.isEmpty) return 0;
      final int safeSection = sectionIndex.clamp(
        0,
        storyData.sections.length - 1,
      );
      int offset = storyData.introduction.length + 1;
      for (int i = 0; i < safeSection; i++) {
        offset += storyData.sections[i].content.length + 1;
      }
      return offset;
    }

    int resolveReadUpToForPosition({
      required StoryModel storyData,
      required int sectionIndex,
      required Duration? position,
    }) {
      if (storyData.sections.isEmpty) return 0;

      final int safeSection = sectionIndex.clamp(
        0,
        storyData.sections.length - 1,
      );
      int sectionReadUpTo = resolveSectionStartOffset(
        storyData: storyData,
        sectionIndex: safeSection,
      );
      final section = storyData.sections[safeSection];
      final double posSeconds = (position?.inMilliseconds ?? 0) / 1000.0;

      if (posSeconds <= 0) {
        return sectionReadUpTo;
      }

      final timestamps = section.wordTimestamps;
      if (timestamps == null || timestamps.startTimes.isEmpty) {
        return sectionReadUpTo;
      }

      int? activeWordIndex;
      for (int i = 0; i < timestamps.startTimes.length; i++) {
        if (posSeconds >= timestamps.startTimes[i]) {
          activeWordIndex = i;
        } else {
          break;
        }
      }

      if (activeWordIndex == null) {
        return sectionReadUpTo;
      }

      final matches = RegExp(r'\S+').allMatches(section.content).toList();
      if (matches.isEmpty) {
        return sectionReadUpTo;
      }

      final int safeWordIndex = activeWordIndex.clamp(0, matches.length - 1);
      sectionReadUpTo += matches[safeWordIndex].end;
      return sectionReadUpTo;
    }

    Future<void> refreshProgressFromBackend({
      required StoryModel storyData,
    }) async {
      final progress = await storyNotifier.getStoryProgress(story.id);
      if (progress == null) return;

      final isCompleted =
          progress['is_completed'] == 1 || progress['is_completed'] == true;
      if (isCompleted) return;

      final int page = progress['current_page'] ?? 0;
      final rawPos = progress['audio_position'];
      final double pos = rawPos is String
          ? double.tryParse(rawPos) ?? 0.0
          : (rawPos as num?)?.toDouble() ?? 0.0;

      savedSectionIndex.value = page;
      savedAudioPos.value = pos > 0
          ? Duration(milliseconds: (pos * 1000).toInt())
          : null;
      readUpTo.value = resolveReadUpToForPosition(
        storyData: storyData,
        sectionIndex: savedSectionIndex.value,
        position: savedAudioPos.value,
      );
      forceStartFromSavedProgress.value = true;
    }

    // ── Load sections from backend ───────────────────────────────────────────
    useEffect(() {
      bool mounted = true;

      Future<void> initStory() async {
        try {
          StoryModel fullStory = story;
          if (story.sections.isEmpty) {
            fullStory = await storyNotifier.loadStorySections(story);
          }
          if (!mounted) return;
          loadedStory.value = fullStory;
          sectionsLoaded.value = true;
          audioService.loadSections(fullStory.sections);

          final progress = await storyNotifier.getStoryProgress(story.id);
          if (progress != null && mounted) {
            final isCompleted =
                progress['is_completed'] == 1 ||
                progress['is_completed'] == true;
            if (!isCompleted) {
              final int page = progress['current_page'] ?? 0;
              final rawPos = progress['audio_position'];
              final double pos = rawPos is String
                  ? double.tryParse(rawPos) ?? 0.0
                  : (rawPos as num?)?.toDouble() ?? 0.0;

              savedSectionIndex.value = page;
              if (pos > 0) {
                savedAudioPos.value = Duration(
                  milliseconds: (pos * 1000).toInt(),
                );
              }

              readUpTo.value = resolveReadUpToForPosition(
                storyData: fullStory,
                sectionIndex: savedSectionIndex.value,
                position: savedAudioPos.value,
              );
            }
          }
        } catch (e) {
          Print.error('Failed to init story: $e');
        }
      }

      initStory();

      return () {
        mounted = false;
        if (loadedStory.value.sections.isNotEmpty) {
          int secIdx = audioService.currentSectionIndex.value;
          double pos = audioService.audioPosition.inMilliseconds / 1000.0;
          bool hasPlayed = pos > 0 || secIdx > 0;

          if (!hasPlayed || manualProgressSet.value) {
            secIdx = savedSectionIndex.value;
            pos = (savedAudioPos.value?.inMilliseconds ?? 0) / 1000.0;
          }

          final isCompleted = secIdx >= loadedStory.value.sections.length;
          if (isCompleted) {
            secIdx = loadedStory.value.sections.length - 1;
          }

          storyNotifier.saveStoryProgress(
            storyId: story.id,
            currentPage: secIdx,
            audioPosition: pos,
            isCompleted: isCompleted,
          );
        }
      };
    }, [story.id]);

    // ── Dynamic background color from cover image ─────────────────────────────
    final startColor = Colors.black;
    final dominantColor = useState<Color>(startColor);
    final dominantColorDark = useState<Color>(
      Color.lerp(startColor, Colors.black, 0.40)!,
    );

    // ── Palette extraction from cover image ──────────────────────────────────
    useEffect(() {
      ImageProvider? provider;
      final imageUrl = story.coverImageUrl;
      final imageAsset = story.coverImageAsset;

      if (imageUrl != null && imageUrl.isNotEmpty) {
        provider = NetworkImage(imageUrl);
      } else if (imageAsset != null &&
          !imageAsset.toLowerCase().endsWith('.svg')) {
        provider = AssetImage(imageAsset);
      }

      if (provider == null) return null;

      PaletteGenerator.fromImageProvider(provider, maximumColorCount: 16).then((
        palette,
      ) {
        final color =
            palette.dominantColor?.color ??
            palette.vibrantColor?.color ??
            palette.mutedColor?.color ??
            startColor;
        final hsl = HSLColor.fromColor(color);
        final richColor = hsl
            .withSaturation((hsl.saturation + 0.15).clamp(0.0, 1.0))
            .withLightness((hsl.lightness + 0.03).clamp(0.10, 0.75))
            .toColor();
        dominantColor.value = richColor;
        dominantColorDark.value = Color.lerp(richColor, Colors.black, 0.42)!;
      });
      return null;
    }, [story.coverImageUrl, story.coverImageAsset]);

    // ── TTS init (only used for single word speak, not story playback) ──
    useEffect(() {
      tts.setLanguage('en-US');
      tts.setSpeechRate(0.42);
      tts.setPitch(1.0);
      tts.setVolume(1.0);
      return () => tts.stop();
    }, [tts]);

    // ── Bridge: convert audio word-index to character offsets ──────────────
    useEffect(() {
      final ws = currentWordState.value;
      if (ws == null || !sectionsLoaded.value) {
        return null;
      }

      final currentStory = loadedStory.value;
      int charOffset = 0;
      final introLen = currentStory.introduction.length;

      if (ws.sectionIndex < 0 ||
          ws.sectionIndex >= currentStory.sections.length) {
        return null;
      }

      // Offset past introduction + space
      charOffset = introLen + 1;

      // Offset past previous sections
      for (int i = 0; i < ws.sectionIndex; i++) {
        charOffset += currentStory.sections[i].content.length + 1;
      }

      // Find the word position within the section content
      final sectionContent = currentStory.sections[ws.sectionIndex].content;
      final wordRe = RegExp(r'\S+');
      final matches = wordRe.allMatches(sectionContent).toList();

      if (ws.wordIndex < matches.length) {
        final match = matches[ws.wordIndex];
        final globalStart = charOffset + match.start;
        final globalEnd = charOffset + match.end;

        activeWordStart.value = globalStart;
        activeWordEnd.value = globalEnd;
        if (globalEnd > readUpTo.value) {
          readUpTo.value = globalEnd;
        }
      }

      return null;
    }, [currentWordState.value, sectionsLoaded.value]);

    // ── ElevenLabs audio controls ────────────────────────────────────────────
    Future<void> startRead() async {
      isReading.value = true;
      isListening.value = false;
      if (forceStartFromSavedProgress.value) {
        await audioService.stop();
        forceStartFromSavedProgress.value = false;
        await audioService.play(
          fromSection: savedSectionIndex.value,
          position: savedAudioPos.value,
        );
      } else if (audioService.audioPosition.inMilliseconds > 0) {
        await audioService.resume();
      } else {
        readUpTo.value = 0;
        activeWordStart.value = -1;
        activeWordEnd.value = -1;
        await audioService.play(
          fromSection: savedSectionIndex.value,
          position: savedAudioPos.value,
        );
        savedSectionIndex.value = 0;
        savedAudioPos.value = null;
      }
    }

    Future<void> pauseAudio() async {
      isReading.value = false;
      isListening.value = false;
      await audioService.pause();
    }

    Future<void> startListen() async {
      isListening.value = true;
      isReading.value = false;
      if (forceStartFromSavedProgress.value) {
        await audioService.stop();
        forceStartFromSavedProgress.value = false;
        await audioService.play(
          fromSection: savedSectionIndex.value,
          position: savedAudioPos.value,
        );
      } else if (audioService.audioPosition.inMilliseconds > 0) {
        await audioService.resume();
      } else {
        readUpTo.value = 0;
        activeWordStart.value = -1;
        activeWordEnd.value = -1;
        await audioService.play(
          fromSection: savedSectionIndex.value,
          position: savedAudioPos.value,
        );
        savedSectionIndex.value = 0;
        savedAudioPos.value = null;
      }
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

    // ── Shared gradient (whole page) ─────────────────────────────────────────
    final pageGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: const [0.0, 0.51, 1.0],
      colors: [
        dominantColorDark.value,
        Color.lerp(dominantColor.value, Colors.white, 0.08)!,
        dominantColorDark.value,
      ],
    );

    return Scaffold(
      backgroundColor: dominantColorDark.value,
      body: Stack(
        children: [
          // ── Animated background ──
          AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(gradient: pageGradient),
            constraints: const BoxConstraints.expand(),
          ),

          // Header stays behind the sheet
          CoverHeader(
            startColor: dominantColor.value,
            endColor: dominantColorDark.value,
            coverImageAsset: story.coverImageAsset,
            coverImageUrl: story.coverImageUrl,
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
                  gradient: pageGradient,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    loadedStory.value.title.replaceAll(
                                      '\n',
                                      ' ',
                                    ),
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
                                    child: SizedBox(
                                      width: 36,
                                      height: 36,

                                      child: Center(
                                        child: SvgPicture.asset(
                                          AppIcons.threedot,
                                          width: 30,
                                          height: 30,
                                          colorFilter: const ColorFilter.mode(
                                            Colors.white,
                                            BlendMode.srcIn,
                                          ),
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
                              children: loadedStory.value.categories
                                  .map((t) => StoryTag(label: t))
                                  .toList(),
                            ),

                            const SizedBox(height: AppSpacing.xl),
                            SvgPicture.asset(AppIcons.storyLine),
                            // Loading indicator for sections
                            if (!sectionsLoaded.value)
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(AppSpacing.xl),
                                  child: CircularProgressIndicator(
                                    color: Colors.white54,
                                  ),
                                ),
                              ),

                            // Story content — shown as continuous text (no headings)
                            if (sectionsLoaded.value) ...[
                              ...loadedStory.value.sections.asMap().entries.map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(
                                    top: AppSpacing.lg,
                                  ),
                                  child: HighlightableText(
                                    text: e.value.content,
                                    globalOffset:
                                        textMap.sectionOffsets[e.key] ?? 0,
                                    activeWordStart: activeWordStart.value,
                                    activeWordEnd: activeWordEnd.value,
                                    readUpTo: readUpTo.value,
                                    isReadingMode:
                                        isReading.value || isListening.value,
                                    libraryWords: ref
                                        .watch(libraryProvider)
                                        .allWords,
                                    onWhereLeftOff: (int charIndex) async {
                                      final section = e.value;
                                      final matches = RegExp(
                                        r'\S+',
                                      ).allMatches(section.content).toList();

                                      int targetWordIndex = 0;
                                      for (int i = 0; i < matches.length; i++) {
                                        if (matches[i].start <= charIndex &&
                                            matches[i].end >= charIndex) {
                                          targetWordIndex = i;
                                          break;
                                        } else if (matches[i].start >
                                            charIndex) {
                                          targetWordIndex = i == 0 ? 0 : i - 1;
                                          break;
                                        }
                                      }
                                      // fallback if clicked at the very end
                                      if (targetWordIndex == 0 &&
                                          matches.isNotEmpty &&
                                          charIndex >= matches.last.end) {
                                        targetWordIndex = matches.length - 1;
                                      }

                                      final clampedCharIndex = charIndex.clamp(
                                        0,
                                        section.content.length,
                                      );
                                      savedSectionIndex.value = e.key;
                                      readUpTo.value =
                                          resolveSectionStartOffset(
                                            storyData: loadedStory.value,
                                            sectionIndex: e.key,
                                          ) +
                                          clampedCharIndex;
                                      activeWordStart.value = -1;
                                      activeWordEnd.value = -1;

                                      final timestamps = section.wordTimestamps;
                                      if (timestamps != null &&
                                          targetWordIndex <
                                              timestamps.startTimes.length) {
                                        final double pos = timestamps
                                            .startTimes[targetWordIndex];
                                        savedAudioPos.value = Duration(
                                          milliseconds: (pos * 1000).toInt(),
                                        );
                                        readUpTo
                                            .value = resolveReadUpToForPosition(
                                          storyData: loadedStory.value,
                                          sectionIndex: savedSectionIndex.value,
                                          position: savedAudioPos.value,
                                        );
                                      } else {
                                        savedAudioPos.value = null;
                                      }

                                      forceStartFromSavedProgress.value = true;

                                      // Persist immediately and then refresh from backend so
                                      // the next playback starts from the server-authoritative point.
                                      await storyNotifier.saveStoryProgress(
                                        storyId: story.id,
                                        currentPage: savedSectionIndex.value,
                                        audioPosition:
                                            (savedAudioPos
                                                    .value
                                                    ?.inMilliseconds ??
                                                0) /
                                            1000.0,
                                        isCompleted: false,
                                      );
                                      await refreshProgressFromBackend(
                                        storyData: loadedStory.value,
                                      );

                                      manualProgressSet.value = true;
                                      CustomOverlay.show(
                                        context,
                                        title:
                                            context.t.storyDetails.successfully,
                                        message: context.t.storyDetails.saved,
                                        icon: AppIcons.successToast,
                                        type: OverlayType.success,
                                      );
                                    },
                                    onSave: (w) {
                                      ref
                                          .read(libraryProvider.notifier)
                                          .saveWord(word: w);
                                      CustomOverlay.show(
                                        context,
                                        title: context.t.storyDetails.saved,
                                        message: context
                                            .t
                                            .storyDetails
                                            .wordAddedToLibrary,
                                        icon: AppIcons.successToast,
                                        type: OverlayType.success,
                                      );
                                    },
                                    onDelete: (id) {
                                      ref
                                          .read(libraryProvider.notifier)
                                          .deleteWord(id);
                                      CustomOverlay.show(
                                        context,
                                        title: context.t.storyDetails.removed,
                                        message: context.t.storyDetails.removed,
                                        icon: AppIcons.successToast,
                                        type: OverlayType.success,
                                      );
                                    },
                                    onSpeak: (w) => tts.speak(w),
                                  ),
                                ),
                              ),
                            ],
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
              onStartStop: () => isReading.value ? pauseAudio() : startRead(),
              onListen: () => isListening.value ? pauseAudio() : startListen(),
              backgroundColor: Colors.transparent,
              backgroundGradient: pageGradient,
            ),
          ),

          // ── Rating ──
          if (showRating.value)
            RatingSheet(
              initialRating: currentRating.value,
              backgroundGradient: pageGradient,
              onClose: () => showRating.value = false,
              onSend: (r) async {
                currentRating.value = r;
                showRating.value = false;
                try {
                  await ref
                      .read(AllProviders.storyRepositoryProvider)
                      .rateStory(storyId: story.id, rating: r.toDouble());
                } catch (e) {
                  Print.error('Error submitting rating: $e');
                }
                if (context.mounted) {
                  CustomOverlay.show(
                    context,
                    title: context.t.storyDetails.successfully,
                    message: context.t.storyDetails.ratingSubmitted,
                    icon: AppIcons.successToast,
                    type: OverlayType.success,
                  );
                }
              },
            ),

          // ── Feedback ──
          if (showFeedback.value)
            FeedbackSheet(
              onClose: () => showFeedback.value = false,
              pageGradient: pageGradient,
              onSend: (subject, msg) async {
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
                  try {
                    await ref
                        .read(AllProviders.feedbackRepositoryProvider)
                        .submitFeedback(subject: subject, message: msg);
                  } catch (e) {
                    Print.error('Error submitting feedback: $e');
                  }
                  if (context.mounted) {
                    CustomOverlay.show(
                      context,
                      title: context.t.storyDetails.successfully,
                      message: context.t.storyDetails.messageSent,
                      icon: AppIcons.successToast,
                      type: OverlayType.success,
                    );
                  }
                }
              },
            ),
        ],
      ),
    );
  }
}
