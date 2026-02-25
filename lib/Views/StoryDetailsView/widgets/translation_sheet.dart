import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Services/translation_service.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

import 'blurred_modal_backdrop.dart';

class TranslationSheet extends HookWidget {
  const TranslationSheet({
    super.key,
    required this.word,
    required this.onClose,
    required this.onSpeak,
    required this.onSave,
  });

  final String word;
  final VoidCallback onClose;
  final VoidCallback onSpeak;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    final loading = useState(true);
    final result = useState('');
    final targetLang = TranslationService.instance.deviceLanguageCode
        .toUpperCase();

    useEffect(() {
      loading.value = true;
      result.value = '';
      TranslationService.instance.translate(word).then((translated) {
        result.value = translated;
        loading.value = false;
      });
      return null;
    }, [word]);

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
              MediaQuery.of(context).padding.bottom + AppSpacing.xl,
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
                        context.t.storyDetails.translation,
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
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: AppBorderRadius.lgRadius,
                    border: Border.all(color: Colors.white12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              word,
                              style: AppTextStyles.heading(
                                20,
                                FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onSpeak,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(
                                  alpha: 0.15,
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.primary.withValues(
                                    alpha: 0.4,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  AppIcons.speaker,
                                  width: 16,
                                  height: 16,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.primary,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Row(
                        children: [
                          _LangChip(label: 'EN', active: true),
                          const SizedBox(width: AppSpacing.sm),
                          const Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.white38,
                            size: 18,
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          _LangChip(label: targetLang, active: false),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      if (loading.value)
                        Row(
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColors.primary,
                              ),
                            ),
                            const SizedBox(width: AppSpacing.sm),
                            Text(
                              context.t.storyDetails.translating,
                              style: AppTextStyles.body(
                                14,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        )
                      else
                        Text(
                          result.value,
                          style: AppTextStyles.heading(
                            18,
                            FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: onSave,
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
                        SvgPicture.asset(
                          AppIcons.bookmark,
                          width: 16,
                          height: 16,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Text(
                          context.t.storyDetails.saveToLibrary,
                          style: AppTextStyles.body(15, color: Colors.white),
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

class _LangChip extends StatelessWidget {
  const _LangChip({required this.label, required this.active});
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: active
            ? AppColors.primary.withValues(alpha: 0.18)
            : Colors.white.withValues(alpha: 0.07),
        borderRadius: AppBorderRadius.pillRadius,
      ),
      child: Text(
        label,
        style: AppTextStyles.body(
          10,
          color: active ? AppColors.primary : Colors.white54,
        ),
      ),
    );
  }
}
