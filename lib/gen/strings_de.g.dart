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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Willkommen ${name}';
	@override String welcome2({required Object appName}) => 'Willkommen bei ${appName}';
	@override String get get_started => 'Loslegen';
	@override String get next => 'Weiter';
	@override String get back => 'Zurück';
	@override String get kContinue => 'Weiter';
	@override String get skip => 'Überspringen';
	@override String get logintext => 'Wo jedes Wort ein neues Abenteuer ist, das darauf wartet, erzählt zu werden.';
	@override late final _TranslationsTermOfServiceDe termOfService = _TranslationsTermOfServiceDe._(_root);
	@override String get cookies => 'Cookie-Richtlinie';
	@override String get privacy => 'Datenschutzrichtlinie';
	@override String get pressBackAgainToExit => 'Drücken Sie erneut zurück, um zu beenden';
	@override late final _TranslationsFaqDe faq = _TranslationsFaqDe._(_root);
	@override String get good_morning => 'Guten Morgen';
	@override String get good_afternoon => 'Guten Tag';
	@override String get good_evening => 'Guten Abend';
	@override late final _TranslationsSplashDe splash = _TranslationsSplashDe._(_root);
	@override late final _TranslationsProfileDe profile = _TranslationsProfileDe._(_root);
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
	@override late final _TranslationsEditProfileDe editProfile = _TranslationsEditProfileDe._(_root);
	@override late final _TranslationsNotificationsDe notifications = _TranslationsNotificationsDe._(_root);
	@override late final _TranslationsShareDe share = _TranslationsShareDe._(_root);
	@override late final _TranslationsAuthDe auth = _TranslationsAuthDe._(_root);
	@override String get cancel => 'Abbrechen';
	@override String get deleteAccount => 'Konto löschen';
	@override String get deleteDialogTitle => 'Sind Sie sicher, dass Sie Ihr Konto löschen möchten?';
	@override String get deleteDialogDescription => 'Diese Aktion ist irreversibel und löscht dauerhaft alle Ihre Übungshistorie und Daten.';
	@override String get deleteError => 'Beim Löschen Ihres Kontos ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.';
	@override String get enterInvitationCode => 'Einladungscode eingeben';
	@override String get inviteFriends => 'Gib den Einladungscode ein, den du von einem Freund erhalten hast.\nTippe ihn in das vorgesehene Feld';
	@override String get twoDaysPremium => '7 Tage Premium';
	@override String get advantage => '\num die Vorteile zu genießen.';
	@override String get send => 'Senden';
	@override late final _TranslationsReferralCodeDe referralCode = _TranslationsReferralCodeDe._(_root);
	@override String get deleteNotifications => 'Benachrichtigungen löschen';
	@override String get deleteNotificationsDescription => 'Sind Sie sicher, dass Sie alle\nIhre Benachrichtigungen löschen möchten? Diese Aktion ist irreversibel und kann nicht rückgängig gemacht werden.';
	@override String get deleteAll => 'Alle löschen';
	@override String get appLanguage => 'App-Sprache';
	@override String get selectLanguage => 'Wählen Sie Ihre bevorzugte Sprache';
	@override String get save => 'Speichern';
	@override late final _TranslationsLanguageOptionsDe languageOptions = _TranslationsLanguageOptionsDe._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceDe implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Durch die Anmeldung bei Swipe stimmen Sie unseren ';
	@override String get link1 => 'Nutzungsbedingungen';
	@override String get text2 => ' zu. Erfahren Sie, wie wir Ihre Daten in unserer ';
	@override String get link2 => 'Datenschutzrichtlinie';
	@override String get text3 => ' und ';
	@override String get link3 => 'Cookie-Richtlinie';
	@override String get text4 => ' verarbeiten';
}

// Path: faq
class _TranslationsFaqDe implements TranslationsFaqEn {
	_TranslationsFaqDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Häufig gestellte Fragen';
	@override late final _TranslationsFaqQuestionsDe questions = _TranslationsFaqQuestionsDe._(_root);
}

