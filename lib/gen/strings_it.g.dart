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
class TranslationsIt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Benvenuto ${name}';
	@override String welcome2({required Object appName}) => 'Benvenuto a ${appName}';
	@override String get get_started => 'Inizia';
	@override String get next => 'Avanti';
	@override String get back => 'Indietro';
	@override String get skip => 'Salta';
	@override String get kContinue => 'Continua';
	@override String get logintext => 'Dove ogni parola è una nuova avventura che aspetta di essere raccontata.';
	@override late final _TranslationsTermOfServiceIt termOfService = _TranslationsTermOfServiceIt._(_root);
	@override String get cookies => 'Informativa sui cookie';
	@override String get privacy => 'Informativa sulla privacy';
	@override String get pressBackAgainToExit => 'Premi di nuovo indietro per uscire';
	@override late final _TranslationsFaqIt faq = _TranslationsFaqIt._(_root);
	@override String get good_morning => 'Buongiorno';
	@override String get good_afternoon => 'Buon pomeriggio';
	@override String get good_evening => 'Buonasera';
	@override late final _TranslationsSplashIt splash = _TranslationsSplashIt._(_root);
	@override late final _TranslationsProfileIt profile = _TranslationsProfileIt._(_root);
	@override late final _TranslationsHomeIt home = _TranslationsHomeIt._(_root);
	@override late final _TranslationsEditProfileIt editProfile = _TranslationsEditProfileIt._(_root);
	@override late final _TranslationsNotificationsIt notifications = _TranslationsNotificationsIt._(_root);
	@override late final _TranslationsShareIt share = _TranslationsShareIt._(_root);
	@override late final _TranslationsAuthIt auth = _TranslationsAuthIt._(_root);
	@override String get cancel => 'Annulla';
	@override String get deleteAccount => 'Elimina account';
	@override String get deleteDialogTitle => 'Sei sicuro di voler eliminare il tuo account?';
	@override String get deleteDialogDescription => 'Questa azione è irreversibile ed eliminerà permanentemente tutta la cronologia degli esercizi e i dati.';
	@override String get deleteError => 'Si è verificato un errore durante l\'eliminazione del tuo account. Riprova.';
	@override String get enterInvitationCode => 'Inserisci codice invito';
	@override String get inviteFriends => 'Inserisci il codice di invito ricevuto da un amico.\nScrivilo nel campo designato';
	@override String get twoDaysPremium => '7 giorni Premium';
	@override String get advantage => '\nper godere dei suoi benefici.';
	@override String get send => 'Invia';
	@override late final _TranslationsReferralCodeIt referralCode = _TranslationsReferralCodeIt._(_root);
	@override String get deleteNotifications => 'Elimina notifiche';
	@override String get deleteNotificationsDescription => 'Sei sicuro di voler eliminare tutte\nle tue notifiche? Questa azione è irreversibile e non può essere annullata.';
	@override String get deleteAll => 'Elimina tutto';
	@override String get appLanguage => 'Lingua dell\'app';
	@override String get selectLanguage => 'Seleziona la tua lingua preferita';
	@override String get save => 'Salva';
	@override late final _TranslationsLanguageOptionsIt languageOptions = _TranslationsLanguageOptionsIt._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceIt implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Iscrivendoti a swipe, accetti i nostri ';
	@override String get link1 => 'Termini di servizio';
	@override String get text2 => '. Scopri come elaboriamo i tuoi dati nella nostra ';
	@override String get link2 => 'Informativa sulla privacy';
	@override String get text3 => ' e ';
	@override String get link3 => 'Informativa sui cookie';
	@override String get text4 => '';
}

// Path: faq
class _TranslationsFaqIt implements TranslationsFaqEn {
	_TranslationsFaqIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Domande frequenti';
	@override late final _TranslationsFaqQuestionsIt questions = _TranslationsFaqQuestionsIt._(_root);
}

// Path: splash
class _TranslationsSplashIt implements TranslationsSplashEn {
	_TranslationsSplashIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1It screen1 = _TranslationsSplashScreen1It._(_root);
	@override late final _TranslationsSplashScreen2It screen2 = _TranslationsSplashScreen2It._(_root);
}

