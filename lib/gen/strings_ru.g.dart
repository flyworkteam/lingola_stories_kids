///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsRu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Добро пожаловать ${name}';
	@override String welcome2({required Object appName}) => 'Добро пожаловать в ${appName}';
	@override String get get_started => 'Начать';
	@override String get next => 'Далее';
	@override String get back => 'Назад';
	@override String get skip => 'Пропустить';
	@override String get kContinue => 'Продолжить';
	@override String get logintext => 'Где каждое слово — это новое приключение, ожидающее своего рассказа.';
	@override late final _TranslationsTermOfServiceRu termOfService = _TranslationsTermOfServiceRu._(_root);
	@override String get cookies => 'Политика использования файлов cookie';
	@override String get privacy => 'Политика конфиденциальности';
	@override late final _TranslationsOnboardingRu onboarding = _TranslationsOnboardingRu._(_root);
	@override String get pressBackAgainToExit => 'Нажмите назад еще раз для выхода';
	@override late final _TranslationsFaqRu faq = _TranslationsFaqRu._(_root);
	@override String get good_morning => 'Доброе утро';
	@override String get good_afternoon => 'Добрый день';
	@override String get good_evening => 'Добрый вечер';
	@override late final _TranslationsSplashRu splash = _TranslationsSplashRu._(_root);
	@override late final _TranslationsProfileRu profile = _TranslationsProfileRu._(_root);
	@override late final _TranslationsHomeRu home = _TranslationsHomeRu._(_root);
	@override late final _TranslationsAllStoriesRu allStories = _TranslationsAllStoriesRu._(_root);
	@override late final _TranslationsStoriesRu stories = _TranslationsStoriesRu._(_root);
	@override late final _TranslationsLibraryRu library = _TranslationsLibraryRu._(_root);
	@override late final _TranslationsBottomNavRu bottomNav = _TranslationsBottomNavRu._(_root);
	@override late final _TranslationsDayStreakRu dayStreak = _TranslationsDayStreakRu._(_root);
	@override late final _TranslationsStoryDetailsRu storyDetails = _TranslationsStoryDetailsRu._(_root);
	@override late final _TranslationsShareRu share = _TranslationsShareRu._(_root);
	@override String get delete => 'Удалить';
	@override late final _TranslationsEditProfileRu editProfile = _TranslationsEditProfileRu._(_root);
	@override late final _TranslationsNotificationsRu notifications = _TranslationsNotificationsRu._(_root);
	@override late final _TranslationsAuthRu auth = _TranslationsAuthRu._(_root);
	@override String get cancel => 'Отмена';
	@override String get deleteAccount => 'Удалить аккаунт';
	@override String get deleteDialogTitle => 'Вы уверены, что хотите удалить свой аккаунт?';
	@override String get deleteDialogDescription => 'Это действие необратимо и навсегда удалит всю вашу историю упражнений и данные.';
	@override String get deleteError => 'Произошла ошибка при удалении вашего аккаунта. Пожалуйста, попробуйте снова.';
	@override String get enterInvitationCode => 'Введите код приглашения';
	@override String get inviteFriends => 'Введите код приглашения, полученный от друга.\nВведите его в соответствующее поле';
	@override String get twoDaysPremium => '7 дней Премиум';
	@override String get advantage => '\nчтобы воспользоваться его преимуществами.';
	@override String get send => 'Отправить';
	@override late final _TranslationsReferralCodeRu referralCode = _TranslationsReferralCodeRu._(_root);
	@override String get deleteNotifications => 'Удалить уведомления';
	@override String get deleteNotificationsDescription => 'Вы уверены, что хотите удалить все\nваши уведомления? Это действие необратимо.';
	@override String get deleteAll => 'Удалить все';
	@override String get appLanguage => 'Язык приложения';
	@override String get selectLanguage => 'Выберите предпочитаемый язык';
	@override String get save => 'Сохранить';
	@override late final _TranslationsLanguageOptionsRu languageOptions = _TranslationsLanguageOptionsRu._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceRu implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Регистрируясь в swipe, вы соглашаетесь с нашими ';
	@override String get link1 => 'Условиями обслуживания';
	@override String get text2 => '. Узнайте, как мы обрабатываем ваши данные, в нашей ';
	@override String get link2 => 'Политике конфиденциальности';
	@override String get text3 => ' и ';
	@override String get link3 => 'Политике использования файлов cookie';
	@override String get text4 => '';
	@override late final _TranslationsTermOfServicePrivacyPolicyRu privacyPolicy = _TranslationsTermOfServicePrivacyPolicyRu._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServiceRu termsOfService = _TranslationsTermOfServiceTermsOfServiceRu._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyRu cookiePolicy = _TranslationsTermOfServiceCookiePolicyRu._(_root);
}

// Path: onboarding
class _TranslationsOnboardingRu implements TranslationsOnboardingEn {
	_TranslationsOnboardingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1Ru step1 = _TranslationsOnboardingStep1Ru._(_root);
	@override late final _TranslationsOnboardingStep2Ru step2 = _TranslationsOnboardingStep2Ru._(_root);
	@override late final _TranslationsOnboardingLoadingRu loading = _TranslationsOnboardingLoadingRu._(_root);
}

// Path: faq
class _TranslationsFaqRu implements TranslationsFaqEn {
	_TranslationsFaqRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Часто задаваемые вопросы';
	@override late final _TranslationsFaqQuestionsRu questions = _TranslationsFaqQuestionsRu._(_root);
}

// Path: splash
class _TranslationsSplashRu implements TranslationsSplashEn {
	_TranslationsSplashRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Ru screen1 = _TranslationsSplashScreen1Ru._(_root);
	@override late final _TranslationsSplashScreen2Ru screen2 = _TranslationsSplashScreen2Ru._(_root);
}

// Path: profile
class _TranslationsProfileRu implements TranslationsProfileEn {
	_TranslationsProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профиль';
	@override String get freeVersion => 'Бесплатная версия';
	@override String get error => 'Ошибка';
	@override String get passive => 'Неактивный';
	@override late final _TranslationsProfileSectionsRu sections = _TranslationsProfileSectionsRu._(_root);
	@override late final _TranslationsProfileMenuRu menu = _TranslationsProfileMenuRu._(_root);
	@override String get manage => 'УПРАВЛЯТЬ';
	@override late final _TranslationsProfileLogoutDialogRu logoutDialog = _TranslationsProfileLogoutDialogRu._(_root);
}

