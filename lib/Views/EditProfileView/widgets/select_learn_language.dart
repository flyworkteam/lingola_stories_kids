import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class SelectLearnLanguage extends StatelessWidget {
  const SelectLearnLanguage({
    super.key,
    required this.selectedCode,
    this.onChanged,
  });

  /// Current selected language code.
  final String selectedCode;

  /// Called when a new language is picked.
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final languages = <({String code, String label, String flagAsset})>[
      (
        code: 'en',
        label: context.t.languageOptions.english,
        flagAsset: AppFlags.english,
      ),
      (
        code: 'de',
        label: context.t.languageOptions.german,
        flagAsset: AppFlags.german,
      ),
      (
        code: 'es',
        label: context.t.languageOptions.spanish,
        flagAsset: AppFlags.spanish,
      ),
      (
        code: 'fr',
        label: context.t.languageOptions.french,
        flagAsset: AppFlags.french,
      ),
      (
        code: 'hi',
        label: context.t.languageOptions.hindi,
        flagAsset: AppFlags.hindi,
      ),
      (
        code: 'it',
        label: context.t.languageOptions.italian,
        flagAsset: AppFlags.italian,
      ),
      (
        code: 'ja',
        label: context.t.languageOptions.japanese,
        flagAsset: AppFlags.japanese,
      ),
      (
        code: 'ko',
        label: context.t.languageOptions.korean,
        flagAsset: AppFlags.korean,
      ),
      (
        code: 'pt',
        label: context.t.languageOptions.portuguese,
        flagAsset: AppFlags.portugal,
      ),
      (
        code: 'ru',
        label: context.t.languageOptions.russian,
        flagAsset: AppFlags.russian,
      ),
      (
        code: 'tr',
        label: context.t.languageOptions.turkish,
        flagAsset: AppFlags.turkey,
      ),
    ];

    final selected = languages.firstWhere(
      (l) => l.code == selectedCode,
      orElse: () => languages.first,
    );

    Future<void> openPicker() async {
      final result = await showModalBottomSheet<String>(
        context: context,
        showDragHandle: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
        ),
        builder: (ctx) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.t.editProfile.learnLanguage,
                    style: AppTextStyles.heading(
                      16,
                      FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Flexible(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: languages.length,
                      separatorBuilder: (_, _) => const Divider(height: 1),
                      itemBuilder: (_, index) {
                        final lang = languages[index];
                        final isSelected = lang.code == selectedCode;
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: SvgPicture.asset(
                            lang.flagAsset,
                            width: 22,
                            height: 22,
                          ),
                          title: Text(
                            lang.label,
                            style: AppTextStyles.body(
                              14,
                              weight: isSelected
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          trailing: isSelected
                              ? const Icon(
                                  Icons.check,
                                  color: Color(0xFF5F8486),
                                )
                              : null,
                          onTap: () => Navigator.of(ctx).pop(lang.code),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

      if (result == null) return;
      onChanged?.call(result);
    }

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF0F7F7),
        borderRadius: AppBorderRadius.lgRadius,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        leading: SvgPicture.asset(selected.flagAsset, width: 22, height: 22),
        title: Text(
          selected.label,
          style: AppTextStyles.body(
            14,
            weight: FontWeight.bold,
            color: const Color(0xFF5F8486).withValues(alpha: 0.6),
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.grey,
        ),
        onTap: openPicker,
      ),
    );
  }
}
