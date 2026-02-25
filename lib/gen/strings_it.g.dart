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
	@override late final _TranslationsOnboardingIt onboarding = _TranslationsOnboardingIt._(_root);
	@override String get pressBackAgainToExit => 'Premi di nuovo indietro per uscire';
	@override late final _TranslationsFaqIt faq = _TranslationsFaqIt._(_root);
	@override String get good_morning => 'Buongiorno';
	@override String get good_afternoon => 'Buon pomeriggio';
	@override String get good_evening => 'Buonasera';
	@override late final _TranslationsSplashIt splash = _TranslationsSplashIt._(_root);
	@override late final _TranslationsProfileIt profile = _TranslationsProfileIt._(_root);
	@override late final _TranslationsHomeIt home = _TranslationsHomeIt._(_root);
	@override late final _TranslationsAllStoriesIt allStories = _TranslationsAllStoriesIt._(_root);
	@override late final _TranslationsStoriesIt stories = _TranslationsStoriesIt._(_root);
	@override late final _TranslationsLibraryIt library = _TranslationsLibraryIt._(_root);
	@override late final _TranslationsBottomNavIt bottomNav = _TranslationsBottomNavIt._(_root);
	@override late final _TranslationsDayStreakIt dayStreak = _TranslationsDayStreakIt._(_root);
	@override late final _TranslationsStoryDetailsIt storyDetails = _TranslationsStoryDetailsIt._(_root);
	@override late final _TranslationsShareIt share = _TranslationsShareIt._(_root);
	@override String get delete => 'Elimina';
	@override late final _TranslationsEditProfileIt editProfile = _TranslationsEditProfileIt._(_root);
	@override late final _TranslationsNotificationsIt notifications = _TranslationsNotificationsIt._(_root);
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
	@override late final _TranslationsTermOfServicePrivacyPolicyIt privacyPolicy = _TranslationsTermOfServicePrivacyPolicyIt._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServiceIt termsOfService = _TranslationsTermOfServiceTermsOfServiceIt._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyIt cookiePolicy = _TranslationsTermOfServiceCookiePolicyIt._(_root);
}

// Path: onboarding
class _TranslationsOnboardingIt implements TranslationsOnboardingEn {
	_TranslationsOnboardingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1It step1 = _TranslationsOnboardingStep1It._(_root);
	@override late final _TranslationsOnboardingStep2It step2 = _TranslationsOnboardingStep2It._(_root);
	@override late final _TranslationsOnboardingLoadingIt loading = _TranslationsOnboardingLoadingIt._(_root);
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
	@override String get passive => 'Passivo';
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
	@override String get pickUpWhereYouLeftOff => 'Riprendi da dove hai lasciato';
	@override String get premiumSection => 'Premium';
	@override String get history => 'Cronologia';
	@override String get librarySection => 'Biblioteca';
	@override String get libraryDescription => 'Le parole salvate appariranno qui.';
	@override String get upgradeToPremium => 'Passa a Premium';
	@override String get unlimitedStories => 'Storie illimitate e senza pubblicità';
	@override late final _TranslationsHomePremiumPlanIt premiumPlan = _TranslationsHomePremiumPlanIt._(_root);
}

// Path: allStories
class _TranslationsAllStoriesIt implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tutte le storie';
	@override String get noStoriesFound => 'Nessuna storia trovata';
	@override String get selectFilter => 'Seleziona filtro';
	@override String get category => 'Categoria';
	@override String get categorySubtitle => 'Per favore seleziona la categoria che vuoi leggere';
	@override String get apply => 'Applica';
}

// Path: stories
class _TranslationsStoriesIt implements TranslationsStoriesEn {
	_TranslationsStoriesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Storie';
	@override String get popularStories => 'Storie popolari';
	@override String get recommendForYou => 'Consigliato per te';
	@override String get allStories => 'Tutte le storie';
	@override String get seeAll => 'Vedi tutto';
}