// Path: splash
class _TranslationsSplashDe implements TranslationsSplashEn {
	_TranslationsSplashDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1De screen1 = _TranslationsSplashScreen1De._(_root);
	@override late final _TranslationsSplashScreen2De screen2 = _TranslationsSplashScreen2De._(_root);
}

// Path: profile
class _TranslationsProfileDe implements TranslationsProfileEn {
	_TranslationsProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get freeVersion => 'Kostenlose Version';
	@override String get error => 'Fehler';
	@override late final _TranslationsProfileSectionsDe sections = _TranslationsProfileSectionsDe._(_root);
	@override late final _TranslationsProfileMenuDe menu = _TranslationsProfileMenuDe._(_root);
	@override String get manage => 'VERWALTEN';
	@override late final _TranslationsProfileLogoutDialogDe logoutDialog = _TranslationsProfileLogoutDialogDe._(_root);
}

// Path: home
class _TranslationsHomeDe implements TranslationsHomeEn {
	_TranslationsHomeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get seeMore => 'Mehr sehen';
	@override late final _TranslationsHomePremiumPlanDe premiumPlan = _TranslationsHomePremiumPlanDe._(_root);
}

// Path: editProfile
class _TranslationsEditProfileDe implements TranslationsEditProfileEn {
	_TranslationsEditProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override String get changePhoto => 'Foto ändern';
	@override String get fullName => 'Vollständiger Name';
	@override String get email => 'E-Mail';
	@override String get age => 'Alter';
	@override String get save => 'Speichern';
	@override String get saving => 'Wird gespeichert...';
	@override String get updateSuccess => 'Profil erfolgreich aktualisiert';
	@override String get updateError => 'Beim Aktualisieren des Profils ist ein Fehler aufgetreten';
	@override String get deleteAccount => 'Konto löschen';
}

// Path: notifications
class _TranslationsNotificationsDe implements TranslationsNotificationsEn {
	_TranslationsNotificationsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benachrichtigungen';
	@override String get emptyTitle => 'Noch keine Benachrichtigungen';
	@override String get emptyDescription => 'Wir benachrichtigen Sie, wenn es ein wichtiges Update zu Ihrer Lernreise gibt.';
	@override String get premiumBannerTitle => 'Verpassen Sie nicht die\nPremium-Vorteile!';
	@override String get premiumBannerDescription => 'Nutzen Sie die Möglichkeiten als Premium-Abonnent.';
}

// Path: share
class _TranslationsShareDe implements TranslationsShareEn {
	_TranslationsShareDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Freunden teilen';
	@override String get mainTitle => 'Teilen Sie den Frieden';
	@override String get descriptionPart1 => 'Laden Sie Ihre Freunde ein, gemeinsam zu atmen.\nFür jede Einladung erhalten Sie beide ';
	@override String get descriptionPart2 => '1 Woche Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'IHR EMPFEHLUNGSCODE';
	@override String get codeCopied => 'Code kopiert!';
	@override String get copyCode => 'Code kopieren';
}

// Path: auth
class _TranslationsAuthDe implements TranslationsAuthEn {
	_TranslationsAuthDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get guest => 'Als Gast fortfahren';
	@override String get google => 'Weiter mit Google';
	@override String get facebook => 'Weiter mit Facebook';
	@override String get apple => 'Weiter mit Apple';
	@override String signInFailed({required Object error}) => 'Anmeldung fehlgeschlagen: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeDe implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8-stelligen Code eingeben';
	@override String get applying => 'Code wird angewendet...';
	@override late final _TranslationsReferralCodeSuccessDe success = _TranslationsReferralCodeSuccessDe._(_root);
	@override late final _TranslationsReferralCodeErrorsDe errors = _TranslationsReferralCodeErrorsDe._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsDe implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get english => 'Englisch';
	@override String get german => 'Deutsch';
	@override String get italian => 'Italienisch';
	@override String get french => 'Französisch';
	@override String get japanese => 'Japanisch';
	@override String get spanish => 'Spanisch';
	@override String get russian => 'Russisch';
	@override String get turkish => 'Türkisch';
	@override String get korean => 'Koreanisch';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portugiesisch';
}

