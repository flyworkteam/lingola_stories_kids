import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/Services/secure_storage_service.dart';
import 'package:lingolakidstories/Views/AppLanguageView/widgets/language_grid_item.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class _LanguageOption {
  final String flag;
  final String Function(Translations) label;
  final AppLocale locale;

  const _LanguageOption({
    required this.flag,
    required this.label,
    required this.locale,
  });
}

class AppLanguageView extends StatefulWidget {
  const AppLanguageView({super.key});

  @override
  State<AppLanguageView> createState() => _AppLanguageViewState();
}

class _AppLanguageViewState extends State<AppLanguageView> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = _languages.indexWhere(
      (lang) => lang.locale == LocaleSettings.currentLocale,
    );
    if (_selectedIndex == -1) _selectedIndex = 0;
  }

  final List<_LanguageOption> _languages = [
    _LanguageOption(
      flag: AppFlags.english,
      label: (t) => t.languageOptions.english,
      locale: AppLocale.en,
    ),
    _LanguageOption(
      flag: AppFlags.turkey,
      label: (t) => t.languageOptions.turkish,
      locale: AppLocale.tr,
    ),
    _LanguageOption(
      flag: AppFlags.german,
      label: (t) => t.languageOptions.german,
      locale: AppLocale.de,
    ),
    _LanguageOption(
      flag: AppFlags.italian,
      label: (t) => t.languageOptions.italian,
      locale: AppLocale.it,
    ),
    _LanguageOption(
      flag: AppFlags.french,
      label: (t) => t.languageOptions.french,
      locale: AppLocale.fr,
    ),
    _LanguageOption(
      flag: AppFlags.japanese,
      label: (t) => t.languageOptions.japanese,
      locale: AppLocale.ja,
    ),
    _LanguageOption(
      flag: AppFlags.spanish,
      label: (t) => t.languageOptions.spanish,
      locale: AppLocale.es,
    ),
    _LanguageOption(
      flag: AppFlags.russian,
      label: (t) => t.languageOptions.russian,
      locale: AppLocale.ru,
    ),
    _LanguageOption(
      flag: AppFlags.korean,
      label: (t) => t.languageOptions.korean,
      locale: AppLocale.ko,
    ),
    _LanguageOption(
      flag: AppFlags.hindi,
      label: (t) => t.languageOptions.hindi,
      locale: AppLocale.hi,
    ),
    _LanguageOption(
      flag: AppFlags.portugal,
      label: (t) => t.languageOptions.portuguese,
      locale: AppLocale.pt,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Login'deki gibi arka plan blur'ları
          const Positioned(
            top: -250,
            left: -200,
            child: CustomBlur(color: Color(0xFFFFB256)),
          ),
          const Positioned(bottom: -250, right: -200, child: CustomBlur()),

          Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final itemWidth =
                        (constraints.maxWidth -
                            (AppSpacing.xl * 2) -
                            AppSpacing.md) /
                        2;
                    const itemHeight = 120.0;

                    return SingleChildScrollView(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top + AppSpacing.xl,
                        left: AppSpacing.xl,
                        right: AppSpacing.xl,
                        bottom: AppSpacing.xl,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.xl,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.of(context).pop(),
                                  child: SvgPicture.asset(
                                    AppIcons.longLeftArrow,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  t.appLanguage,
                                  style: AppTextStyles.heading(
                                    18,
                                    FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Wrap(
                            spacing: AppSpacing.md,
                            runSpacing: AppSpacing.md,
                            alignment: WrapAlignment.center,
                            children: [
                              for (int i = 0; i < _languages.length; i++)
                                SizedBox(
                                  width: itemWidth,
                                  height: itemHeight,
                                  child: LanguageGridItem(
                                    flagPath: _languages[i].flag,
                                    label: _languages[i].label(t),
                                    isSelected: _selectedIndex == i,
                                    onTap: () =>
                                        setState(() => _selectedIndex = i),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Save button
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.xl,
                  0,
                  AppSpacing.xl,
                  AppSpacing.xxl,
                ),
                child: CustomButton(
                  label: context.t.save,
                  size: CustomButtonSize.large,
                  fullWidth: true,
                  borderRadius: 18,
                  labelStyle: AppTextStyles.body(
                    24,
                    weight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: -0.05,
                  ),
                  backgroundColor: AppColors.primary,
                  shadow: [
                    BoxShadow(
                      color: AppColors.primaryShadow,
                      blurRadius: 0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  onPressed: () async {
                    final selectedLocale = _languages[_selectedIndex].locale;

                    LocaleSettings.setLocale(selectedLocale);

                    await SecureStorageService().saveLanguage(
                      selectedLocale.languageCode,
                    );

                    if (mounted && context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