// Path: library
class _TranslationsLibraryIt implements TranslationsLibraryEn {
	_TranslationsLibraryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biblioteca';
	@override String wordCount({required Object count}) => '${count} Parole';
	@override String get popularWords => 'Parole popolari';
	@override String get allWords => 'Tutte le parole';
	@override String get searchWord => 'Cerca parola';
	@override String get searchHint => 'Inserisci una parola…';
}

// Path: bottomNav
class _TranslationsBottomNavIt implements TranslationsBottomNavEn {
	_TranslationsBottomNavIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get stories => 'Storie';
	@override String get library => 'Biblioteca';
	@override String get profile => 'Profilo';
}

// Path: dayStreak
class _TranslationsDayStreakIt implements TranslationsDayStreakEn {
	_TranslationsDayStreakIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Serie del giorno!';
	@override late final _TranslationsDayStreakDaysIt days = _TranslationsDayStreakDaysIt._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsIt implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Introduzione';
	@override String get saved => 'Salvato';
	@override String get removed => 'Rimosso';
	@override String get storyAddedToLibrary => 'La storia è stata aggiunta alla tua biblioteca.';
	@override String get storyRemovedFromLibrary => 'La storia è stata rimossa dalla biblioteca.';
	@override String get wordAddedToLibrary => 'La parola è stata aggiunta alla biblioteca. Annulla';
	@override String get successfully => 'Con successo';
	@override String get ratingSubmitted => 'La tua valutazione è stata inviata con successo.';
	@override String get warning => 'Avviso';
	@override String get fillAllFields => 'Per favore compila tutti i campi.';
	@override String get messageSent => 'Il tuo messaggio è stato inviato con successo.';
	@override String get translate => 'Traduci';
	@override String get speak => 'Parla';
	@override String get like => 'Mi piace';
	@override String get save => 'Salva';
	@override String get feedback => 'Feedback';
	@override String get rating => 'Valutazione';
	@override String get stop => 'Ferma';
	@override String get start => 'Inizia';
	@override String get listen => 'Ascolta';
	@override String get translation => 'Traduzione';
	@override String get translating => 'Traduzione in corso...';
	@override String get saveToLibrary => 'Salva in biblioteca';
	@override String get rateThisStory => 'Valuta questa storia';
	@override String get enjoyStory => 'Quanto ti è piaciuta questa storia?';
	@override String get send => 'Invia';
	@override String get subject => 'Oggetto';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsIt feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsIt._(_root);
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
	@override String get inviteDescription => 'Invita i tuoi amici e impara\ninsieme';
	@override String get linkCopied => 'Copiato';
	@override String get linkCopiedMessage => 'Il link è stato copiato negli appunti.';
}