// Path: home
class _TranslationsHomeRu implements TranslationsHomeEn {
	_TranslationsHomeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Премиум!';
	@override String get seeMore => 'Смотреть больше';
	@override String get pickUpWhereYouLeftOff => 'Продолжить с того места';
	@override String get premiumSection => 'Премиум';
	@override String get history => 'История';
	@override String get librarySection => 'Библиотека';
	@override String get libraryDescription => 'Сохранённые слова появятся здесь.';
	@override String get upgradeToPremium => 'Перейти на Премиум';
	@override String get unlimitedStories => 'Неограниченные истории и без рекламы';
	@override late final _TranslationsHomePremiumPlanRu premiumPlan = _TranslationsHomePremiumPlanRu._(_root);
}

// Path: allStories
class _TranslationsAllStoriesRu implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Все истории';
	@override String get noStoriesFound => 'Истории не найдены';
	@override String get selectFilter => 'Выбрать фильтр';
	@override String get category => 'Категория';
	@override String get categorySubtitle => 'Пожалуйста, выберите категорию для чтения';
	@override String get apply => 'Применить';
}

// Path: stories
class _TranslationsStoriesRu implements TranslationsStoriesEn {
	_TranslationsStoriesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Истории';
	@override String get popularStories => 'Популярные истории';
	@override String get recommendForYou => 'Рекомендуем для вас';
	@override String get allStories => 'Все истории';
	@override String get seeAll => 'Смотреть все';
}

// Path: library
class _TranslationsLibraryRu implements TranslationsLibraryEn {
	_TranslationsLibraryRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Библиотека';
	@override String wordCount({required Object count}) => '${count} Слов';
	@override String get popularWords => 'Популярные слова';
	@override String get allWords => 'Все слова';
	@override String get searchWord => 'Поиск слов';
	@override String get searchHint => 'Введите слово…';
}

// Path: bottomNav
class _TranslationsBottomNavRu implements TranslationsBottomNavEn {
	_TranslationsBottomNavRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get home => 'Главная';
	@override String get stories => 'Истории';
	@override String get library => 'Библиотека';
	@override String get profile => 'Профиль';
}

// Path: dayStreak
class _TranslationsDayStreakRu implements TranslationsDayStreakEn {
	_TranslationsDayStreakRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Серия дней!';
	@override late final _TranslationsDayStreakDaysRu days = _TranslationsDayStreakDaysRu._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsRu implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Введение';
	@override String get saved => 'Сохранено';
	@override String get removed => 'Удалено';
	@override String get storyAddedToLibrary => 'История добавлена в вашу библиотеку.';
	@override String get storyRemovedFromLibrary => 'История удалена из библиотеки.';
	@override String get wordAddedToLibrary => 'Слово добавлено в библиотеку. Отменить';
	@override String get successfully => 'Успешно';
	@override String get ratingSubmitted => 'Ваша оценка успешно отправлена.';
	@override String get warning => 'Предупреждение';
	@override String get fillAllFields => 'Пожалуйста, заполните все поля.';
	@override String get messageSent => 'Ваше сообщение успешно отправлено.';
	@override String get translate => 'Перевести';
	@override String get speak => 'Говорить';
	@override String get like => 'Нравится';
	@override String get save => 'Сохранить';
	@override String get feedback => 'Отзыв';
	@override String get rating => 'Оценка';
	@override String get stop => 'Стоп';
	@override String get start => 'Старт';
	@override String get listen => 'Слушать';
	@override String get translation => 'Перевод';
	@override String get translating => 'Перевод...';
	@override String get saveToLibrary => 'Сохранить в библиотеку';
	@override String get rateThisStory => 'Оценить эту историю';
	@override String get enjoyStory => 'Насколько вам понравилась эта история?';
	@override String get send => 'Отправить';
	@override String get subject => 'Тема';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsRu feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsRu._(_root);
}

// Path: share
class _TranslationsShareRu implements TranslationsShareEn {
	_TranslationsShareRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поделиться с друзьями';
	@override String get mainTitle => 'Поделитесь миром';
	@override String get descriptionPart1 => 'Пригласите друзей дышать вместе.\nЗа каждое приглашение вы оба получаете ';
	@override String get descriptionPart2 => '1 неделю Премиум';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'ВАШ КОД ПРИГЛАШЕНИЯ';
	@override String get codeCopied => 'Код скопирован!';
	@override String get copyCode => 'Копировать код';
	@override String get inviteDescription => 'Пригласите друзей и учитесь\nвместе';
	@override String get linkCopied => 'Скопировано';
	@override String get linkCopiedMessage => 'Ссылка скопирована в буфер обмена.';
}

// Path: editProfile
class _TranslationsEditProfileRu implements TranslationsEditProfileEn {
	_TranslationsEditProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override String get changePhoto => 'Изменить аватар';
	@override String get learnLanguage => 'Выбрать язык обучения';
	@override String get fullName => 'Полное имя';
	@override String get email => 'Электронная почта';
	@override String get age => 'Возраст';
	@override String get save => 'Сохранить';
	@override String get saving => 'Сохранение...';
	@override String get updateSuccess => 'Профиль успешно обновлен';
	@override String get updateError => 'Произошла ошибка при обновлении профиля';
	@override String get deleteAccount => 'Удалить аккаунт';
}

// Path: notifications
class _TranslationsNotificationsRu implements TranslationsNotificationsEn {
	_TranslationsNotificationsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Уведомления';
	@override String get emptyTitle => 'Пока нет уведомлений';
	@override String get emptyDescription => 'Мы уведомим вас, когда будет важное обновление о вашем пути обучения.';
	@override String get premiumBannerTitle => 'Не упустите\nпреимущества Премиум!';
	@override String get premiumBannerDescription => 'Используйте возможности подписчика Премиум.';
}

