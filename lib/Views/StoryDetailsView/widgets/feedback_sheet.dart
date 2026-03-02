import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

import 'blurred_modal_backdrop.dart';

class FeedbackSheet extends HookWidget {
  const FeedbackSheet({
    super.key,
    required this.onClose,
    required this.onSend,
    required this.pageGradient,
  });

  final VoidCallback onClose;
  final void Function(String, String) onSend;
  final LinearGradient pageGradient;

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
            decoration: BoxDecoration(
              gradient: pageGradient,
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
                // Row(
                //   children: [
                //     Expanded(
                //       child: Text(
                //         context.t.storyDetails.feedback,
                //         style: AppTextStyles.heading(
                //           18,
                //           FontWeight.w700,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: onClose,
                //       child: const Icon(
                //         Icons.close_rounded,
                //         color: Colors.white54,
                //         size: 22,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: AppSpacing.xl),
                Text(
                  context.t.storyDetails.subject,
                  style: AppTextStyles.heading(
                    16,
                    FontWeight.w600,
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
                      borderRadius: AppBorderRadius.pillRadius,
                      border: Border.all(color: Color(0xffDFDFDF)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            subject.value ?? 'Please select a subject',
                            style: AppTextStyles.body(
                              16,
                              color: Colors.white,
                              weight: FontWeight.w300,
                              letterSpacing: -0.05,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          AppIcons.downArrow,
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
                    16,
                    FontWeight.w600,
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
                    hintStyle: AppTextStyles.body(14, color: Colors.white),

                    border: OutlineInputBorder(
                      borderRadius: AppBorderRadius.mdRadius,
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: AppBorderRadius.mdRadius,
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: AppBorderRadius.mdRadius,
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                    contentPadding: const EdgeInsets.all(AppSpacing.md),
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                CustomButton(
                  onPressed: () => onSend(subject.value ?? '', msg.text),
                  type: CustomButtonType.filled,
                  size: CustomButtonSize.large,
                  fullWidth: true,
                  borderRadius: 18,
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  label: context.t.storyDetails.send,
                  shadow: [
                    BoxShadow(
                      color: AppColors.primaryShadow,
                      blurRadius: 0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  icon: SvgPicture.asset(
                    AppIcons.send,
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  iconPosition: CustomButtonIconPosition.trailing,
                  labelStyle: AppTextStyles.body(
                    25,
                    weight: FontWeight.bold,
                    letterSpacing: -0.05,
                    color: Colors.white,
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