// Path: profile
class _TranslationsProfileIt implements TranslationsProfileEn {
	_TranslationsProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilo';
	@override String get freeVersion => 'Versione gratuita';
	@override String get error => 'Errore';
	@override late final _TranslationsProfileSectionsIt sections = _TranslationsProfileSectionsIt._(_root);
	@override late final _TranslationsProfileMenuIt menu = _TranslationsProfileMenuIt._(_root);
	@override String get manage => 'GESTISCI';
	@override late final _TranslationsProfileLogoutDialogIt logoutDialog = _TranslationsProfileLogoutDialogIt._(_root);
}

// Path: home
class _TranslationsHomeIt implements TranslationsHomeEn {
	_TranslationsHomeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get seeMore => 'Vedi altro';
	@override late final _TranslationsHomePremiumPlanIt premiumPlan = _TranslationsHomePremiumPlanIt._(_root);
}

// Path: editProfile
class _TranslationsEditProfileIt implements TranslationsEditProfileEn {
	_TranslationsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override String get changePhoto => 'Cambia foto';
	@override String get fullName => 'Nome completo';
	@override String get email => 'E-mail';
	@override String get age => 'Età';
	@override String get save => 'Salva';
	@override String get saving => 'Salvataggio...';
	@override String get updateSuccess => 'Profilo aggiornato con successo';
	@override String get updateError => 'Si è verificato un errore durante l\'aggiornamento del profilo';
	@override String get deleteAccount => 'Elimina account';
}

// Path: notifications
class _TranslationsNotificationsIt implements TranslationsNotificationsEn {
	_TranslationsNotificationsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifiche';
	@override String get emptyTitle => 'Nessuna notifica ancora';
	@override String get emptyDescription => 'Ti avviseremo quando ci sarà un aggiornamento importante sul tuo percorso di apprendimento.';
	@override String get premiumBannerTitle => 'Non perdere i\nvantaggi Premium!';
	@override String get premiumBannerDescription => 'Approfitta delle opportunità come abbonato Premium.';
}

// Path: share
class _TranslationsShareIt implements TranslationsShareEn {
	_TranslationsShareIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Condividi con gli amici';
	@override String get mainTitle => 'Condividi la pace';
	@override String get descriptionPart1 => 'Invita i tuoi amici a respirare insieme.\nPer ogni invito, entrambi ottenete ';
	@override String get descriptionPart2 => '1 settimana Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'IL TUO CODICE DI RIFERIMENTO';
	@override String get codeCopied => 'Codice copiato!';
	@override String get copyCode => 'Copia codice';
}

// Path: auth
class _TranslationsAuthIt implements TranslationsAuthEn {
	_TranslationsAuthIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Continua come ospite';
	@override String signInFailed({required Object error}) => 'Accesso non riuscito: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeIt implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Inserisci codice di 8 caratteri';
	@override String get applying => 'Applicazione codice...';
	@override late final _TranslationsReferralCodeSuccessIt success = _TranslationsReferralCodeSuccessIt._(_root);
	@override late final _TranslationsReferralCodeErrorsIt errors = _TranslationsReferralCodeErrorsIt._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsIt implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get english => 'Inglese';
	@override String get german => 'Tedesco';
	@override String get italian => 'Italiano';
	@override String get french => 'Francese';
	@override String get japanese => 'Giapponese';
	@override String get spanish => 'Spagnolo';
	@override String get russian => 'Russo';
	@override String get turkish => 'Turco';
	@override String get korean => 'Coreano';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portoghese';
}