// Path: auth
class _TranslationsAuthRu implements TranslationsAuthEn {
	_TranslationsAuthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Продолжить как гость';
	@override String signInFailed({required Object error}) => 'Вход не выполнен: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeRu implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Введите 8-значный код';
	@override String get applying => 'Применение кода...';
	@override late final _TranslationsReferralCodeSuccessRu success = _TranslationsReferralCodeSuccessRu._(_root);
	@override late final _TranslationsReferralCodeErrorsRu errors = _TranslationsReferralCodeErrorsRu._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsRu implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get english => 'Английский';
	@override String get german => 'Немецкий';
	@override String get italian => 'Итальянский';
	@override String get french => 'Французский';
	@override String get japanese => 'Японский';
	@override String get spanish => 'Испанский';
	@override String get russian => 'Русский';
	@override String get turkish => 'Турецкий';
	@override String get korean => 'Корейский';
	@override String get hindi => 'Хинди';
	@override String get portuguese => 'Португальский';
}

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyRu implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Политика конфиденциальности';
	@override String get lastUpdated => 'Последнее обновление: 2025';
	@override String get intro => 'Lingola Stories Kids принимает конфиденциальность детей как основной принцип.';
	@override String get section1Title => '1. СОБИРАЕМАЯ ИНФОРМАЦИЯ';
	@override String get section1sub1Title => '1.1 Данные пользователя';
	@override String get section1sub1Body => 'Псевдоним или имя профиля.\nАдрес электронной почты.\nВозрастная информация.\nУровень языка и выученные слова.\n\nПримечание: Не используются для медицинского анализа.';
	@override String get section1sub2Title => '1.2 Автоматически собираемые данные';
	@override String get section1sub2Body => 'Тип устройства, ОС и производительность. Точное местоположение НЕ собирается.';
	@override String get section2Title => '2. ЦЕЛИ ОБРАБОТКИ';
	@override String get section2Body => 'Данные используются для:\n\n- Безопасного контента по возрасту.\n- Персонализации обучения.\n- Улучшения производительности.\n- Юридических обязательств.';
	@override String get section3Title => '3. ХРАНЕНИЕ И УДАЛЕНИЕ';
	@override String get section3Body => 'Данные хранятся пока аккаунт активен. Записи поддержки до 12 месяцев. При удалении аккаунта данные стираются безвозвратно.';
	@override String get section4Title => '4. ПРАВА ПОЛЬЗОВАТЕЛЕЙ';
	@override String get section4Body => 'Согласно GDPR/KVKK, родители могут запросить доступ, исправление или удаление. support@fly-work.com';
	@override String get section5Title => '5. КОНФИДЕНЦИАЛЬНОСТЬ ДЕТЕЙ';
	@override String get section5Body => 'Для пользователей от 6 лет. Согласие родителей обязательно для младше 13 лет.';
	@override String get section6Title => '6. КОНТАКТ';
	@override String get section6Body => '📩 По вопросам: support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServiceRu implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServiceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Условия использования';
	@override String get lastUpdated => 'Последнее обновление: 2025';
	@override String get intro => 'Настоящие Условия регулируют использование Lingola Stories Kids.';
	@override String get disclaimer => 'Отказ от ответственности: Lingola Stories Kids — образовательный инструмент без официальной сертификации.';
	@override String get section1Title => '1. ОБЪЁМ УСЛУГ';
	@override String get section1Body => 'Приложение предоставляет обучение на историях:\n\n- Истории и рекомендации на базе ИИ.\n- Чтение по возрасту и уровню.\n- Поддержка словарного запаса и произношения.';
	@override String get section2Title => '2. УСЛОВИЯ И ВОЗРАСТ';
	@override String get section2Body => 'Не менее 6 лет.\nДо 18 лет под надзором родителей.\nТочные и актуальные данные аккаунта.';
	@override String get section3Title => '3. ЗАПРЕЩЁННОЕ ИСПОЛЬЗОВАНИЕ';
	@override String get section3Body => 'Несанкционированное копирование, обратная разработка и коммерческое использование запрещены.';
	@override String get section4Title => '4. ПОДПИСКИ И ПЛАТЕЖИ';
	@override String get section4Body => 'Премиум-функции регулируются политиками App Store и Google Play.';
	@override String get section5Title => '5. ИНТЕЛЛЕКТУАЛЬНАЯ СОБСТВЕННОСТЬ';
	@override String get section5Body => 'Весь контент принадлежит Lingola Stories Kids.';
	@override String get section6Title => '6. ОГРАНИЧЕНИЕ ОТВЕТСТВЕННОСТИ';
	@override String get section6Body => 'Приложение предоставляется как есть.';
	@override String get section7Title => '7. ПРИМЕНИМОЕ ПРАВО';
	@override String get section7Body => 'Законы Турецкой Республики. Юрисдикция судов Стамбула.';
	@override String get section8Title => '8. КОНТАКТ';
	@override String get section8Body => '📩 По вопросам: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyRu implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Политика файлов cookie';
	@override String get lastUpdated => 'Последнее обновление: 2025';
	@override String get intro => 'Эта политика объясняет цифровые технологии, используемые в приложении.';
	@override String get important => 'ВАЖНО: Конфиденциальность детей — наш основной принцип. Приложение для пользователей от 6 лет.';
	@override String get section1Title => '1. ЧТО ТАКОЕ ФАЙЛЫ COOKIE?';
	@override String get section1Body => 'Файлы cookie — небольшие цифровые компоненты, помогающие приложению работать. Не идентифицируют вас напрямую.';
	@override String get section2Title => '2. КАКИЕ ТЕХНОЛОГИИ МЫ ИСПОЛЬЗУЕМ?';
	@override String get section2Body => 'Необходимые: управление сессиями и безопасность.\n\nАналитика: какие истории читаются, данные анонимны.\n\nПерсонализация: помнит языковые настройки.';
	@override String get section3Title => '3. ЗАЧЕМ МЫ ИХ ИСПОЛЬЗУЕМ?';
	@override String get section3Body => '- Безопасная работа приложения.\n- Плавный опыт чтения.\n- Запоминание настроек.\n- Определение будущих функций.';
	@override String get section4Title => '4. ТЕХНОЛОГИИ ТРЕТЬИХ СТОРОН';
	@override String get section4Body => 'Применяем минимальное использование данных с партнёрами.';
	@override String get section5Title => '5. УПРАВЛЕНИЕ';
	@override String get section5Body => 'Родители могут ограничить технологии через настройки устройства.';
	@override String get section6Title => '6. КОНТАКТ';
	@override String get section6Body => '📩 По вопросам: support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1Ru implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какой язык вы хотите\nизучить?';
	@override String get subtitle => 'Пожалуйста, выберите язык или языки,\nкоторые вы хотите изучить.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2Ru implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Какие истории вам\nнравятся?';
	@override String get subtitle => 'Пожалуйста, укажите свои предпочтения.';
	@override late final _TranslationsOnboardingStep2CategoriesRu categories = _TranslationsOnboardingStep2CategoriesRu._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingRu implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => 'Ваш личный аккаунт\n';
	@override String get titlePart2 => 'создаётся';
	@override String get subtitle => 'Мы создаём замечательные истории для вас';
	@override String get optimization => 'Оптимизация';
}

