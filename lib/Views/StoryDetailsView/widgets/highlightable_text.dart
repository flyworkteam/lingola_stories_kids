import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Services/translation_service.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class HighlightableText extends HookWidget {
  const HighlightableText({
    super.key,
    required this.text,
    required this.globalOffset,
    required this.activeWordStart,
    required this.activeWordEnd,
    required this.readUpTo,
    required this.isReadingMode,
    required this.onSave,
    required this.onSpeak,
    this.followReading = true,

    this.followAlignment = 0.45,
  });

  final String text;
  final int globalOffset;
  final int activeWordStart;
  final int activeWordEnd;
  final int readUpTo;
  final bool isReadingMode;
  final void Function(String) onSave;
  final void Function(String) onSpeak;

  final bool followReading;

  final double followAlignment;

  @override
  Widget build(BuildContext context) {
    final tokens = useMemoized(() => _tokenise(text), [text]);

    final focusNode = useFocusNode();

    final activeWordKey = useMemoized(() => GlobalKey(), const []);
    final lastFollowedGlobalStart = useRef<int?>(null);

    final popupWord = useState<String>('');
    final popupLoading = useState<bool>(false);
    final popupTranslation = useState<String>('');
    final translateReqId = useRef<int>(0);

    Future<void> showInlineTranslation(String word) async {
      // bump request id so older requests can't win
      final reqId = ++translateReqId.value;

      popupWord.value = word;
      popupLoading.value = true;
      popupTranslation.value = '';

      try {
        final translated = await TranslationService.instance.translate(word);
        // if a newer request started or we cleared popup, ignore this result
        if (translateReqId.value != reqId) return;
        if (popupWord.value != word) return;
        popupTranslation.value = translated;
      } finally {
        if (translateReqId.value == reqId) {
          popupLoading.value = false;
        }
      }
    }

    void clearInlineTranslation() {
      // invalidate any in-flight request
      translateReqId.value++;
      popupWord.value = '';
      popupLoading.value = false;
      popupTranslation.value = '';
    }

    useEffect(() {
      if (popupWord.value.isNotEmpty && !focusNode.hasFocus) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!focusNode.hasFocus) clearInlineTranslation();
        });
      }
      return null;
    }, [focusNode.hasFocus]);

    useEffect(
      () {
        if (!isReadingMode) return null;
        if (!followReading) return null;
        if (activeWordStart < 0) return null;
        if (lastFollowedGlobalStart.value == activeWordStart) return null;
        lastFollowedGlobalStart.value = activeWordStart;

        WidgetsBinding.instance.addPostFrameCallback((_) {
          final ctx = activeWordKey.currentContext;
          if (ctx == null) return;

          final scrollable = Scrollable.maybeOf(ctx);
          if (scrollable == null) return;

          final position = scrollable.position;
          final viewport = RenderAbstractViewport.maybeOf(
            ctx.findRenderObject()!,
          );
          if (viewport == null) return;

          final reveal = viewport.getOffsetToReveal(
            ctx.findRenderObject()!,
            followAlignment,
          );

          double target = reveal.offset;

          target = target.clamp(
            position.minScrollExtent,
            position.maxScrollExtent,
          );

          if ((position.pixels - target).abs() < 6) return;

          position.animateTo(
            target,
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOut,
          );
        });

        return null;
      },
      [
        isReadingMode,
        followReading,
        followAlignment,
        activeWordStart,
        globalOffset,
      ],
    );

    if (isReadingMode) {
      int localPos = 0;
      final spans = <InlineSpan>[];

      for (final tok in tokens) {
        final globalStart = globalOffset + localPos;
        final globalEnd = globalStart + tok.length;

        late Color bgColor;

        final bool isActive =
            tok.trim().isNotEmpty &&
            activeWordStart >= 0 &&
            globalStart == activeWordStart;

        if (globalEnd <= readUpTo) {
          bgColor = AppColors.primary.withValues(alpha: 0.35);
        } else if (isActive) {
          bgColor = AppColors.primary.withValues(alpha: 0.45);
        } else {
          bgColor = Colors.transparent;
        }

        final span = TextSpan(
          text: tok,
          style: AppTextStyles.body(
            14,
            color: Colors.white,
          ).copyWith(backgroundColor: bgColor),
        );

        if (isActive) {
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: KeyedSubtree(
                key: activeWordKey,
                child: Text(tok, style: span.style),
              ),
            ),
          );
        } else {
          spans.add(span);
        }

        localPos += tok.length;
      }

      return RichText(text: TextSpan(children: spans));
    }

    return SelectableText.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: AppTextStyles.body(14, color: Colors.white70),
          ),
        ],
      ),
      focusNode: focusNode,
      contextMenuBuilder: (ctx, state) {
        final sel = state.textEditingValue.selection;
        final selected = sel.isCollapsed
            ? ''
            : text.substring(
                sel.start.clamp(0, text.length),
                sel.end.clamp(0, text.length),
              );

        final selectedWord = selected.trim();

        // If user changes selection to another word, ensure we don't show the
        // previous translation automatically.
        if (popupWord.value.isNotEmpty && selectedWord != popupWord.value) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (popupWord.value.isNotEmpty && selectedWord != popupWord.value) {
              clearInlineTranslation();
            }
          });
        }

        void clearSelection() {
          state.hideToolbar();
          focusNode.unfocus();
          clearInlineTranslation();
        }

        return _WordActionMenu(
          anchors: state.contextMenuAnchors,
          translateState: _TranslatePopupState(
            word: popupWord.value,
            loading: popupLoading.value,
            translation: popupTranslation.value,
          ),
          onTranslate: () {
            final word = selectedWord;
            if (word.isEmpty) return;

            showInlineTranslation(word);
          },
          onSpeak: () {
            final word = selected.trim();
            if (word.isEmpty) return;
            clearSelection();
            onSpeak(word);
          },
          onSave: () {
            final word = selected.trim();
            if (word.isEmpty) return;
            clearSelection();
            onSave(word);
          },
        );
      },
    );
  }

  static List<String> _tokenise(String text) {
    final List<String> tokens = [];
    final re = RegExp(r'\S+|\s+');
    for (final m in re.allMatches(text)) {
      tokens.add(m.group(0)!);
    }
    return tokens;
  }
}