// Path: faq.questions
class _TranslationsFaqQuestionsDe implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1De q1 = _TranslationsFaqQuestionsQ1De._(_root);
	@override late final _TranslationsFaqQuestionsQ2De q2 = _TranslationsFaqQuestionsQ2De._(_root);
	@override late final _TranslationsFaqQuestionsQ3De q3 = _TranslationsFaqQuestionsQ3De._(_root);
	@override late final _TranslationsFaqQuestionsQ4De q4 = _TranslationsFaqQuestionsQ4De._(_root);
	@override late final _TranslationsFaqQuestionsQ5De q5 = _TranslationsFaqQuestionsQ5De._(_root);
	@override late final _TranslationsFaqQuestionsQ6De q6 = _TranslationsFaqQuestionsQ6De._(_root);
	@override late final _TranslationsFaqQuestionsQ7De q7 = _TranslationsFaqQuestionsQ7De._(_root);
	@override late final _TranslationsFaqQuestionsQ8De q8 = _TranslationsFaqQuestionsQ8De._(_root);
	@override late final _TranslationsFaqQuestionsQ9De q9 = _TranslationsFaqQuestionsQ9De._(_root);
	@override late final _TranslationsFaqQuestionsQ10De q10 = _TranslationsFaqQuestionsQ10De._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1De implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Englisch lernen mit Geschichten';
	@override String get description => 'Keine langweilige Auswendiglernerei. Entdecken Sie Wörter in ihrem natürlichen Fluss durch kurze und unterhaltsame Geschichten.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2De implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Künstliche Intelligenz führt Sie';
	@override String get description => 'Sie verfolgt die Wörter, mit denen Sie Schwierigkeiten haben, erklärt deren Bedeutung und schlägt neue Geschichten vor, die auf Ihr Niveau zugeschnitten sind.';
}

// Path: profile.sections
class _TranslationsProfileSectionsDe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'KONTOEINSTELLUNGEN';
	@override String get supportAndOther => 'SUPPORT & SONSTIGES';
}