// Path: faq.questions
class _TranslationsFaqQuestionsIt implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1It q1 = _TranslationsFaqQuestionsQ1It._(_root);
	@override late final _TranslationsFaqQuestionsQ2It q2 = _TranslationsFaqQuestionsQ2It._(_root);
	@override late final _TranslationsFaqQuestionsQ3It q3 = _TranslationsFaqQuestionsQ3It._(_root);
	@override late final _TranslationsFaqQuestionsQ4It q4 = _TranslationsFaqQuestionsQ4It._(_root);
	@override late final _TranslationsFaqQuestionsQ5It q5 = _TranslationsFaqQuestionsQ5It._(_root);
	@override late final _TranslationsFaqQuestionsQ6It q6 = _TranslationsFaqQuestionsQ6It._(_root);
	@override late final _TranslationsFaqQuestionsQ7It q7 = _TranslationsFaqQuestionsQ7It._(_root);
	@override late final _TranslationsFaqQuestionsQ8It q8 = _TranslationsFaqQuestionsQ8It._(_root);
	@override late final _TranslationsFaqQuestionsQ9It q9 = _TranslationsFaqQuestionsQ9It._(_root);
	@override late final _TranslationsFaqQuestionsQ10It q10 = _TranslationsFaqQuestionsQ10It._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1It implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impara l\'inglese con le storie';
	@override String get description => 'Niente noiosa memorizzazione. Scopri le parole nel loro flusso naturale attraverso storie brevi e divertenti.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2It implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'L\'intelligenza artificiale ti guida';
	@override String get description => 'Tiene traccia delle parole con cui hai difficoltà, ne spiega il significato e suggerisce nuove storie su misura per il tuo livello.';
}

// Path: profile.sections
class _TranslationsProfileSectionsIt implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'IMPOSTAZIONI ACCOUNT';
	@override String get supportAndOther => 'SUPPORTO E ALTRO';
}