class _TranslatePopupState {
  const _TranslatePopupState({
    required this.word,
    required this.loading,
    required this.translation,
  });

  final String word;
  final bool loading;
  final String translation;

  bool get visible => word.isNotEmpty;
}

class _WordActionMenu extends StatelessWidget {
  const _WordActionMenu({
    required this.anchors,
    required this.onTranslate,
    required this.onSpeak,
    required this.onSave,
    required this.translateState,
  });

  final TextSelectionToolbarAnchors anchors;
  final VoidCallback onTranslate;
  final VoidCallback onSpeak;
  final VoidCallback onSave;
  final _TranslatePopupState translateState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (translateState.visible)
          CustomSingleChildLayout(
            delegate: _ToolbarDelegate(
              anchorAbove: anchors.primaryAnchor,
              anchorBelow: anchors.secondaryAnchor ?? anchors.primaryAnchor,
              fitsAbove: true,
              yOffset: 12,
            ),
            child: _InlineTranslationCard(state: translateState),
          ),

        CustomSingleChildLayout(
          delegate: _ToolbarDelegate(
            anchorAbove: anchors.primaryAnchor,
            anchorBelow: anchors.secondaryAnchor ?? anchors.primaryAnchor,
            fitsAbove: false,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF2A3447),
              borderRadius: AppBorderRadius.mdRadius,
              border: Border.all(color: Colors.white10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  blurRadius: 18,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _ActionBtn(
                    icon: AppIcons.translate,
                    label: context.t.storyDetails.translate,
                    onTap: onTranslate,
                  ),
                  _ActionBtn(
                    icon: AppIcons.speaker,
                    label: context.t.storyDetails.speak,
                    onTap: onSpeak,
                  ),
                  _ActionBtn(
                    icon: AppIcons.bookmark,
                    label: context.t.storyDetails.save,
                    onTap: onSave,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _InlineTranslationCard extends StatelessWidget {
  const _InlineTranslationCard({required this.state});
  final _TranslatePopupState state;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          SvgPicture.asset(AppIcons.translateBack, fit: BoxFit.fitWidth),

          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: DefaultTextStyle(
                style: AppTextStyles.body(13, color: Colors.white70),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (state.loading)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(context.t.storyDetails.translating),
                        ],
                      )
                    else
                      Text(
                        state.translation,
                        style: AppTextStyles.body(
                          13,
                          color: AppColors.primary,
                        ).copyWith(fontWeight: FontWeight.w600),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionBtn extends StatelessWidget {
  const _ActionBtn({
    required this.icon,
    required this.label,
    required this.onTap,
  });
  final String icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          child: SvgPicture.asset(
            icon,
            width: 20,
            height: 20,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}

class _ToolbarDelegate extends SingleChildLayoutDelegate {
  const _ToolbarDelegate({
    required this.anchorAbove,
    required this.anchorBelow,
    required this.fitsAbove,
    this.yOffset = 0,
  });
  final Offset anchorAbove;
  final Offset anchorBelow;
  final bool fitsAbove;
  final double yOffset;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints c) => c.loosen();

  @override
  Offset getPositionForChild(Size size, Size child) {
    final a = fitsAbove ? anchorAbove : anchorBelow;
    final x = (a.dx - child.width / 2).clamp(8.0, size.width - child.width - 8);
    final y = fitsAbove
        ? (a.dy - child.height - 8).clamp(8.0, size.height - child.height - 8)
        : (a.dy + 8).clamp(8.0, size.height - child.height - 8);
    return Offset(x, y + yOffset);
  }

  @override
  bool shouldRelayout(_ToolbarDelegate old) => true;
}
