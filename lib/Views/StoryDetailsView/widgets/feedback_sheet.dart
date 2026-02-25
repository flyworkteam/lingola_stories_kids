import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

import 'blurred_modal_backdrop.dart';

class FeedbackSheet extends HookWidget {
  const FeedbackSheet({super.key, required this.onClose, required this.onSend});

  final VoidCallback onClose;
  final void Function(String, String) onSend;

  @override
  Widget build(BuildContext context) {
    final t = context.t.storyDetails.feedbackSubjects;
    final subjects = [
      t.bugReport,
      t.storyContent,
      t.audioIssue,
      t.suggestion,
      t.other,
    ];
    final subject = useState<String?>(null);
    final msg = useTextEditingController();
    final showDrop = useState(false);

    return BlurredModalBackdrop(
      onTap: onClose,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF1E2A3D),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(AppBorderRadius.xl),
              ),
            ),
            padding: EdgeInsets.fromLTRB(
              AppSpacing.xl,
              AppSpacing.lg,
              AppSpacing.xl,
              MediaQuery.of(context).padding.bottom + AppSpacing.lg,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: AppBorderRadius.pillRadius,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.t.storyDetails.feedback,
                        style: AppTextStyles.heading(
                          18,
                          FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onClose,
                      child: const Icon(
                        Icons.close_rounded,
                        color: Colors.white54,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                Text(
                  context.t.storyDetails.subject,
                  style: AppTextStyles.heading(
                    14,
                    FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                GestureDetector(
                  onTap: () => showDrop.value = !showDrop.value,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.06),
                      borderRadius: AppBorderRadius.mdRadius,
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            subject.value ?? 'Please select a subject',
                            style: AppTextStyles.body(
                              14,
                              color: subject.value != null
                                  ? Colors.white
                                  : Colors.white38,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          AppIcons.downArrow,
                          width: 16,
                          height: 16,
                          colorFilter: const ColorFilter.mode(
                            Colors.white54,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (showDrop.value)
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A3447),
                      borderRadius: AppBorderRadius.mdRadius,
                      border: Border.all(color: Colors.white12),
                    ),
                    child: Column(
                      children: subjects.map((s) {
                        final sel = subject.value == s;
                        return GestureDetector(
                          onTap: () {
                            subject.value = s;
                            showDrop.value = false;
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                              vertical: AppSpacing.md,
                            ),
                            color: sel
                                ? AppColors.primary.withValues(alpha: 0.15)
                                : Colors.transparent,
                            child: Text(
                              s,
                              style: AppTextStyles.body(
                                14,
                                color: sel ? AppColors.primary : Colors.white70,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  'Message',
                  style: AppTextStyles.heading(
                    14,
                    FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                TextField(
                  controller: msg,
                  maxLines: 4,
                  style: AppTextStyles.body(14, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Please enter your message',
                    hintStyle: AppTextStyles.body(14, color: Colors.white38),
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.06),
                    border: OutlineInputBorder(
                      borderRadius: AppBorderRadius.mdRadius,
                      borderSide: const BorderSide(color: Colors.white24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: AppBorderRadius.mdRadius,
                      borderSide: const BorderSide(color: Colors.white24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: AppBorderRadius.mdRadius,
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                    contentPadding: const EdgeInsets.all(AppSpacing.md),
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () => onSend(subject.value ?? '', msg.text),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: AppBorderRadius.pillRadius,
                      ),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.t.storyDetails.send,
                          style: AppTextStyles.body(15, color: Colors.white),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        SvgPicture.asset(
                          AppIcons.send,
                          width: 16,
                          height: 16,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
