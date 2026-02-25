import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    required this.onTranslate,
    required this.onSave,
    required this.onSpeak,
    this.followReading = true,
    // Slightly more centered so we start moving before it hits the bottom.
    this.followAlignment = 0.45,
  });

  final String text;
  final int globalOffset;
  final int activeWordStart;
  final int activeWordEnd;
  final int readUpTo;
  final bool isReadingMode;
  final void Function(String) onTranslate;
  final void Function(String) onSave;
  final void Function(String) onSpeak;

  /// When true, the widget will gently auto-scroll the nearest ancestor Scrollable
  /// to keep the currently spoken word visible.
  final bool followReading;

  /// Where the active word should land in the viewport when following (0=top, 1=bottom).
  final double followAlignment;

  @override
  Widget build(BuildContext context) {
    final tokens = useMemoized(() => _tokenise(text), [text]);

    // Keep hook order stable across rebuilds (reading/non-reading).
    final focusNode = useFocusNode();

    // Used to scroll the active word into view when TTS progresses.
    final activeWordKey = useMemoized(() => GlobalKey(), const []);
    final lastFollowedGlobalStart = useRef<int?>(null);

    // Deterministic follow-scroll when active word changes.
    // We compute the active word position inside the nearest Scrollable viewport and
    // animate the ScrollPosition to keep it around followAlignment.
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

          // This gives us the pixels needed to reveal the render object.
          // We'll then adjust so the word sits at followAlignment in the viewport.
          final reveal = viewport.getOffsetToReveal(
            ctx.findRenderObject()!,
            followAlignment,
          );

          double target = reveal.offset;

          // Clamp and animate quickly so it doesn't lag behind spoken word.
          target = target.clamp(
            position.minScrollExtent,
            position.maxScrollExtent,
          );

          // Avoid spamming tiny animations.
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

        // Designer request:
        // - Text color stays solid white (no dimming/changes while reading).
        // - The background highlight remains on all already-read words.
        // - Active word can be slightly stronger, but text stays unchanged.
        // - Also highlight spaces so the highlight band looks continuous.
        late Color bgColor;

        final bool isActive =
            tok.trim().isNotEmpty &&
            activeWordStart >= 0 &&
            globalStart == activeWordStart;

        if (globalEnd <= readUpTo) {
          // Keep highlight on all read content (including whitespace) for continuity.
          bgColor = AppColors.primary.withValues(alpha: 0.35);
        } else if (isActive) {
          // Active word highlight (same family; optionally a touch stronger).
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

        // Wrap only the active word so we can ensureVisible() on it.
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

        void clearSelection() {
          state.hideToolbar();
          focusNode.unfocus();
        }

        return _WordActionMenu(
          anchors: state.contextMenuAnchors,
          onTranslate: () {
            final word = selected.trim();
            clearSelection();
            if (word.isNotEmpty) onTranslate(word);
          },
          onSpeak: () {
            final word = selected.trim();
            clearSelection();
            if (word.isNotEmpty) onSpeak(word);
          },
          onSave: () {
            final word = selected.trim();
            clearSelection();
            if (word.isNotEmpty) onSave(word);
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

class _WordActionMenu extends StatelessWidget {
  const _WordActionMenu({
    required this.anchors,
    required this.onTranslate,
    required this.onSpeak,
    required this.onSave,
  });

  final TextSelectionToolbarAnchors anchors;
  final VoidCallback onTranslate;
  final VoidCallback onSpeak;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: _ToolbarDelegate(
        anchorAbove: anchors.primaryAnchor,
        anchorBelow: anchors.secondaryAnchor ?? anchors.primaryAnchor,
        fitsAbove: true,
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
              _VDivider(),
              _ActionBtn(
                icon: AppIcons.speaker,
                label: context.t.storyDetails.speak,
                onTap: onSpeak,
              ),
              _VDivider(),
              _ActionBtn(
                icon: AppIcons.bookmark,
                label: context.t.storyDetails.save,
                onTap: onSave,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Container(width: 1, color: Colors.white12);
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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 3),
            Text(label, style: AppTextStyles.body(10, color: Colors.white60)),
          ],
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
  });
  final Offset anchorAbove;
  final Offset anchorBelow;
  final bool fitsAbove;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints c) => c.loosen();

  @override
  Offset getPositionForChild(Size size, Size child) {
    final a = fitsAbove ? anchorAbove : anchorBelow;
    final x = (a.dx - child.width / 2).clamp(8.0, size.width - child.width - 8);
    final y = fitsAbove
        ? (a.dy - child.height - 8).clamp(8.0, size.height - child.height - 8)
        : (a.dy + 8).clamp(8.0, size.height - child.height - 8);
    return Offset(x, y);
  }

  @override
  bool shouldRelayout(_ToolbarDelegate old) => true;
}