// Path: faq.questions
class _TranslationsFaqQuestionsRu implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Ru q1 = _TranslationsFaqQuestionsQ1Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ2Ru q2 = _TranslationsFaqQuestionsQ2Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ3Ru q3 = _TranslationsFaqQuestionsQ3Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ4Ru q4 = _TranslationsFaqQuestionsQ4Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ5Ru q5 = _TranslationsFaqQuestionsQ5Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ6Ru q6 = _TranslationsFaqQuestionsQ6Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ7Ru q7 = _TranslationsFaqQuestionsQ7Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ8Ru q8 = _TranslationsFaqQuestionsQ8Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ9Ru q9 = _TranslationsFaqQuestionsQ9Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ10Ru q10 = _TranslationsFaqQuestionsQ10Ru._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Ru implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Изучайте английский с помощью историй';
	@override String get description => 'Никакого скучного запоминания. Открывайте слова в их естественном потоке через короткие и увлекательные истории.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Ru implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Искусственный интеллект направляет вас';
	@override String get description => 'Он отслеживает слова, с которыми у вас возникают трудности, объясняет их значение и предлагает новые истории, адаптированные к вашему уровню.';
}

// Path: profile.sections
class _TranslationsProfileSectionsRu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'НАСТРОЙКИ УЧЕТНОЙ ЗАПИСИ';
	@override String get general => 'ОБЩИЕ';
}

// Path: profile.menu
class _TranslationsProfileMenuRu implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Редактировать профиль';
	@override String get notifications => 'Уведомления';
	@override String get premium => 'Премиум';
	@override String get appLanguage => 'Язык приложения';
	@override String get shareWithFriends => 'Поделиться с друзьями';
	@override String get enterInviteCode => 'Введите код приглашения';
	@override String get rateUs => 'Оцените нас';
	@override String get faq => 'FAQ';
	@override String get logout => 'Выйти';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogRu implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вы собираетесь выйти';
	@override String get message => 'До встречи! Мы продолжим отслеживать ваши дыхательные упражнения.';
	@override String get logoutButton => 'Выйти';
	@override String get cancelButton => 'Отмена';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanRu implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Премиум план';
	@override String get description => 'Разблокируйте ИИ-чатбота и\nполучите все премиум-функции';
	@override String get button => 'Получить Премиум';
	@override late final _TranslationsHomePremiumPlanDialogRu dialog = _TranslationsHomePremiumPlanDialogRu._(_root);
}

