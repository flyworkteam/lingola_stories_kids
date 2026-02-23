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
	@override String get pressBackAgainToExit => 'Нажмите назад еще раз для выхода';
	@override late final _TranslationsFaqRu faq = _TranslationsFaqRu._(_root);
	@override String get good_morning => 'Доброе утро';
	@override String get good_afternoon => 'Добрый день';
	@override String get good_evening => 'Добрый вечер';
	@override late final _TranslationsSplashRu splash = _TranslationsSplashRu._(_root);
	@override late final _TranslationsProfileRu profile = _TranslationsProfileRu._(_root);
	@override late final _TranslationsHomeRu home = _TranslationsHomeRu._(_root);
	@override late final _TranslationsEditProfileRu editProfile = _TranslationsEditProfileRu._(_root);
	@override late final _TranslationsNotificationsRu notifications = _TranslationsNotificationsRu._(_root);
	@override late final _TranslationsShareRu share = _TranslationsShareRu._(_root);
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
	@override late final _TranslationsHomePremiumPlanRu premiumPlan = _TranslationsHomePremiumPlanRu._(_root);
}

// Path: editProfile
class _TranslationsEditProfileRu implements TranslationsEditProfileEn {
	_TranslationsEditProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override String get changePhoto => 'Изменить фото';
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
	@override String get supportAndOther => 'ПОДДЕРЖКА И ДРУГОЕ';
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
			'cookies' => 'Политика использования файлов cookie',
			'privacy' => 'Политика конфиденциальности',
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
			'profile.sections.accountSettings' => 'НАСТРОЙКИ УЧЕТНОЙ ЗАПИСИ',
			'profile.sections.supportAndOther' => 'ПОДДЕРЖКА И ДРУГОЕ',
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
			'home.premiumPlan.title' => 'Премиум план',
			'home.premiumPlan.description' => 'Разблокируйте ИИ-чатбота и\nполучите все премиум-функции',
			'home.premiumPlan.button' => 'Получить Премиум',
			'home.premiumPlan.dialog.title' => 'Функция недоступна',
			'home.premiumPlan.dialog.message' => 'Эта функция в настоящее время недоступна.',
			'home.premiumPlan.dialog.button' => 'ОК',
			'editProfile.title' => 'Редактировать профиль',
			'editProfile.changePhoto' => 'Изменить фото',
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
			'share.title' => 'Поделиться с друзьями',
			'share.mainTitle' => 'Поделитесь миром',
			'share.descriptionPart1' => 'Пригласите друзей дышать вместе.\nЗа каждое приглашение вы оба получаете ',
			'share.descriptionPart2' => '1 неделю Премиум',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'ВАШ КОД ПРИГЛАШЕНИЯ',
			'share.codeCopied' => 'Код скопирован!',
			'share.copyCode' => 'Копировать код',
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