// Path: editProfile
class _TranslationsEditProfileIt implements TranslationsEditProfileEn {
	_TranslationsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override String get changePhoto => 'Cambia Avatar';
	@override String get learnLanguage => 'Seleziona lingua di apprendimento';
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

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyIt implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informativa sulla Privacy';
	@override String get lastUpdated => 'Ultimo aggiornamento: 2025';
	@override String get intro => 'Lingola Stories Kids adotta la privacy dei bambini come principio fondamentale.';
	@override String get section1Title => '1. INFORMAZIONI RACCOLTE';
	@override String get section1sub1Title => '1.1 Dati forniti dall\'utente';
	@override String get section1sub1Body => 'Soprannome o nome profilo.\nEmail (account genitoriale e supporto).\nInformazioni sull\'età.\nLivello lingua, storie lette e parole apprese.\n\nNota: Mai usati per analisi sanitarie.';
	@override String get section1sub2Title => '1.2 Dati raccolti automaticamente';
	@override String get section1sub2Body => 'Tipo dispositivo, OS e dati prestazioni. La posizione precisa NON viene raccolta.';
	@override String get section2Title => '2. FINALITÀ DEL TRATTAMENTO';
	@override String get section2Body => 'I dati vengono usati per:\n\n- Fornire contenuti sicuri per età.\n- Personalizzare l\'esperienza.\n- Migliorare le prestazioni.\n- Adempiere obblighi legali.';
	@override String get section3Title => '3. CONSERVAZIONE E CANCELLAZIONE';
	@override String get section3Body => 'Dati conservati finché l\'account è attivo. Record supporto max 12 mesi. Alla cancellazione account i dati sono rimossi irreversibilmente.';
	@override String get section4Title => '4. DIRITTI UTENTE';
	@override String get section4Body => 'Ai sensi del GDPR, i genitori possono richiedere accesso, rettifica, cancellazione. Richieste a: support@fly-work.com.';
	@override String get section5Title => '5. PRIVACY DEI MINORI';
	@override String get section5Body => 'Per utenti dai 6 anni. Consenso genitoriale richiesto per under 13.';
	@override String get section6Title => '6. CONTATTO';
	@override String get section6Body => 'Per info: support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServiceIt implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServiceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Termini di Servizio';
	@override String get lastUpdated => 'Ultimo aggiornamento: 2025';
	@override String get intro => 'Questi Termini regolano l\'utilizzo di Lingola Stories Kids. Usando l\'app, accetti questi termini.';
	@override String get disclaimer => 'Avviso: Lingola Stories Kids è uno strumento educativo, non fornisce certificazione accademica.';
	@override String get section1Title => '1. AMBITO DEL SERVIZIO';
	@override String get section1Body => 'L\'app offre apprendimento basato su storie:\n\n- Storie IA e raccomandazioni.\n- Lettura per età e livello.\n- Supporto vocabolario e pronuncia.';
	@override String get section2Title => '2. CONDIZIONI D\'USO ED ETÀ';
	@override String get section2Body => 'Almeno 6 anni.\nUnder 18 con supervisione genitoriale.\nInformazioni account accurate e aggiornate.';
	@override String get section3Title => '3. USI VIETATI';
	@override String get section3Body => 'Copia non autorizzata, reverse engineering e uso commerciale sono vietati.';
	@override String get section4Title => '4. ABBONAMENTI E PAGAMENTI';
	@override String get section4Body => 'Le funzionalità premium seguono le politiche di App Store e Google Play.';
	@override String get section5Title => '5. PROPRIETÀ INTELLETTUALE';
	@override String get section5Body => 'Tutto il contenuto appartiene a Lingola Stories Kids.';
	@override String get section6Title => '6. LIMITAZIONE DI RESPONSABILITÀ';
	@override String get section6Body => 'L\'app è fornita così com\'è.';
	@override String get section7Title => '7. LEGGE APPLICABILE';
	@override String get section7Body => 'Regolato dalla legge turca. Jurisdizione ai Tribunali di Istanbul.';
	@override String get section8Title => '8. CONTATTO';
	@override String get section8Body => 'Per info: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyIt implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Politica sui Cookie';
	@override String get lastUpdated => 'Ultimo aggiornamento: 2025';
	@override String get intro => 'Questa politica spiega le tecnologie digitali usate nell\'app.';
	@override String get important => 'IMPORTANTE: Privacy dei bambini è il nostro principio fondamentale. App per utenti dai 6 anni.';
	@override String get section1Title => '1. COSA SONO I COOKIE?';
	@override String get section1Body => 'Cookie e tecnologie simili sono piccoli componenti digitali che aiutano l\'app. Non ti identificano direttamente.';
	@override String get section2Title => '2. QUALI TECNOLOGIE USIAMO?';
	@override String get section2Body => 'Necessarie: sessioni e sicurezza.\n\nPerformance e analisi: storie lette, dati anonimi.\n\nPersonalizzazione: ricorda lingua e livello.';
	@override String get section3Title => '3. PERCHÉ LE USIAMO?';
	@override String get section3Body => '- Funzionamento sicuro.\n- Lettura più fluida.\n- Ricordare impostazioni.\n- Identificare funzionalità future.';
	@override String get section4Title => '4. TECNOLOGIE DI TERZE PARTI';
	@override String get section4Body => 'Applichiamo il minimo uso dei dati con partner terzi.';
	@override String get section5Title => '5. CONTROLLO E GESTIONE';
	@override String get section5Body => 'I genitori possono limitare queste tecnologie dalle impostazioni del dispositivo.';
	@override String get section6Title => '6. CONTATTO';
	@override String get section6Body => 'Per info: support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1It implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quale lingua vorresti\nimparare?';
	@override String get subtitle => 'Per favore seleziona la lingua o le lingue\nche desideri imparare.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2It implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Che tipo di storie\nti piacciono?';
	@override String get subtitle => 'Per favore indica la tua preferenza.';
	@override late final _TranslationsOnboardingStep2CategoriesIt categories = _TranslationsOnboardingStep2CategoriesIt._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingIt implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => 'Il tuo account personale viene\n';
	@override String get titlePart2 => 'creato';
	@override String get subtitle => 'Stiamo creando storie meravigliose per te';
	@override String get optimization => 'Ottimizzazione';
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
	@override String get general => 'GENERALE';
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

// Path: dayStreak.days
class _TranslationsDayStreakDaysIt implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get su => 'Do';
	@override String get mo => 'Lu';
	@override String get tu => 'Ma';
	@override String get we => 'Me';
	@override String get th => 'Gi';
	@override String get fr => 'Ve';
	@override String get sa => 'Sa';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsIt implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get bugReport => 'Segnalazione bug';
	@override String get storyContent => 'Contenuto della storia';
	@override String get audioIssue => 'Problema audio';
	@override String get suggestion => 'Suggerimento';
	@override String get other => 'Altro';
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

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesIt implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 Avventure Spaziali';
	@override String get magic => '🦄 Mondi Magici';
	@override String get detectives => '🕵️ Piccoli Detective';
	@override String get animals => '🐾 Amici Adorabili';
	@override String get dinosaurs => '🦖 L\'Era dei Dinosauri';
	@override String get superhero => '🦸 Supereroi';
	@override String get underwater => '🌊 Regno Sottomarino';
	@override String get fairytale => '🏰 Fiabe di Principi e Principesse';
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
			'termOfService.privacyPolicy.title' => 'Informativa sulla Privacy',
			'termOfService.privacyPolicy.lastUpdated' => 'Ultimo aggiornamento: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids adotta la privacy dei bambini come principio fondamentale.',
			'termOfService.privacyPolicy.section1Title' => '1. INFORMAZIONI RACCOLTE',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Dati forniti dall\'utente',
			'termOfService.privacyPolicy.section1sub1Body' => 'Soprannome o nome profilo.\nEmail (account genitoriale e supporto).\nInformazioni sull\'età.\nLivello lingua, storie lette e parole apprese.\n\nNota: Mai usati per analisi sanitarie.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Dati raccolti automaticamente',
			'termOfService.privacyPolicy.section1sub2Body' => 'Tipo dispositivo, OS e dati prestazioni. La posizione precisa NON viene raccolta.',
			'termOfService.privacyPolicy.section2Title' => '2. FINALITÀ DEL TRATTAMENTO',
			'termOfService.privacyPolicy.section2Body' => 'I dati vengono usati per:\n\n- Fornire contenuti sicuri per età.\n- Personalizzare l\'esperienza.\n- Migliorare le prestazioni.\n- Adempiere obblighi legali.',
			'termOfService.privacyPolicy.section3Title' => '3. CONSERVAZIONE E CANCELLAZIONE',
			'termOfService.privacyPolicy.section3Body' => 'Dati conservati finché l\'account è attivo. Record supporto max 12 mesi. Alla cancellazione account i dati sono rimossi irreversibilmente.',
			'termOfService.privacyPolicy.section4Title' => '4. DIRITTI UTENTE',
			'termOfService.privacyPolicy.section4Body' => 'Ai sensi del GDPR, i genitori possono richiedere accesso, rettifica, cancellazione. Richieste a: support@fly-work.com.',
			'termOfService.privacyPolicy.section5Title' => '5. PRIVACY DEI MINORI',
			'termOfService.privacyPolicy.section5Body' => 'Per utenti dai 6 anni. Consenso genitoriale richiesto per under 13.',
			'termOfService.privacyPolicy.section6Title' => '6. CONTATTO',
			'termOfService.privacyPolicy.section6Body' => 'Per info: support@fly-work.com',
			'termOfService.termsOfService.title' => 'Termini di Servizio',
			'termOfService.termsOfService.lastUpdated' => 'Ultimo aggiornamento: 2025',
			'termOfService.termsOfService.intro' => 'Questi Termini regolano l\'utilizzo di Lingola Stories Kids. Usando l\'app, accetti questi termini.',
			'termOfService.termsOfService.disclaimer' => 'Avviso: Lingola Stories Kids è uno strumento educativo, non fornisce certificazione accademica.',
			'termOfService.termsOfService.section1Title' => '1. AMBITO DEL SERVIZIO',
			'termOfService.termsOfService.section1Body' => 'L\'app offre apprendimento basato su storie:\n\n- Storie IA e raccomandazioni.\n- Lettura per età e livello.\n- Supporto vocabolario e pronuncia.',
			'termOfService.termsOfService.section2Title' => '2. CONDIZIONI D\'USO ED ETÀ',
			'termOfService.termsOfService.section2Body' => 'Almeno 6 anni.\nUnder 18 con supervisione genitoriale.\nInformazioni account accurate e aggiornate.',
			'termOfService.termsOfService.section3Title' => '3. USI VIETATI',
			'termOfService.termsOfService.section3Body' => 'Copia non autorizzata, reverse engineering e uso commerciale sono vietati.',
			'termOfService.termsOfService.section4Title' => '4. ABBONAMENTI E PAGAMENTI',
			'termOfService.termsOfService.section4Body' => 'Le funzionalità premium seguono le politiche di App Store e Google Play.',
			'termOfService.termsOfService.section5Title' => '5. PROPRIETÀ INTELLETTUALE',
			'termOfService.termsOfService.section5Body' => 'Tutto il contenuto appartiene a Lingola Stories Kids.',
			'termOfService.termsOfService.section6Title' => '6. LIMITAZIONE DI RESPONSABILITÀ',
			'termOfService.termsOfService.section6Body' => 'L\'app è fornita così com\'è.',
			'termOfService.termsOfService.section7Title' => '7. LEGGE APPLICABILE',
			'termOfService.termsOfService.section7Body' => 'Regolato dalla legge turca. Jurisdizione ai Tribunali di Istanbul.',
			'termOfService.termsOfService.section8Title' => '8. CONTATTO',
			'termOfService.termsOfService.section8Body' => 'Per info: support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Politica sui Cookie',
			'termOfService.cookiePolicy.lastUpdated' => 'Ultimo aggiornamento: 2025',
			'termOfService.cookiePolicy.intro' => 'Questa politica spiega le tecnologie digitali usate nell\'app.',
			'termOfService.cookiePolicy.important' => 'IMPORTANTE: Privacy dei bambini è il nostro principio fondamentale. App per utenti dai 6 anni.',
			'termOfService.cookiePolicy.section1Title' => '1. COSA SONO I COOKIE?',
			'termOfService.cookiePolicy.section1Body' => 'Cookie e tecnologie simili sono piccoli componenti digitali che aiutano l\'app. Non ti identificano direttamente.',
			'termOfService.cookiePolicy.section2Title' => '2. QUALI TECNOLOGIE USIAMO?',
			'termOfService.cookiePolicy.section2Body' => 'Necessarie: sessioni e sicurezza.\n\nPerformance e analisi: storie lette, dati anonimi.\n\nPersonalizzazione: ricorda lingua e livello.',
			'termOfService.cookiePolicy.section3Title' => '3. PERCHÉ LE USIAMO?',
			'termOfService.cookiePolicy.section3Body' => '- Funzionamento sicuro.\n- Lettura più fluida.\n- Ricordare impostazioni.\n- Identificare funzionalità future.',
			'termOfService.cookiePolicy.section4Title' => '4. TECNOLOGIE DI TERZE PARTI',
			'termOfService.cookiePolicy.section4Body' => 'Applichiamo il minimo uso dei dati con partner terzi.',
			'termOfService.cookiePolicy.section5Title' => '5. CONTROLLO E GESTIONE',
			'termOfService.cookiePolicy.section5Body' => 'I genitori possono limitare queste tecnologie dalle impostazioni del dispositivo.',
			'termOfService.cookiePolicy.section6Title' => '6. CONTATTO',
			'termOfService.cookiePolicy.section6Body' => 'Per info: support@fly-work.com',
			'cookies' => 'Informativa sui cookie',
			'privacy' => 'Informativa sulla privacy',
			'onboarding.step1.title' => 'Quale lingua vorresti\nimparare?',
			'onboarding.step1.subtitle' => 'Per favore seleziona la lingua o le lingue\nche desideri imparare.',
			'onboarding.step2.title' => 'Che tipo di storie\nti piacciono?',
			'onboarding.step2.subtitle' => 'Per favore indica la tua preferenza.',
			'onboarding.step2.categories.space' => '🚀 Avventure Spaziali',
			'onboarding.step2.categories.magic' => '🦄 Mondi Magici',
			'onboarding.step2.categories.detectives' => '🕵️ Piccoli Detective',
			'onboarding.step2.categories.animals' => '🐾 Amici Adorabili',
			'onboarding.step2.categories.dinosaurs' => '🦖 L\'Era dei Dinosauri',
			'onboarding.step2.categories.superhero' => '🦸 Supereroi',
			'onboarding.step2.categories.underwater' => '🌊 Regno Sottomarino',
			'onboarding.step2.categories.fairytale' => '🏰 Fiabe di Principi e Principesse',
			'onboarding.loading.titlePart1' => 'Il tuo account personale viene\n',
			'onboarding.loading.titlePart2' => 'creato',
			'onboarding.loading.subtitle' => 'Stiamo creando storie meravigliose per te',
			'onboarding.loading.optimization' => 'Ottimizzazione',
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
			'profile.passive' => 'Passivo',
			'profile.sections.accountSettings' => 'IMPOSTAZIONI ACCOUNT',
			'profile.sections.general' => 'GENERALE',
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
			'home.pickUpWhereYouLeftOff' => 'Riprendi da dove hai lasciato',
			'home.premiumSection' => 'Premium',
			'home.history' => 'Cronologia',
			'home.librarySection' => 'Biblioteca',
			'home.libraryDescription' => 'Le parole salvate appariranno qui.',
			'home.upgradeToPremium' => 'Passa a Premium',
			'home.unlimitedStories' => 'Storie illimitate e senza pubblicità',
			'home.premiumPlan.title' => 'Piano Premium',
			'home.premiumPlan.description' => 'Sblocca il tuo chatbot AI e\nottieni tutte le funzionalità premium',
			'home.premiumPlan.button' => 'Ottieni Premium',
			'home.premiumPlan.dialog.title' => 'Funzione non disponibile',
			'home.premiumPlan.dialog.message' => 'Questa funzione non è attualmente disponibile.',
			'home.premiumPlan.dialog.button' => 'OK',
			'allStories.title' => 'Tutte le storie',
			'allStories.noStoriesFound' => 'Nessuna storia trovata',
			'allStories.selectFilter' => 'Seleziona filtro',
			'allStories.category' => 'Categoria',
			'allStories.categorySubtitle' => 'Per favore seleziona la categoria che vuoi leggere',
			'allStories.apply' => 'Applica',
			'stories.title' => 'Storie',
			'stories.popularStories' => 'Storie popolari',
			'stories.recommendForYou' => 'Consigliato per te',
			'stories.allStories' => 'Tutte le storie',
			'stories.seeAll' => 'Vedi tutto',
			'library.title' => 'Biblioteca',
			'library.wordCount' => ({required Object count}) => '${count} Parole',
			'library.popularWords' => 'Parole popolari',
			'library.allWords' => 'Tutte le parole',
			'library.searchWord' => 'Cerca parola',
			'library.searchHint' => 'Inserisci una parola…',
			'bottomNav.home' => 'Home',
			'bottomNav.stories' => 'Storie',
			'bottomNav.library' => 'Biblioteca',
			'bottomNav.profile' => 'Profilo',
			'dayStreak.title' => 'Serie del giorno!',
			'dayStreak.days.su' => 'Do',
			'dayStreak.days.mo' => 'Lu',
			'dayStreak.days.tu' => 'Ma',
			'dayStreak.days.we' => 'Me',
			'dayStreak.days.th' => 'Gi',
			'dayStreak.days.fr' => 'Ve',
			'dayStreak.days.sa' => 'Sa',
			'storyDetails.introduction' => 'Introduzione',
			'storyDetails.saved' => 'Salvato',
			'storyDetails.removed' => 'Rimosso',
			'storyDetails.storyAddedToLibrary' => 'La storia è stata aggiunta alla tua biblioteca.',
			'storyDetails.storyRemovedFromLibrary' => 'La storia è stata rimossa dalla biblioteca.',
			'storyDetails.wordAddedToLibrary' => 'La parola è stata aggiunta alla biblioteca. Annulla',
			'storyDetails.successfully' => 'Con successo',
			'storyDetails.ratingSubmitted' => 'La tua valutazione è stata inviata con successo.',
			'storyDetails.warning' => 'Avviso',
			'storyDetails.fillAllFields' => 'Per favore compila tutti i campi.',
			'storyDetails.messageSent' => 'Il tuo messaggio è stato inviato con successo.',
			'storyDetails.translate' => 'Traduci',
			'storyDetails.speak' => 'Parla',
			'storyDetails.like' => 'Mi piace',
			'storyDetails.save' => 'Salva',
			'storyDetails.feedback' => 'Feedback',
			'storyDetails.rating' => 'Valutazione',
			'storyDetails.stop' => 'Ferma',
			'storyDetails.start' => 'Inizia',
			'storyDetails.listen' => 'Ascolta',
			'storyDetails.translation' => 'Traduzione',
			'storyDetails.translating' => 'Traduzione in corso...',
			'storyDetails.saveToLibrary' => 'Salva in biblioteca',
			'storyDetails.rateThisStory' => 'Valuta questa storia',
			'storyDetails.enjoyStory' => 'Quanto ti è piaciuta questa storia?',
			'storyDetails.send' => 'Invia',
			'storyDetails.subject' => 'Oggetto',
			'storyDetails.feedbackSubjects.bugReport' => 'Segnalazione bug',
			'storyDetails.feedbackSubjects.storyContent' => 'Contenuto della storia',
			'storyDetails.feedbackSubjects.audioIssue' => 'Problema audio',
			'storyDetails.feedbackSubjects.suggestion' => 'Suggerimento',
			'storyDetails.feedbackSubjects.other' => 'Altro',
			'share.title' => 'Condividi con gli amici',
			'share.mainTitle' => 'Condividi la pace',
			'share.descriptionPart1' => 'Invita i tuoi amici a respirare insieme.\nPer ogni invito, entrambi ottenete ',
			'share.descriptionPart2' => '1 settimana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'IL TUO CODICE DI RIFERIMENTO',
			'share.codeCopied' => 'Codice copiato!',
			'share.copyCode' => 'Copia codice',
			'share.inviteDescription' => 'Invita i tuoi amici e impara\ninsieme',
			'share.linkCopied' => 'Copiato',
			'share.linkCopiedMessage' => 'Il link è stato copiato negli appunti.',
			'delete' => 'Elimina',
			'editProfile.title' => 'Modifica profilo',
			'editProfile.changePhoto' => 'Cambia Avatar',
			'editProfile.learnLanguage' => 'Seleziona lingua di apprendimento',
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