// Path: profile.menu
class _TranslationsProfileMenuDe implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Profil bearbeiten';
	@override String get notifications => 'Benachrichtigungen';
	@override String get premium => 'Premium';
	@override String get appLanguage => 'App-Sprache';
	@override String get shareWithFriends => 'Mit Freunden teilen';
	@override String get enterInviteCode => 'Einladungscode eingeben';
	@override String get rateUs => 'Bewerten Sie uns';
	@override String get faq => 'FAQ';
	@override String get logout => 'Abmelden';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogDe implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sie sind dabei, sich abzumelden';
	@override String get message => 'Bis bald! Wir werden Ihre Atemübungen weiter verfolgen.';
	@override String get logoutButton => 'Abmelden';
	@override String get cancelButton => 'Abbrechen';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanDe implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Premium-Plan';
	@override String get description => 'Schalten Sie Ihren KI-Chatbot frei &\nerhalten Sie alle Premium-Funktionen';
	@override String get button => 'Premium erhalten';
	@override late final _TranslationsHomePremiumPlanDialogDe dialog = _TranslationsHomePremiumPlanDialogDe._(_root);
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessDe implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erfolg!';
	@override String get message => 'Empfehlungscode erfolgreich angewendet! Sowohl du als auch dein Freund haben 1 Woche Premium erhalten.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsDe implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeDe missingCode = _TranslationsReferralCodeErrorsMissingCodeDe._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatDe invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatDe._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedDe alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedDe._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralDe selfReferral = _TranslationsReferralCodeErrorsSelfReferralDe._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundDe codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundDe._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorDe genericError = _TranslationsReferralCodeErrorsGenericErrorDe._(_root);
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1De implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Was ist der Zweck dieser App?';
	@override String get answer => 'Sie hilft Kindern, Englisch durch unterhaltsame Geschichten zu lernen. Wörter werden im Kontext gesehen, intuitiv gelernt und durch Wiederholungen verstärkt.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2De implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Was macht die KI hier?';
	@override String get answer => 'Sie analysiert, mit welchen Wörtern das Kind Schwierigkeiten hat, bietet einfache Erklärungen an und schlägt neue Geschichten vor, die für dessen Niveau geeignet sind. Der Inhalt wird an das Lerntempo des Kindes angepasst.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3De implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Wie viel Zeit ist täglich ausreichend?';
	@override String get answer => '5–10 Minuten pro Tag sind ausreichend. Selbst eine kurze Geschichte ist effektiv für das regelmäßige Lernen.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4De implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Für welche Altersgruppe sind die Geschichten geeignet?';
	@override String get answer => 'Die Geschichten werden entsprechend dem Alter und Niveau des Kindes präsentiert. Die App bestimmt zu Beginn das Niveau und passt die Schwierigkeit basierend auf dem Fortschritt an.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5De implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Wie lernt das Kind unbekannte Wörter?';
	@override String get answer => 'Wenn das Kind auf ein unbekanntes Wort tippt, wird dessen Bedeutung, eine einfache Erklärung und die korrekte Aussprache angezeigt. So wird das Wort sowohl gelesen als auch gehört.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6De implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Ist ein Internetanschluss erforderlich?';
	@override String get answer => 'Bereits heruntergeladene Geschichten können offline gelesen werden. Ein Internetanschluss ist für neue Inhalte und Updates erforderlich.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7De implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Ist die App kostenlos?';
	@override String get answer => 'Grundlegende Geschichten sind kostenlos verfügbar. Weitere Geschichten, erweiterte Personalisierung und zusätzliche Funktionen sind im Premium-Paket enthalten.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8De implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Können die Geschichten angehört werden?';
	@override String get answer => 'Ja. Die Geschichten können mit korrekter Aussprache angehört werden. So entwickeln sich sowohl Lese- als auch Hörfähigkeiten gemeinsam.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9De implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Können die gelernten Wörter verfolgt werden?';
	@override String get answer => 'Ja. Die gelernten Wörter werden aufgezeichnet und sollen in bestimmten Abständen wiederholt werden. So kann das Vergessen reduziert werden.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10De implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Wie lange dauert es, Fortschritte zu sehen?';
	@override String get answer => 'Mit regelmäßiger Nutzung kann Fortschritt in kurzer Zeit sichtbar werden. Mit zunehmenden Lesegewohnheiten verbessern sich Wortschatz und Verständnisfähigkeiten.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogDe implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Funktion nicht verfügbar';
	@override String get message => 'Diese Funktion ist derzeit nicht verfügbar.';
	@override String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeDe implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code erforderlich';
	@override String get message => 'Bitte gib einen Empfehlungscode ein, um fortzufahren.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatDe implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ungültiges Format';
	@override String get message => 'Der Empfehlungscode muss genau 8 Zeichen lang sein.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedDe implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bereits verwendet';
	@override String get message => 'Du hast bereits einen Empfehlungscode verwendet. Jeder Benutzer kann nur einen Code verwenden.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralDe implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ungültiger Code';
	@override String get message => 'Du kannst deinen eigenen Einladungscode nicht verwenden. Bitte verwende einen Code von einem Freund.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundDe implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code nicht gefunden';
	@override String get message => 'Der eingegebene Empfehlungscode existiert nicht. Bitte überprüfe ihn und versuche es erneut.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorDe implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fehler';
	@override String get message => 'Beim Anwenden des Empfehlungscodes ist ein Fehler aufgetreten. Bitte versuche es erneut.';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Willkommen ${name}',
			'welcome2' => ({required Object appName}) => 'Willkommen bei ${appName}',
			'get_started' => 'Loslegen',
			'next' => 'Weiter',
			'back' => 'Zurück',
			'kContinue' => 'Weiter',
			'skip' => 'Überspringen',
			'logintext' => 'Wo jedes Wort ein neues Abenteuer ist, das darauf wartet, erzählt zu werden.',
			'termOfService.text1' => 'Durch die Anmeldung bei Swipe stimmen Sie unseren ',
			'termOfService.link1' => 'Nutzungsbedingungen',
			'termOfService.text2' => ' zu. Erfahren Sie, wie wir Ihre Daten in unserer ',
			'termOfService.link2' => 'Datenschutzrichtlinie',
			'termOfService.text3' => ' und ',
			'termOfService.link3' => 'Cookie-Richtlinie',
			'termOfService.text4' => ' verarbeiten',
			'cookies' => 'Cookie-Richtlinie',
			'privacy' => 'Datenschutzrichtlinie',
			'pressBackAgainToExit' => 'Drücken Sie erneut zurück, um zu beenden',
			'faq.title' => 'Häufig gestellte Fragen',
			'faq.questions.q1.question' => 'Was ist der Zweck dieser App?',
			'faq.questions.q1.answer' => 'Sie hilft Kindern, Englisch durch unterhaltsame Geschichten zu lernen. Wörter werden im Kontext gesehen, intuitiv gelernt und durch Wiederholungen verstärkt.',
			'faq.questions.q2.question' => 'Was macht die KI hier?',
			'faq.questions.q2.answer' => 'Sie analysiert, mit welchen Wörtern das Kind Schwierigkeiten hat, bietet einfache Erklärungen an und schlägt neue Geschichten vor, die für dessen Niveau geeignet sind. Der Inhalt wird an das Lerntempo des Kindes angepasst.',
			'faq.questions.q3.question' => 'Wie viel Zeit ist täglich ausreichend?',
			'faq.questions.q3.answer' => '5–10 Minuten pro Tag sind ausreichend. Selbst eine kurze Geschichte ist effektiv für das regelmäßige Lernen.',
			'faq.questions.q4.question' => 'Für welche Altersgruppe sind die Geschichten geeignet?',
			'faq.questions.q4.answer' => 'Die Geschichten werden entsprechend dem Alter und Niveau des Kindes präsentiert. Die App bestimmt zu Beginn das Niveau und passt die Schwierigkeit basierend auf dem Fortschritt an.',
			'faq.questions.q5.question' => 'Wie lernt das Kind unbekannte Wörter?',
			'faq.questions.q5.answer' => 'Wenn das Kind auf ein unbekanntes Wort tippt, wird dessen Bedeutung, eine einfache Erklärung und die korrekte Aussprache angezeigt. So wird das Wort sowohl gelesen als auch gehört.',
			'faq.questions.q6.question' => 'Ist ein Internetanschluss erforderlich?',
			'faq.questions.q6.answer' => 'Bereits heruntergeladene Geschichten können offline gelesen werden. Ein Internetanschluss ist für neue Inhalte und Updates erforderlich.',
			'faq.questions.q7.question' => 'Ist die App kostenlos?',
			'faq.questions.q7.answer' => 'Grundlegende Geschichten sind kostenlos verfügbar. Weitere Geschichten, erweiterte Personalisierung und zusätzliche Funktionen sind im Premium-Paket enthalten.',
			'faq.questions.q8.question' => 'Können die Geschichten angehört werden?',
			'faq.questions.q8.answer' => 'Ja. Die Geschichten können mit korrekter Aussprache angehört werden. So entwickeln sich sowohl Lese- als auch Hörfähigkeiten gemeinsam.',
			'faq.questions.q9.question' => 'Können die gelernten Wörter verfolgt werden?',
			'faq.questions.q9.answer' => 'Ja. Die gelernten Wörter werden aufgezeichnet und sollen in bestimmten Abständen wiederholt werden. So kann das Vergessen reduziert werden.',
			'faq.questions.q10.question' => 'Wie lange dauert es, Fortschritte zu sehen?',
			'faq.questions.q10.answer' => 'Mit regelmäßiger Nutzung kann Fortschritt in kurzer Zeit sichtbar werden. Mit zunehmenden Lesegewohnheiten verbessern sich Wortschatz und Verständnisfähigkeiten.',
			'good_morning' => 'Guten Morgen',
			'good_afternoon' => 'Guten Tag',
			'good_evening' => 'Guten Abend',
			'splash.screen1.title' => 'Englisch lernen mit Geschichten',
			'splash.screen1.description' => 'Keine langweilige Auswendiglernerei. Entdecken Sie Wörter in ihrem natürlichen Fluss durch kurze und unterhaltsame Geschichten.',
			'splash.screen2.title' => 'Künstliche Intelligenz führt Sie',
			'splash.screen2.description' => 'Sie verfolgt die Wörter, mit denen Sie Schwierigkeiten haben, erklärt deren Bedeutung und schlägt neue Geschichten vor, die auf Ihr Niveau zugeschnitten sind.',
			'profile.title' => 'Profil',
			'profile.freeVersion' => 'Kostenlose Version',
			'profile.error' => 'Fehler',
			'profile.sections.accountSettings' => 'KONTOEINSTELLUNGEN',
			'profile.sections.supportAndOther' => 'SUPPORT & SONSTIGES',
			'profile.menu.editProfile' => 'Profil bearbeiten',
			'profile.menu.notifications' => 'Benachrichtigungen',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'App-Sprache',
			'profile.menu.shareWithFriends' => 'Mit Freunden teilen',
			'profile.menu.enterInviteCode' => 'Einladungscode eingeben',
			'profile.menu.rateUs' => 'Bewerten Sie uns',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Abmelden',
			'profile.manage' => 'VERWALTEN',
			'profile.logoutDialog.title' => 'Sie sind dabei, sich abzumelden',
			'profile.logoutDialog.message' => 'Bis bald! Wir werden Ihre Atemübungen weiter verfolgen.',
			'profile.logoutDialog.logoutButton' => 'Abmelden',
			'profile.logoutDialog.cancelButton' => 'Abbrechen',
			'home.premium' => 'Premium!',
			'home.seeMore' => 'Mehr sehen',
			'home.premiumPlan.title' => 'Premium-Plan',
			'home.premiumPlan.description' => 'Schalten Sie Ihren KI-Chatbot frei &\nerhalten Sie alle Premium-Funktionen',
			'home.premiumPlan.button' => 'Premium erhalten',
			'home.premiumPlan.dialog.title' => 'Funktion nicht verfügbar',
			'home.premiumPlan.dialog.message' => 'Diese Funktion ist derzeit nicht verfügbar.',
			'home.premiumPlan.dialog.button' => 'OK',
			'editProfile.title' => 'Profil bearbeiten',
			'editProfile.changePhoto' => 'Foto ändern',
			'editProfile.fullName' => 'Vollständiger Name',
			'editProfile.email' => 'E-Mail',
			'editProfile.age' => 'Alter',
			'editProfile.save' => 'Speichern',
			'editProfile.saving' => 'Wird gespeichert...',
			'editProfile.updateSuccess' => 'Profil erfolgreich aktualisiert',
			'editProfile.updateError' => 'Beim Aktualisieren des Profils ist ein Fehler aufgetreten',
			'editProfile.deleteAccount' => 'Konto löschen',
			'notifications.title' => 'Benachrichtigungen',
			'notifications.emptyTitle' => 'Noch keine Benachrichtigungen',
			'notifications.emptyDescription' => 'Wir benachrichtigen Sie, wenn es ein wichtiges Update zu Ihrer Lernreise gibt.',
			'notifications.premiumBannerTitle' => 'Verpassen Sie nicht die\nPremium-Vorteile!',
			'notifications.premiumBannerDescription' => 'Nutzen Sie die Möglichkeiten als Premium-Abonnent.',
			'share.title' => 'Mit Freunden teilen',
			'share.mainTitle' => 'Teilen Sie den Frieden',
			'share.descriptionPart1' => 'Laden Sie Ihre Freunde ein, gemeinsam zu atmen.\nFür jede Einladung erhalten Sie beide ',
			'share.descriptionPart2' => '1 Woche Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'IHR EMPFEHLUNGSCODE',
			'share.codeCopied' => 'Code kopiert!',
			'share.copyCode' => 'Code kopieren',
			'auth.guest' => 'Als Gast fortfahren',
			'auth.google' => 'Weiter mit Google',
			'auth.facebook' => 'Weiter mit Facebook',
			'auth.apple' => 'Weiter mit Apple',
			'auth.signInFailed' => ({required Object error}) => 'Anmeldung fehlgeschlagen: ${error}',
			'cancel' => 'Abbrechen',
			'deleteAccount' => 'Konto löschen',
			'deleteDialogTitle' => 'Sind Sie sicher, dass Sie Ihr Konto löschen möchten?',
			'deleteDialogDescription' => 'Diese Aktion ist irreversibel und löscht dauerhaft alle Ihre Übungshistorie und Daten.',
			'deleteError' => 'Beim Löschen Ihres Kontos ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.',
			'enterInvitationCode' => 'Einladungscode eingeben',
			'inviteFriends' => 'Gib den Einladungscode ein, den du von einem Freund erhalten hast.\nTippe ihn in das vorgesehene Feld',
			'twoDaysPremium' => '7 Tage Premium',
			'advantage' => '\num die Vorteile zu genießen.',
			'send' => 'Senden',
			'referralCode.inputPlaceholder' => '8-stelligen Code eingeben',
			'referralCode.applying' => 'Code wird angewendet...',
			'referralCode.success.title' => 'Erfolg!',
			'referralCode.success.message' => 'Empfehlungscode erfolgreich angewendet! Sowohl du als auch dein Freund haben 1 Woche Premium erhalten.',
			'referralCode.errors.missingCode.title' => 'Code erforderlich',
			'referralCode.errors.missingCode.message' => 'Bitte gib einen Empfehlungscode ein, um fortzufahren.',
			'referralCode.errors.invalidFormat.title' => 'Ungültiges Format',
			'referralCode.errors.invalidFormat.message' => 'Der Empfehlungscode muss genau 8 Zeichen lang sein.',
			'referralCode.errors.alreadyUsed.title' => 'Bereits verwendet',
			'referralCode.errors.alreadyUsed.message' => 'Du hast bereits einen Empfehlungscode verwendet. Jeder Benutzer kann nur einen Code verwenden.',
			'referralCode.errors.selfReferral.title' => 'Ungültiger Code',
			'referralCode.errors.selfReferral.message' => 'Du kannst deinen eigenen Einladungscode nicht verwenden. Bitte verwende einen Code von einem Freund.',
			'referralCode.errors.codeNotFound.title' => 'Code nicht gefunden',
			'referralCode.errors.codeNotFound.message' => 'Der eingegebene Empfehlungscode existiert nicht. Bitte überprüfe ihn und versuche es erneut.',
			'referralCode.errors.genericError.title' => 'Fehler',
			'referralCode.errors.genericError.message' => 'Beim Anwenden des Empfehlungscodes ist ein Fehler aufgetreten. Bitte versuche es erneut.',
			'deleteNotifications' => 'Benachrichtigungen löschen',
			'deleteNotificationsDescription' => 'Sind Sie sicher, dass Sie alle\nIhre Benachrichtigungen löschen möchten? Diese Aktion ist irreversibel und kann nicht rückgängig gemacht werden.',
			'deleteAll' => 'Alle löschen',
			'appLanguage' => 'App-Sprache',
			'selectLanguage' => 'Wählen Sie Ihre bevorzugte Sprache',
			'save' => 'Speichern',
			'languageOptions.english' => 'Englisch',
			'languageOptions.german' => 'Deutsch',
			'languageOptions.italian' => 'Italienisch',
			'languageOptions.french' => 'Französisch',
			'languageOptions.japanese' => 'Japanisch',
			'languageOptions.spanish' => 'Spanisch',
			'languageOptions.russian' => 'Russisch',
			'languageOptions.turkish' => 'Türkisch',
			'languageOptions.korean' => 'Koreanisch',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portugiesisch',
			_ => null,
		};
	}
}