// Path: profile.menu
class _TranslationsProfileMenuIt implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Modifica profilo';
	@override String get notifications => 'Notifiche';
	@override String get premium => 'Premium';
	@override String get appLanguage => 'Lingua dell\'app';
	@override String get shareWithFriends => 'Condividi con gli amici';
	@override String get enterInviteCode => 'Inserisci codice invito';
	@override String get rateUs => 'Valutaci';
	@override String get faq => 'FAQ';
	@override String get logout => 'Esci';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogIt implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stai per uscire';
	@override String get message => 'Ci vediamo di nuovo! Continueremo a monitorare i tuoi esercizi di respirazione.';
	@override String get logoutButton => 'Esci';
	@override String get cancelButton => 'Annulla';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanIt implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Piano Premium';
	@override String get description => 'Sblocca il tuo chatbot AI e\nottieni tutte le funzionalità premium';
	@override String get button => 'Ottieni Premium';
	@override late final _TranslationsHomePremiumPlanDialogIt dialog = _TranslationsHomePremiumPlanDialogIt._(_root);
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessIt implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Successo!';
	@override String get message => 'Codice referral applicato con successo! Sia tu che il tuo amico avete ricevuto 1 settimana di premium.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsIt implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeIt missingCode = _TranslationsReferralCodeErrorsMissingCodeIt._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatIt invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatIt._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedIt alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedIt._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralIt selfReferral = _TranslationsReferralCodeErrorsSelfReferralIt._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundIt codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundIt._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorIt genericError = _TranslationsReferralCodeErrorsGenericErrorIt._(_root);
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1It implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'A cosa serve questa app?';
	@override String get answer => 'Permette ai bambini di imparare l\'inglese con storie divertenti. Le parole appaiono nel contesto delle frasi, il significato si apprende in modo intuitivo e si consolida con le ripetizioni.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2It implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Cosa fa l\'intelligenza artificiale qui?';
	@override String get answer => 'Analizza quali parole risultano difficili per il bambino, fornisce spiegazioni semplici e suggerisce nuove storie adatte al suo livello. I contenuti si adattano al ritmo di apprendimento del bambino.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3It implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quanto tempo al giorno è sufficiente?';
	@override String get answer => '5–10 minuti al giorno sono sufficienti. Anche una breve storia è efficace se usata con regolarità.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4It implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Per quale fascia d\'età sono adatte le storie?';
	@override String get answer => 'Le storie sono proposte in base all\'età e al livello dei bambini. L\'app determina il livello iniziale e regola la difficoltà con il progresso.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5It implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Come impara le parole che non conosce?';
	@override String get answer => 'Toccando una parola sconosciuta vengono mostrati il significato, una spiegazione semplice e la pronuncia corretta. Così la parola viene vista e ascoltata.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6It implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'È necessaria la connessione a Internet?';
	@override String get answer => 'Le storie scaricate in precedenza possono essere lette offline. È necessaria la connessione per nuovi contenuti e aggiornamenti.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7It implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'L\'app è gratuita?';
	@override String get answer => 'L\'accesso alle storie di base è gratuito. Più storie, personalizzazioni avanzate e funzionalità aggiuntive sono disponibili nel pacchetto premium.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8It implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'È possibile ascoltare le storie?';
	@override String get answer => 'Sì. Le storie possono essere ascoltate con pronuncia corretta. In questo modo si sviluppano insieme la lettura e la comprensione orale.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9It implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Le parole imparate possono essere tracciate?';
	@override String get answer => 'Sì. Le parole imparate vengono registrate e sono previsti ripassi a intervalli regolari per ridurre l\'oblio.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10It implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quanto tempo per vedere i progressi?';
	@override String get answer => 'Con un uso regolare i progressi si notano in breve tempo. Man mano che aumenta l\'abitudine alla lettura, crescono il vocabolario e la comprensione.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogIt implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Funzione non disponibile';
	@override String get message => 'Questa funzione non è attualmente disponibile.';
	@override String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeIt implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Codice richiesto';
	@override String get message => 'Inserisci un codice referral per continuare.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatIt implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Formato non valido';
	@override String get message => 'Il codice referral deve essere di esattamente 8 caratteri.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedIt implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Già usato';
	@override String get message => 'Hai già usato un codice referral. Ogni utente può usare un solo codice.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralIt implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Codice non valido';
	@override String get message => 'Non puoi usare il tuo stesso codice invito. Usa un codice di un amico.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundIt implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Codice non trovato';
	@override String get message => 'Il codice referral inserito non esiste. Controlla e riprova.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorIt implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Errore';
	@override String get message => 'Si è verificato un errore durante l\'applicazione del codice referral. Riprova.';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Benvenuto ${name}',
			'welcome2' => ({required Object appName}) => 'Benvenuto a ${appName}',
			'get_started' => 'Inizia',
			'next' => 'Avanti',
			'back' => 'Indietro',
			'skip' => 'Salta',
			'kContinue' => 'Continua',
			'logintext' => 'Dove ogni parola è una nuova avventura che aspetta di essere raccontata.',
			'termOfService.text1' => 'Iscrivendoti a swipe, accetti i nostri ',
			'termOfService.link1' => 'Termini di servizio',
			'termOfService.text2' => '. Scopri come elaboriamo i tuoi dati nella nostra ',
			'termOfService.link2' => 'Informativa sulla privacy',
			'termOfService.text3' => ' e ',
			'termOfService.link3' => 'Informativa sui cookie',
			'termOfService.text4' => '',
			'cookies' => 'Informativa sui cookie',
			'privacy' => 'Informativa sulla privacy',
			'pressBackAgainToExit' => 'Premi di nuovo indietro per uscire',
			'faq.title' => 'Domande frequenti',
			'faq.questions.q1.question' => 'A cosa serve questa app?',
			'faq.questions.q1.answer' => 'Permette ai bambini di imparare l\'inglese con storie divertenti. Le parole appaiono nel contesto delle frasi, il significato si apprende in modo intuitivo e si consolida con le ripetizioni.',
			'faq.questions.q2.question' => 'Cosa fa l\'intelligenza artificiale qui?',
			'faq.questions.q2.answer' => 'Analizza quali parole risultano difficili per il bambino, fornisce spiegazioni semplici e suggerisce nuove storie adatte al suo livello. I contenuti si adattano al ritmo di apprendimento del bambino.',
			'faq.questions.q3.question' => 'Quanto tempo al giorno è sufficiente?',
			'faq.questions.q3.answer' => '5–10 minuti al giorno sono sufficienti. Anche una breve storia è efficace se usata con regolarità.',
			'faq.questions.q4.question' => 'Per quale fascia d\'età sono adatte le storie?',
			'faq.questions.q4.answer' => 'Le storie sono proposte in base all\'età e al livello dei bambini. L\'app determina il livello iniziale e regola la difficoltà con il progresso.',
			'faq.questions.q5.question' => 'Come impara le parole che non conosce?',
			'faq.questions.q5.answer' => 'Toccando una parola sconosciuta vengono mostrati il significato, una spiegazione semplice e la pronuncia corretta. Così la parola viene vista e ascoltata.',
			'faq.questions.q6.question' => 'È necessaria la connessione a Internet?',
			'faq.questions.q6.answer' => 'Le storie scaricate in precedenza possono essere lette offline. È necessaria la connessione per nuovi contenuti e aggiornamenti.',
			'faq.questions.q7.question' => 'L\'app è gratuita?',
			'faq.questions.q7.answer' => 'L\'accesso alle storie di base è gratuito. Più storie, personalizzazioni avanzate e funzionalità aggiuntive sono disponibili nel pacchetto premium.',
			'faq.questions.q8.question' => 'È possibile ascoltare le storie?',
			'faq.questions.q8.answer' => 'Sì. Le storie possono essere ascoltate con pronuncia corretta. In questo modo si sviluppano insieme la lettura e la comprensione orale.',
			'faq.questions.q9.question' => 'Le parole imparate possono essere tracciate?',
			'faq.questions.q9.answer' => 'Sì. Le parole imparate vengono registrate e sono previsti ripassi a intervalli regolari per ridurre l\'oblio.',
			'faq.questions.q10.question' => 'Quanto tempo per vedere i progressi?',
			'faq.questions.q10.answer' => 'Con un uso regolare i progressi si notano in breve tempo. Man mano che aumenta l\'abitudine alla lettura, crescono il vocabolario e la comprensione.',
			'good_morning' => 'Buongiorno',
			'good_afternoon' => 'Buon pomeriggio',
			'good_evening' => 'Buonasera',
			'splash.screen1.title' => 'Impara l\'inglese con le storie',
			'splash.screen1.description' => 'Niente noiosa memorizzazione. Scopri le parole nel loro flusso naturale attraverso storie brevi e divertenti.',
			'splash.screen2.title' => 'L\'intelligenza artificiale ti guida',
			'splash.screen2.description' => 'Tiene traccia delle parole con cui hai difficoltà, ne spiega il significato e suggerisce nuove storie su misura per il tuo livello.',
			'profile.title' => 'Profilo',
			'profile.freeVersion' => 'Versione gratuita',
			'profile.error' => 'Errore',
			'profile.sections.accountSettings' => 'IMPOSTAZIONI ACCOUNT',
			'profile.sections.supportAndOther' => 'SUPPORTO E ALTRO',
			'profile.menu.editProfile' => 'Modifica profilo',
			'profile.menu.notifications' => 'Notifiche',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'Lingua dell\'app',
			'profile.menu.shareWithFriends' => 'Condividi con gli amici',
			'profile.menu.enterInviteCode' => 'Inserisci codice invito',
			'profile.menu.rateUs' => 'Valutaci',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Esci',
			'profile.manage' => 'GESTISCI',
			'profile.logoutDialog.title' => 'Stai per uscire',
			'profile.logoutDialog.message' => 'Ci vediamo di nuovo! Continueremo a monitorare i tuoi esercizi di respirazione.',
			'profile.logoutDialog.logoutButton' => 'Esci',
			'profile.logoutDialog.cancelButton' => 'Annulla',
			'home.premium' => 'Premium!',
			'home.seeMore' => 'Vedi altro',
			'home.premiumPlan.title' => 'Piano Premium',
			'home.premiumPlan.description' => 'Sblocca il tuo chatbot AI e\nottieni tutte le funzionalità premium',
			'home.premiumPlan.button' => 'Ottieni Premium',
			'home.premiumPlan.dialog.title' => 'Funzione non disponibile',
			'home.premiumPlan.dialog.message' => 'Questa funzione non è attualmente disponibile.',
			'home.premiumPlan.dialog.button' => 'OK',
			'editProfile.title' => 'Modifica profilo',
			'editProfile.changePhoto' => 'Cambia foto',
			'editProfile.fullName' => 'Nome completo',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Età',
			'editProfile.save' => 'Salva',
			'editProfile.saving' => 'Salvataggio...',
			'editProfile.updateSuccess' => 'Profilo aggiornato con successo',
			'editProfile.updateError' => 'Si è verificato un errore durante l\'aggiornamento del profilo',
			'editProfile.deleteAccount' => 'Elimina account',
			'notifications.title' => 'Notifiche',
			'notifications.emptyTitle' => 'Nessuna notifica ancora',
			'notifications.emptyDescription' => 'Ti avviseremo quando ci sarà un aggiornamento importante sul tuo percorso di apprendimento.',
			'notifications.premiumBannerTitle' => 'Non perdere i\nvantaggi Premium!',
			'notifications.premiumBannerDescription' => 'Approfitta delle opportunità come abbonato Premium.',
			'share.title' => 'Condividi con gli amici',
			'share.mainTitle' => 'Condividi la pace',
			'share.descriptionPart1' => 'Invita i tuoi amici a respirare insieme.\nPer ogni invito, entrambi ottenete ',
			'share.descriptionPart2' => '1 settimana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'IL TUO CODICE DI RIFERIMENTO',
			'share.codeCopied' => 'Codice copiato!',
			'share.copyCode' => 'Copia codice',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continua come ospite',
			'auth.signInFailed' => ({required Object error}) => 'Accesso non riuscito: ${error}',
			'cancel' => 'Annulla',
			'deleteAccount' => 'Elimina account',
			'deleteDialogTitle' => 'Sei sicuro di voler eliminare il tuo account?',
			'deleteDialogDescription' => 'Questa azione è irreversibile ed eliminerà permanentemente tutta la cronologia degli esercizi e i dati.',
			'deleteError' => 'Si è verificato un errore durante l\'eliminazione del tuo account. Riprova.',
			'enterInvitationCode' => 'Inserisci codice invito',
			'inviteFriends' => 'Inserisci il codice di invito ricevuto da un amico.\nScrivilo nel campo designato',
			'twoDaysPremium' => '7 giorni Premium',
			'advantage' => '\nper godere dei suoi benefici.',
			'send' => 'Invia',
			'referralCode.inputPlaceholder' => 'Inserisci codice di 8 caratteri',
			'referralCode.applying' => 'Applicazione codice...',
			'referralCode.success.title' => 'Successo!',
			'referralCode.success.message' => 'Codice referral applicato con successo! Sia tu che il tuo amico avete ricevuto 1 settimana di premium.',
			'referralCode.errors.missingCode.title' => 'Codice richiesto',
			'referralCode.errors.missingCode.message' => 'Inserisci un codice referral per continuare.',
			'referralCode.errors.invalidFormat.title' => 'Formato non valido',
			'referralCode.errors.invalidFormat.message' => 'Il codice referral deve essere di esattamente 8 caratteri.',
			'referralCode.errors.alreadyUsed.title' => 'Già usato',
			'referralCode.errors.alreadyUsed.message' => 'Hai già usato un codice referral. Ogni utente può usare un solo codice.',
			'referralCode.errors.selfReferral.title' => 'Codice non valido',
			'referralCode.errors.selfReferral.message' => 'Non puoi usare il tuo stesso codice invito. Usa un codice di un amico.',
			'referralCode.errors.codeNotFound.title' => 'Codice non trovato',
			'referralCode.errors.codeNotFound.message' => 'Il codice referral inserito non esiste. Controlla e riprova.',
			'referralCode.errors.genericError.title' => 'Errore',
			'referralCode.errors.genericError.message' => 'Si è verificato un errore durante l\'applicazione del codice referral. Riprova.',
			'deleteNotifications' => 'Elimina notifiche',
			'deleteNotificationsDescription' => 'Sei sicuro di voler eliminare tutte\nle tue notifiche? Questa azione è irreversibile e non può essere annullata.',
			'deleteAll' => 'Elimina tutto',
			'appLanguage' => 'Lingua dell\'app',
			'selectLanguage' => 'Seleziona la tua lingua preferita',
			'save' => 'Salva',
			'languageOptions.english' => 'Inglese',
			'languageOptions.german' => 'Tedesco',
			'languageOptions.italian' => 'Italiano',
			'languageOptions.french' => 'Francese',
			'languageOptions.japanese' => 'Giapponese',
			'languageOptions.spanish' => 'Spagnolo',
			'languageOptions.russian' => 'Russo',
			'languageOptions.turkish' => 'Turco',
			'languageOptions.korean' => 'Coreano',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portoghese',
			_ => null,
		};
	}
}