// Path: dayStreak.days
class _TranslationsDayStreakDaysRu implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get su => 'Вс';
	@override String get mo => 'Пн';
	@override String get tu => 'Вт';
	@override String get we => 'Ср';
	@override String get th => 'Чт';
	@override String get fr => 'Пт';
	@override String get sa => 'Сб';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsRu implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get bugReport => 'Сообщить об ошибке';
	@override String get storyContent => 'Содержание истории';
	@override String get audioIssue => 'Проблема со звуком';
	@override String get suggestion => 'Предложение';
	@override String get other => 'Другое';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessRu implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Успех!';
	@override String get message => 'Реферальный код успешно применен! Вы и ваш друг получили 1 неделю премиум-доступа.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsRu implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeRu missingCode = _TranslationsReferralCodeErrorsMissingCodeRu._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatRu invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatRu._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedRu alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedRu._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralRu selfReferral = _TranslationsReferralCodeErrorsSelfReferralRu._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundRu codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundRu._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorRu genericError = _TranslationsReferralCodeErrorsGenericErrorRu._(_root);
}

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesRu implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 Космические приключения';
	@override String get magic => '🦄 Волшебные миры';
	@override String get detectives => '🕵️ Маленькие детективы';
	@override String get animals => '🐾 Добрые друзья';
	@override String get dinosaurs => '🦖 Эпоха динозавров';
	@override String get superhero => '🦸 Супергерои';
	@override String get underwater => '🌊 Подводное царство';
	@override String get fairytale => '🏰 Сказки о принцах и принцессах';
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Ru implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Что такое это приложение?';
	@override String get answer => 'Это приложение помогает детям учить английский язык с помощью увлекательных историй. Слова появляются в контексте, их значение усваивается естественным образом, а с помощью повторений запоминается.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Ru implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Что делает искусственный интеллект?';
	@override String get answer => 'Он анализирует, с какими словами у ребенка возникают трудности, предоставляет простые объяснения и предлагает новые истории, соответствующие его уровню. Контент адаптируется к темпам обучения ребенка.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Ru implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Сколько времени в день достаточно?';
	@override String get answer => '5–10 минут в день достаточно. Даже короткая история эффективна для регулярного обучения.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Ru implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Для какой возрастной группы подходят истории?';
	@override String get answer => 'Истории подбираются в зависимости от возраста и уровня детей. Приложение определяет начальный уровень и настраивает сложность в зависимости от прогресса.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Ru implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Как ребенок учит незнакомые слова?';
	@override String get answer => 'При нажатии на незнакомое слово отображается его значение, простое объяснение и правильное произношение. Таким образом, слово читается и слышится.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Ru implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Требуется ли интернет-соединение?';
	@override String get answer => 'Загруженные истории можно читать в оффлайн-режиме. Для новых материалов и обновлений требуется интернет-соединение.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Ru implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Приложение бесплатное?';
	@override String get answer => 'Есть бесплатный доступ к основным историям. Более  истории, расширенная персонализация и дополнительные функции доступны в премиум-плане.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Ru implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Истории можно слушать в аудио?';
	@override String get answer => 'Да. Истории можно слушать с правильным произношением, что позволяет развивать навыки чтения и аудирования одновременно.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Ru implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Можно ли отслеживать изученные слова?';
	@override String get answer => 'Да. Изученные слова регистрируются и планируются для повторения через определенные интервалы. Это помогает уменьшить забывание.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Ru implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Как быстро можно увидеть прогресс?';
	@override String get answer => 'При регулярном использовании прогресс можно заметить в короткие сроки. С увеличением привычки к чтению улучшаются словарный запас и понимание.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogRu implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Функция недоступна';
	@override String get message => 'Эта функция в настоящее время недоступна.';
	@override String get button => 'ОК';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeRu implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Требуется код';
	@override String get message => 'Пожалуйста, введите реферальный код для продолжения.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatRu implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Неверный формат';
	@override String get message => 'Реферальный код должен содержать ровно 8 символов.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedRu implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Уже использован';
	@override String get message => 'Вы уже использовали реферальный код. Каждый пользователь может использовать только один код.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralRu implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Неверный код';
	@override String get message => 'Вы не можете использовать свой собственный код приглашения. Пожалуйста, используйте код друга.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundRu implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Код не найден';
	@override String get message => 'Введенный реферальный код не существует. Пожалуйста, проверьте и попробуйте снова.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorRu implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ошибка';
	@override String get message => 'Произошла ошибка при применении реферального кода. Пожалуйста, попробуйте снова.';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Добро пожаловать ${name}',
			'welcome2' => ({required Object appName}) => 'Добро пожаловать в ${appName}',
			'get_started' => 'Начать',
			'next' => 'Далее',
			'back' => 'Назад',
			'skip' => 'Пропустить',
			'kContinue' => 'Продолжить',
			'logintext' => 'Где каждое слово — это новое приключение, ожидающее своего рассказа.',
			'termOfService.text1' => 'Регистрируясь в swipe, вы соглашаетесь с нашими ',
			'termOfService.link1' => 'Условиями обслуживания',
			'termOfService.text2' => '. Узнайте, как мы обрабатываем ваши данные, в нашей ',
			'termOfService.link2' => 'Политике конфиденциальности',
			'termOfService.text3' => ' и ',
			'termOfService.link3' => 'Политике использования файлов cookie',
			'termOfService.text4' => '',
			'termOfService.privacyPolicy.title' => 'Политика конфиденциальности',
			'termOfService.privacyPolicy.lastUpdated' => 'Последнее обновление: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids принимает конфиденциальность детей как основной принцип.',
			'termOfService.privacyPolicy.section1Title' => '1. СОБИРАЕМАЯ ИНФОРМАЦИЯ',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Данные пользователя',
			'termOfService.privacyPolicy.section1sub1Body' => 'Псевдоним или имя профиля.\nАдрес электронной почты.\nВозрастная информация.\nУровень языка и выученные слова.\n\nПримечание: Не используются для медицинского анализа.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Автоматически собираемые данные',
			'termOfService.privacyPolicy.section1sub2Body' => 'Тип устройства, ОС и производительность. Точное местоположение НЕ собирается.',
			'termOfService.privacyPolicy.section2Title' => '2. ЦЕЛИ ОБРАБОТКИ',
			'termOfService.privacyPolicy.section2Body' => 'Данные используются для:\n\n- Безопасного контента по возрасту.\n- Персонализации обучения.\n- Улучшения производительности.\n- Юридических обязательств.',
			'termOfService.privacyPolicy.section3Title' => '3. ХРАНЕНИЕ И УДАЛЕНИЕ',
			'termOfService.privacyPolicy.section3Body' => 'Данные хранятся пока аккаунт активен. Записи поддержки до 12 месяцев. При удалении аккаунта данные стираются безвозвратно.',
			'termOfService.privacyPolicy.section4Title' => '4. ПРАВА ПОЛЬЗОВАТЕЛЕЙ',
			'termOfService.privacyPolicy.section4Body' => 'Согласно GDPR/KVKK, родители могут запросить доступ, исправление или удаление. support@fly-work.com',
			'termOfService.privacyPolicy.section5Title' => '5. КОНФИДЕНЦИАЛЬНОСТЬ ДЕТЕЙ',
			'termOfService.privacyPolicy.section5Body' => 'Для пользователей от 6 лет. Согласие родителей обязательно для младше 13 лет.',
			'termOfService.privacyPolicy.section6Title' => '6. КОНТАКТ',
			'termOfService.privacyPolicy.section6Body' => '📩 По вопросам: support@fly-work.com',
			'termOfService.termsOfService.title' => 'Условия использования',
			'termOfService.termsOfService.lastUpdated' => 'Последнее обновление: 2025',
			'termOfService.termsOfService.intro' => 'Настоящие Условия регулируют использование Lingola Stories Kids.',
			'termOfService.termsOfService.disclaimer' => 'Отказ от ответственности: Lingola Stories Kids — образовательный инструмент без официальной сертификации.',
			'termOfService.termsOfService.section1Title' => '1. ОБЪЁМ УСЛУГ',
			'termOfService.termsOfService.section1Body' => 'Приложение предоставляет обучение на историях:\n\n- Истории и рекомендации на базе ИИ.\n- Чтение по возрасту и уровню.\n- Поддержка словарного запаса и произношения.',
			'termOfService.termsOfService.section2Title' => '2. УСЛОВИЯ И ВОЗРАСТ',
			'termOfService.termsOfService.section2Body' => 'Не менее 6 лет.\nДо 18 лет под надзором родителей.\nТочные и актуальные данные аккаунта.',
			'termOfService.termsOfService.section3Title' => '3. ЗАПРЕЩЁННОЕ ИСПОЛЬЗОВАНИЕ',
			'termOfService.termsOfService.section3Body' => 'Несанкционированное копирование, обратная разработка и коммерческое использование запрещены.',
			'termOfService.termsOfService.section4Title' => '4. ПОДПИСКИ И ПЛАТЕЖИ',
			'termOfService.termsOfService.section4Body' => 'Премиум-функции регулируются политиками App Store и Google Play.',
			'termOfService.termsOfService.section5Title' => '5. ИНТЕЛЛЕКТУАЛЬНАЯ СОБСТВЕННОСТЬ',
			'termOfService.termsOfService.section5Body' => 'Весь контент принадлежит Lingola Stories Kids.',
			'termOfService.termsOfService.section6Title' => '6. ОГРАНИЧЕНИЕ ОТВЕТСТВЕННОСТИ',
			'termOfService.termsOfService.section6Body' => 'Приложение предоставляется как есть.',
			'termOfService.termsOfService.section7Title' => '7. ПРИМЕНИМОЕ ПРАВО',
			'termOfService.termsOfService.section7Body' => 'Законы Турецкой Республики. Юрисдикция судов Стамбула.',
			'termOfService.termsOfService.section8Title' => '8. КОНТАКТ',
			'termOfService.termsOfService.section8Body' => '📩 По вопросам: support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Политика файлов cookie',
			'termOfService.cookiePolicy.lastUpdated' => 'Последнее обновление: 2025',
			'termOfService.cookiePolicy.intro' => 'Эта политика объясняет цифровые технологии, используемые в приложении.',
			'termOfService.cookiePolicy.important' => 'ВАЖНО: Конфиденциальность детей — наш основной принцип. Приложение для пользователей от 6 лет.',
			'termOfService.cookiePolicy.section1Title' => '1. ЧТО ТАКОЕ ФАЙЛЫ COOKIE?',
			'termOfService.cookiePolicy.section1Body' => 'Файлы cookie — небольшие цифровые компоненты, помогающие приложению работать. Не идентифицируют вас напрямую.',
			'termOfService.cookiePolicy.section2Title' => '2. КАКИЕ ТЕХНОЛОГИИ МЫ ИСПОЛЬЗУЕМ?',
			'termOfService.cookiePolicy.section2Body' => 'Необходимые: управление сессиями и безопасность.\n\nАналитика: какие истории читаются, данные анонимны.\n\nПерсонализация: помнит языковые настройки.',
			'termOfService.cookiePolicy.section3Title' => '3. ЗАЧЕМ МЫ ИХ ИСПОЛЬЗУЕМ?',
			'termOfService.cookiePolicy.section3Body' => '- Безопасная работа приложения.\n- Плавный опыт чтения.\n- Запоминание настроек.\n- Определение будущих функций.',
			'termOfService.cookiePolicy.section4Title' => '4. ТЕХНОЛОГИИ ТРЕТЬИХ СТОРОН',
			'termOfService.cookiePolicy.section4Body' => 'Применяем минимальное использование данных с партнёрами.',
			'termOfService.cookiePolicy.section5Title' => '5. УПРАВЛЕНИЕ',
			'termOfService.cookiePolicy.section5Body' => 'Родители могут ограничить технологии через настройки устройства.',
			'termOfService.cookiePolicy.section6Title' => '6. КОНТАКТ',
			'termOfService.cookiePolicy.section6Body' => '📩 По вопросам: support@fly-work.com',
			'cookies' => 'Политика использования файлов cookie',
			'privacy' => 'Политика конфиденциальности',
			'onboarding.step1.title' => 'Какой язык вы хотите\nизучить?',
			'onboarding.step1.subtitle' => 'Пожалуйста, выберите язык или языки,\nкоторые вы хотите изучить.',
			'onboarding.step2.title' => 'Какие истории вам\nнравятся?',
			'onboarding.step2.subtitle' => 'Пожалуйста, укажите свои предпочтения.',
			'onboarding.step2.categories.space' => '🚀 Космические приключения',
			'onboarding.step2.categories.magic' => '🦄 Волшебные миры',
			'onboarding.step2.categories.detectives' => '🕵️ Маленькие детективы',
			'onboarding.step2.categories.animals' => '🐾 Добрые друзья',
			'onboarding.step2.categories.dinosaurs' => '🦖 Эпоха динозавров',
			'onboarding.step2.categories.superhero' => '🦸 Супергерои',
			'onboarding.step2.categories.underwater' => '🌊 Подводное царство',
			'onboarding.step2.categories.fairytale' => '🏰 Сказки о принцах и принцессах',
			'onboarding.loading.titlePart1' => 'Ваш личный аккаунт\n',
			'onboarding.loading.titlePart2' => 'создаётся',
			'onboarding.loading.subtitle' => 'Мы создаём замечательные истории для вас',
			'onboarding.loading.optimization' => 'Оптимизация',
			'pressBackAgainToExit' => 'Нажмите назад еще раз для выхода',
			'faq.title' => 'Часто задаваемые вопросы',
			'faq.questions.q1.question' => 'Что такое это приложение?',
			'faq.questions.q1.answer' => 'Это приложение помогает детям учить английский язык с помощью увлекательных историй. Слова появляются в контексте, их значение усваивается естественным образом, а с помощью повторений запоминается.',
			'faq.questions.q2.question' => 'Что делает искусственный интеллект?',
			'faq.questions.q2.answer' => 'Он анализирует, с какими словами у ребенка возникают трудности, предоставляет простые объяснения и предлагает новые истории, соответствующие его уровню. Контент адаптируется к темпам обучения ребенка.',
			'faq.questions.q3.question' => 'Сколько времени в день достаточно?',
			'faq.questions.q3.answer' => '5–10 минут в день достаточно. Даже короткая история эффективна для регулярного обучения.',
			'faq.questions.q4.question' => 'Для какой возрастной группы подходят истории?',
			'faq.questions.q4.answer' => 'Истории подбираются в зависимости от возраста и уровня детей. Приложение определяет начальный уровень и настраивает сложность в зависимости от прогресса.',
			'faq.questions.q5.question' => 'Как ребенок учит незнакомые слова?',
			'faq.questions.q5.answer' => 'При нажатии на незнакомое слово отображается его значение, простое объяснение и правильное произношение. Таким образом, слово читается и слышится.',
			'faq.questions.q6.question' => 'Требуется ли интернет-соединение?',
			'faq.questions.q6.answer' => 'Загруженные истории можно читать в оффлайн-режиме. Для новых материалов и обновлений требуется интернет-соединение.',
			'faq.questions.q7.question' => 'Приложение бесплатное?',
			'faq.questions.q7.answer' => 'Есть бесплатный доступ к основным историям. Более  истории, расширенная персонализация и дополнительные функции доступны в премиум-плане.',
			'faq.questions.q8.question' => 'Истории можно слушать в аудио?',
			'faq.questions.q8.answer' => 'Да. Истории можно слушать с правильным произношением, что позволяет развивать навыки чтения и аудирования одновременно.',
			'faq.questions.q9.question' => 'Можно ли отслеживать изученные слова?',
			'faq.questions.q9.answer' => 'Да. Изученные слова регистрируются и планируются для повторения через определенные интервалы. Это помогает уменьшить забывание.',
			'faq.questions.q10.question' => 'Как быстро можно увидеть прогресс?',
			'faq.questions.q10.answer' => 'При регулярном использовании прогресс можно заметить в короткие сроки. С увеличением привычки к чтению улучшаются словарный запас и понимание.',
			'good_morning' => 'Доброе утро',
			'good_afternoon' => 'Добрый день',
			'good_evening' => 'Добрый вечер',
			'splash.screen1.title' => 'Изучайте английский с помощью историй',
			'splash.screen1.description' => 'Никакого скучного запоминания. Открывайте слова в их естественном потоке через короткие и увлекательные истории.',
			'splash.screen2.title' => 'Искусственный интеллект направляет вас',
			'splash.screen2.description' => 'Он отслеживает слова, с которыми у вас возникают трудности, объясняет их значение и предлагает новые истории, адаптированные к вашему уровню.',
			'profile.title' => 'Профиль',
			'profile.freeVersion' => 'Бесплатная версия',
			'profile.error' => 'Ошибка',
			'profile.passive' => 'Неактивный',
			'profile.sections.accountSettings' => 'НАСТРОЙКИ УЧЕТНОЙ ЗАПИСИ',
			'profile.sections.general' => 'ОБЩИЕ',
			'profile.menu.editProfile' => 'Редактировать профиль',
			'profile.menu.notifications' => 'Уведомления',
			'profile.menu.premium' => 'Премиум',
			'profile.menu.appLanguage' => 'Язык приложения',
			'profile.menu.shareWithFriends' => 'Поделиться с друзьями',
			'profile.menu.enterInviteCode' => 'Введите код приглашения',
			'profile.menu.rateUs' => 'Оцените нас',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Выйти',
			'profile.manage' => 'УПРАВЛЯТЬ',
			'profile.logoutDialog.title' => 'Вы собираетесь выйти',
			'profile.logoutDialog.message' => 'До встречи! Мы продолжим отслеживать ваши дыхательные упражнения.',
			'profile.logoutDialog.logoutButton' => 'Выйти',
			'profile.logoutDialog.cancelButton' => 'Отмена',
			'home.premium' => 'Премиум!',
			'home.seeMore' => 'Смотреть больше',
			'home.pickUpWhereYouLeftOff' => 'Продолжить с того места',
			'home.premiumSection' => 'Премиум',
			'home.history' => 'История',
			'home.librarySection' => 'Библиотека',
			'home.libraryDescription' => 'Сохранённые слова появятся здесь.',
			'home.upgradeToPremium' => 'Перейти на Премиум',
			'home.unlimitedStories' => 'Неограниченные истории и без рекламы',
			'home.premiumPlan.title' => 'Премиум план',
			'home.premiumPlan.description' => 'Разблокируйте ИИ-чатбота и\nполучите все премиум-функции',
			'home.premiumPlan.button' => 'Получить Премиум',
			'home.premiumPlan.dialog.title' => 'Функция недоступна',
			'home.premiumPlan.dialog.message' => 'Эта функция в настоящее время недоступна.',
			'home.premiumPlan.dialog.button' => 'ОК',
			'allStories.title' => 'Все истории',
			'allStories.noStoriesFound' => 'Истории не найдены',
			'allStories.selectFilter' => 'Выбрать фильтр',
			'allStories.category' => 'Категория',
			'allStories.categorySubtitle' => 'Пожалуйста, выберите категорию для чтения',
			'allStories.apply' => 'Применить',
			'stories.title' => 'Истории',
			'stories.popularStories' => 'Популярные истории',
			'stories.recommendForYou' => 'Рекомендуем для вас',
			'stories.allStories' => 'Все истории',
			'stories.seeAll' => 'Смотреть все',
			'library.title' => 'Библиотека',
			'library.wordCount' => ({required Object count}) => '${count} Слов',
			'library.popularWords' => 'Популярные слова',
			'library.allWords' => 'Все слова',
			'library.searchWord' => 'Поиск слов',
			'library.searchHint' => 'Введите слово…',
			'bottomNav.home' => 'Главная',
			'bottomNav.stories' => 'Истории',
			'bottomNav.library' => 'Библиотека',
			'bottomNav.profile' => 'Профиль',
			'dayStreak.title' => 'Серия дней!',
			'dayStreak.days.su' => 'Вс',
			'dayStreak.days.mo' => 'Пн',
			'dayStreak.days.tu' => 'Вт',
			'dayStreak.days.we' => 'Ср',
			'dayStreak.days.th' => 'Чт',
			'dayStreak.days.fr' => 'Пт',
			'dayStreak.days.sa' => 'Сб',
			'storyDetails.introduction' => 'Введение',
			'storyDetails.saved' => 'Сохранено',
			'storyDetails.removed' => 'Удалено',
			'storyDetails.storyAddedToLibrary' => 'История добавлена в вашу библиотеку.',
			'storyDetails.storyRemovedFromLibrary' => 'История удалена из библиотеки.',
			'storyDetails.wordAddedToLibrary' => 'Слово добавлено в библиотеку. Отменить',
			'storyDetails.successfully' => 'Успешно',
			'storyDetails.ratingSubmitted' => 'Ваша оценка успешно отправлена.',
			'storyDetails.warning' => 'Предупреждение',
			'storyDetails.fillAllFields' => 'Пожалуйста, заполните все поля.',
			'storyDetails.messageSent' => 'Ваше сообщение успешно отправлено.',
			'storyDetails.translate' => 'Перевести',
			'storyDetails.speak' => 'Говорить',
			'storyDetails.like' => 'Нравится',
			'storyDetails.save' => 'Сохранить',
			'storyDetails.feedback' => 'Отзыв',
			'storyDetails.rating' => 'Оценка',
			'storyDetails.stop' => 'Стоп',
			'storyDetails.start' => 'Старт',
			'storyDetails.listen' => 'Слушать',
			'storyDetails.translation' => 'Перевод',
			'storyDetails.translating' => 'Перевод...',
			'storyDetails.saveToLibrary' => 'Сохранить в библиотеку',
			'storyDetails.rateThisStory' => 'Оценить эту историю',
			'storyDetails.enjoyStory' => 'Насколько вам понравилась эта история?',
			'storyDetails.send' => 'Отправить',
			'storyDetails.subject' => 'Тема',
			'storyDetails.feedbackSubjects.bugReport' => 'Сообщить об ошибке',
			'storyDetails.feedbackSubjects.storyContent' => 'Содержание истории',
			'storyDetails.feedbackSubjects.audioIssue' => 'Проблема со звуком',
			'storyDetails.feedbackSubjects.suggestion' => 'Предложение',
			'storyDetails.feedbackSubjects.other' => 'Другое',
			'share.title' => 'Поделиться с друзьями',
			'share.mainTitle' => 'Поделитесь миром',
			'share.descriptionPart1' => 'Пригласите друзей дышать вместе.\nЗа каждое приглашение вы оба получаете ',
			'share.descriptionPart2' => '1 неделю Премиум',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'ВАШ КОД ПРИГЛАШЕНИЯ',
			'share.codeCopied' => 'Код скопирован!',
			'share.copyCode' => 'Копировать код',
			'share.inviteDescription' => 'Пригласите друзей и учитесь\nвместе',
			'share.linkCopied' => 'Скопировано',
			'share.linkCopiedMessage' => 'Ссылка скопирована в буфер обмена.',
			'delete' => 'Удалить',
			'editProfile.title' => 'Редактировать профиль',
			'editProfile.changePhoto' => 'Изменить аватар',
			'editProfile.learnLanguage' => 'Выбрать язык обучения',
			'editProfile.fullName' => 'Полное имя',
			'editProfile.email' => 'Электронная почта',
			'editProfile.age' => 'Возраст',
			'editProfile.save' => 'Сохранить',
			'editProfile.saving' => 'Сохранение...',
			'editProfile.updateSuccess' => 'Профиль успешно обновлен',
			'editProfile.updateError' => 'Произошла ошибка при обновлении профиля',
			'editProfile.deleteAccount' => 'Удалить аккаунт',
			'notifications.title' => 'Уведомления',
			'notifications.emptyTitle' => 'Пока нет уведомлений',
			'notifications.emptyDescription' => 'Мы уведомим вас, когда будет важное обновление о вашем пути обучения.',
			'notifications.premiumBannerTitle' => 'Не упустите\nпреимущества Премиум!',
			'notifications.premiumBannerDescription' => 'Используйте возможности подписчика Премиум.',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Продолжить как гость',
			'auth.signInFailed' => ({required Object error}) => 'Вход не выполнен: ${error}',
			'cancel' => 'Отмена',
			'deleteAccount' => 'Удалить аккаунт',
			'deleteDialogTitle' => 'Вы уверены, что хотите удалить свой аккаунт?',
			'deleteDialogDescription' => 'Это действие необратимо и навсегда удалит всю вашу историю упражнений и данные.',
			'deleteError' => 'Произошла ошибка при удалении вашего аккаунта. Пожалуйста, попробуйте снова.',
			'enterInvitationCode' => 'Введите код приглашения',
			'inviteFriends' => 'Введите код приглашения, полученный от друга.\nВведите его в соответствующее поле',
			'twoDaysPremium' => '7 дней Премиум',
			'advantage' => '\nчтобы воспользоваться его преимуществами.',
			'send' => 'Отправить',
			'referralCode.inputPlaceholder' => 'Введите 8-значный код',
			'referralCode.applying' => 'Применение кода...',
			'referralCode.success.title' => 'Успех!',
			'referralCode.success.message' => 'Реферальный код успешно применен! Вы и ваш друг получили 1 неделю премиум-доступа.',
			'referralCode.errors.missingCode.title' => 'Требуется код',
			'referralCode.errors.missingCode.message' => 'Пожалуйста, введите реферальный код для продолжения.',
			'referralCode.errors.invalidFormat.title' => 'Неверный формат',
			'referralCode.errors.invalidFormat.message' => 'Реферальный код должен содержать ровно 8 символов.',
			'referralCode.errors.alreadyUsed.title' => 'Уже использован',
			'referralCode.errors.alreadyUsed.message' => 'Вы уже использовали реферальный код. Каждый пользователь может использовать только один код.',
			'referralCode.errors.selfReferral.title' => 'Неверный код',
			'referralCode.errors.selfReferral.message' => 'Вы не можете использовать свой собственный код приглашения. Пожалуйста, используйте код друга.',
			'referralCode.errors.codeNotFound.title' => 'Код не найден',
			'referralCode.errors.codeNotFound.message' => 'Введенный реферальный код не существует. Пожалуйста, проверьте и попробуйте снова.',
			'referralCode.errors.genericError.title' => 'Ошибка',
			'referralCode.errors.genericError.message' => 'Произошла ошибка при применении реферального кода. Пожалуйста, попробуйте снова.',
			'deleteNotifications' => 'Удалить уведомления',
			'deleteNotificationsDescription' => 'Вы уверены, что хотите удалить все\nваши уведомления? Это действие необратимо.',
			'deleteAll' => 'Удалить все',
			'appLanguage' => 'Язык приложения',
			'selectLanguage' => 'Выберите предпочитаемый язык',
			'save' => 'Сохранить',
			'languageOptions.english' => 'Английский',
			'languageOptions.german' => 'Немецкий',
			'languageOptions.italian' => 'Итальянский',
			'languageOptions.french' => 'Французский',
			'languageOptions.japanese' => 'Японский',
			'languageOptions.spanish' => 'Испанский',
			'languageOptions.russian' => 'Русский',
			'languageOptions.turkish' => 'Турецкий',
			'languageOptions.korean' => 'Корейский',
			'languageOptions.hindi' => 'Хинди',
			'languageOptions.portuguese' => 'Португальский',
			_ => null,
		};
	}
}
