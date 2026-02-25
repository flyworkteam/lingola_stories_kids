import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class _Language {
  final String code;
  final String name;
  final String? flagAsset;

  const _Language({required this.code, required this.name, this.flagAsset});
}

class Step1 extends HookWidget {
  const Step1({super.key, this.onLanguageSelected});

  final ValueChanged<String>? onLanguageSelected;

  @override
  Widget build(BuildContext context) {
    final selectedCode = useState<String?>(null);
    List<_Language> languages = [
      _Language(
        code: 'en',
        name: context.t.languageOptions.english,
        flagAsset: AppFlags.english,
      ),
      _Language(
        code: 'tr',
        name: context.t.languageOptions.turkish,
        flagAsset: AppFlags.turkey,
      ),
      _Language(
        code: 'de',
        name: context.t.languageOptions.german,
        flagAsset: AppFlags.german,
      ),
      _Language(
        code: 'it',
        name: context.t.languageOptions.italian,
        flagAsset: AppFlags.italian,
      ),
      _Language(
        code: 'fr',
        name: context.t.languageOptions.french,
        flagAsset: AppFlags.french,
      ),
      _Language(
        code: 'ja',
        name: context.t.languageOptions.japanese,
        flagAsset: AppFlags.japanese,
      ),
      _Language(
        code: 'es',
        name: context.t.languageOptions.spanish,
        flagAsset: AppFlags.spanish,
      ),
      _Language(
        code: 'ru',
        name: context.t.languageOptions.russian,
        flagAsset: AppFlags.russian,
      ),
      _Language(
        code: 'ko',
        name: context.t.languageOptions.korean,
        flagAsset: AppFlags.korean,
      ),
      _Language(
        code: 'hi',
        name: context.t.languageOptions.hindi,
        flagAsset: AppFlags.hindi,
      ),
      _Language(
        code: 'pt',
        name: context.t.languageOptions.portuguese,
        flagAsset: AppFlags.portugal,
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: AppSpacing.xl),
        Text(
          context.t.onboarding.step1.title,
          textAlign: TextAlign.center,
          style: AppTextStyles.body(
            24,
            weight: FontWeight.bold,
            height: 30,
            letterSpacing: -0.05,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          context.t.onboarding.step1.subtitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.body(
            20,
            weight: FontWeight.w300,
            height: 25,
            letterSpacing: -0.05,
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final itemWidth = (constraints.maxWidth - AppSpacing.md) / 2;
              const itemHeight = 90.0;
              return SingleChildScrollView(
                padding: const EdgeInsets.only(
                  bottom: AppSpacing.xl,
                  top: AppSpacing.xl,
                ),
                child: Wrap(
                  spacing: AppSpacing.md,
                  runSpacing: AppSpacing.md,
                  alignment: WrapAlignment.center,
                  children: languages.map((lang) {
                    final isSelected = selectedCode.value == lang.code;
                    return SizedBox(
                      width: itemWidth,
                      height: itemHeight,
                      child: _LanguageTile(
                        language: lang,
                        isSelected: isSelected,
                        onTap: () {
                          selectedCode.value = lang.code;
                          onLanguageSelected?.call(lang.code);
                        },
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.language,
    required this.isSelected,
    required this.onTap,
  });

  final _Language language;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppBorderRadius.mdRadius,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.secondary,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppColors.primaryShadow,
                blurRadius: 4,
                offset: const Offset(0, 0),
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _FlagWidget(language: language),
            const SizedBox(height: AppSpacing.lg),
            Text(
              language.name,
              style: AppTextStyles.body(
                15,
                weight: FontWeight.w500,
                letterSpacing: -0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FlagWidget extends StatelessWidget {
  const _FlagWidget({required this.language});

  final _Language language;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      language.flagAsset!,
      width: 48,
      height: 32,
      fit: BoxFit.contain,
    );
  }
}
