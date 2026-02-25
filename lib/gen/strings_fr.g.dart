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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Bienvenue ${name}';
	@override String welcome2({required Object appName}) => 'Bienvenue à ${appName}';
	@override String get get_started => 'Commencer';
	@override String get next => 'Suivant';
	@override String get back => 'Retour';
	@override String get skip => 'Passer';
	@override String get kContinue => 'Continuer';
	@override String get logintext => 'Où chaque mot est une nouvelle aventure qui attend d\'être racontée.';
	@override late final _TranslationsTermOfServiceFr termOfService = _TranslationsTermOfServiceFr._(_root);
	@override String get cookies => 'Politique relative aux cookies';
	@override String get privacy => 'Politique de confidentialité';
	@override late final _TranslationsOnboardingFr onboarding = _TranslationsOnboardingFr._(_root);
	@override String get pressBackAgainToExit => 'Appuyez à nouveau sur retour pour quitter';
	@override late final _TranslationsFaqFr faq = _TranslationsFaqFr._(_root);
	@override String get good_morning => 'Bonjour';
	@override String get good_afternoon => 'Bon après-midi';
	@override String get good_evening => 'Bonsoir';
	@override late final _TranslationsSplashFr splash = _TranslationsSplashFr._(_root);
	@override late final _TranslationsProfileFr profile = _TranslationsProfileFr._(_root);
	@override late final _TranslationsHomeFr home = _TranslationsHomeFr._(_root);
	@override late final _TranslationsAllStoriesFr allStories = _TranslationsAllStoriesFr._(_root);
	@override late final _TranslationsStoriesFr stories = _TranslationsStoriesFr._(_root);
	@override late final _TranslationsLibraryFr library = _TranslationsLibraryFr._(_root);
	@override late final _TranslationsBottomNavFr bottomNav = _TranslationsBottomNavFr._(_root);
	@override late final _TranslationsDayStreakFr dayStreak = _TranslationsDayStreakFr._(_root);
	@override late final _TranslationsStoryDetailsFr storyDetails = _TranslationsStoryDetailsFr._(_root);
	@override late final _TranslationsShareFr share = _TranslationsShareFr._(_root);
	@override String get delete => 'Supprimer';
	@override late final _TranslationsEditProfileFr editProfile = _TranslationsEditProfileFr._(_root);
	@override late final _TranslationsNotificationsFr notifications = _TranslationsNotificationsFr._(_root);
	@override late final _TranslationsAuthFr auth = _TranslationsAuthFr._(_root);
	@override String get cancel => 'Annuler';
	@override String get deleteAccount => 'Supprimer le compte';
	@override String get deleteDialogTitle => 'Êtes-vous sûr de vouloir supprimer votre compte ?';
	@override String get deleteDialogDescription => 'Cette action est irréversible et supprimera définitivement tout votre historique d\'exercices et vos données.';
	@override String get deleteError => 'Une erreur s\'est produite lors de la suppression de votre compte. Veuillez réessayer.';
	@override String get enterInvitationCode => 'Saisir le code d\'invitation';
	@override String get inviteFriends => 'Entrez le code d\'invitation reçu d\'un ami.\nTapez-le dans le champ désigné';
	@override String get twoDaysPremium => '7 jours Premium';
	@override String get advantage => '\npour profiter de ses avantages.';
	@override String get send => 'Envoyer';
	@override late final _TranslationsReferralCodeFr referralCode = _TranslationsReferralCodeFr._(_root);
	@override String get deleteNotifications => 'Supprimer les notifications';
	@override String get deleteNotificationsDescription => 'Êtes-vous sûr de vouloir supprimer toutes\nvos notifications ? Cette action est irréversible et ne peut pas être annulée.';
	@override String get deleteAll => 'Tout supprimer';
	@override String get appLanguage => 'Langue de l\'application';
	@override String get selectLanguage => 'Sélectionnez votre langue préférée';
	@override String get save => 'Enregistrer';
	@override late final _TranslationsLanguageOptionsFr languageOptions = _TranslationsLanguageOptionsFr._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceFr implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'En vous inscrivant à swipe, vous acceptez nos ';
	@override String get link1 => 'Conditions d\'utilisation';
	@override String get text2 => '. Découvrez comment nous traitons vos données dans notre ';
	@override String get link2 => 'Politique de confidentialité';
	@override String get text3 => ' et ';
	@override String get link3 => 'Politique relative aux cookies';
	@override String get text4 => '';
	@override late final _TranslationsTermOfServicePrivacyPolicyFr privacyPolicy = _TranslationsTermOfServicePrivacyPolicyFr._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServiceFr termsOfService = _TranslationsTermOfServiceTermsOfServiceFr._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyFr cookiePolicy = _TranslationsTermOfServiceCookiePolicyFr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1Fr step1 = _TranslationsOnboardingStep1Fr._(_root);
	@override late final _TranslationsOnboardingStep2Fr step2 = _TranslationsOnboardingStep2Fr._(_root);
	@override late final _TranslationsOnboardingLoadingFr loading = _TranslationsOnboardingLoadingFr._(_root);
}

// Path: faq
class _TranslationsFaqFr implements TranslationsFaqEn {
	_TranslationsFaqFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Questions fréquemment posées';
	@override late final _TranslationsFaqQuestionsFr questions = _TranslationsFaqQuestionsFr._(_root);
}

// Path: splash
class _TranslationsSplashFr implements TranslationsSplashEn {
	_TranslationsSplashFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Fr screen1 = _TranslationsSplashScreen1Fr._(_root);
	@override late final _TranslationsSplashScreen2Fr screen2 = _TranslationsSplashScreen2Fr._(_root);
}

// Path: profile
class _TranslationsProfileFr implements TranslationsProfileEn {
	_TranslationsProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get freeVersion => 'Version gratuite';
	@override String get error => 'Erreur';
	@override String get passive => 'Passif';
	@override late final _TranslationsProfileSectionsFr sections = _TranslationsProfileSectionsFr._(_root);
	@override late final _TranslationsProfileMenuFr menu = _TranslationsProfileMenuFr._(_root);
	@override String get manage => 'GÉRER';
	@override late final _TranslationsProfileLogoutDialogFr logoutDialog = _TranslationsProfileLogoutDialogFr._(_root);
}

// Path: home
class _TranslationsHomeFr implements TranslationsHomeEn {
	_TranslationsHomeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium !';
	@override String get seeMore => 'Voir plus';
	@override String get pickUpWhereYouLeftOff => 'Reprendre où vous en étiez';
	@override String get premiumSection => 'Premium';
	@override String get history => 'Historique';
	@override String get librarySection => 'Bibliothèque';
	@override String get libraryDescription => 'Les mots sauvegardés apparaîtront ici.';
	@override String get upgradeToPremium => 'Passer à Premium';
	@override String get unlimitedStories => 'Histoires illimitées et sans publicité';
	@override late final _TranslationsHomePremiumPlanFr premiumPlan = _TranslationsHomePremiumPlanFr._(_root);
}

// Path: allStories
class _TranslationsAllStoriesFr implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Toutes les histoires';
	@override String get noStoriesFound => 'Aucune histoire trouvée';
	@override String get selectFilter => 'Sélectionner un filtre';
	@override String get category => 'Catégorie';
	@override String get categorySubtitle => 'Veuillez sélectionner la catégorie que vous souhaitez lire';
	@override String get apply => 'Appliquer';
}

// Path: stories
class _TranslationsStoriesFr implements TranslationsStoriesEn {
	_TranslationsStoriesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Histoires';
	@override String get popularStories => 'Histoires populaires';
	@override String get recommendForYou => 'Recommandé pour vous';
	@override String get allStories => 'Toutes les histoires';
	@override String get seeAll => 'Tout voir';
}

// Path: library
class _TranslationsLibraryFr implements TranslationsLibraryEn {
	_TranslationsLibraryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bibliothèque';
	@override String wordCount({required Object count}) => '${count} Mots';
	@override String get popularWords => 'Mots populaires';
	@override String get allWords => 'Tous les mots';
	@override String get searchWord => 'Recherche de mots';
	@override String get searchHint => 'Veuillez entrer un mot…';
}

// Path: bottomNav
class _TranslationsBottomNavFr implements TranslationsBottomNavEn {
	_TranslationsBottomNavFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Accueil';
	@override String get stories => 'Histoires';
	@override String get library => 'Bibliothèque';
	@override String get profile => 'Profil';
}

// Path: dayStreak
class _TranslationsDayStreakFr implements TranslationsDayStreakEn {
	_TranslationsDayStreakFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Série du jour !';
	@override late final _TranslationsDayStreakDaysFr days = _TranslationsDayStreakDaysFr._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsFr implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Introduction';
	@override String get saved => 'Sauvegardé';
	@override String get removed => 'Supprimé';
	@override String get storyAddedToLibrary => 'L\'histoire a été ajoutée à votre bibliothèque.';
	@override String get storyRemovedFromLibrary => 'L\'histoire a été supprimée de la bibliothèque.';
	@override String get wordAddedToLibrary => 'Le mot a été ajouté à la bibliothèque. Annuler';
	@override String get successfully => 'Avec succès';
	@override String get ratingSubmitted => 'Votre évaluation a été soumise avec succès.';
	@override String get warning => 'Avertissement';
	@override String get fillAllFields => 'Veuillez remplir tous les champs.';
	@override String get messageSent => 'Votre message a été envoyé avec succès.';
	@override String get translate => 'Traduire';
	@override String get speak => 'Parler';
	@override String get like => 'J\'aime';
	@override String get save => 'Sauvegarder';
	@override String get feedback => 'Retour';
	@override String get rating => 'Évaluation';
	@override String get stop => 'Arrêter';
	@override String get start => 'Démarrer';
	@override String get listen => 'Écouter';
	@override String get translation => 'Traduction';
	@override String get translating => 'Traduction en cours...';
	@override String get saveToLibrary => 'Enregistrer dans la bibliothèque';
	@override String get rateThisStory => 'Évaluer cette histoire';
	@override String get enjoyStory => 'Avez-vous apprécié cette histoire ?';
	@override String get send => 'Envoyer';
	@override String get subject => 'Sujet';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsFr feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsFr._(_root);
}

// Path: share
class _TranslationsShareFr implements TranslationsShareEn {
	_TranslationsShareFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partager avec des amis';
	@override String get mainTitle => 'Partagez la paix';
	@override String get descriptionPart1 => 'Invitez vos amis à respirer ensemble.\nPour chaque invitation, vous obtenez tous les deux ';
	@override String get descriptionPart2 => '1 semaine Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'VOTRE CODE DE PARRAINAGE';
	@override String get codeCopied => 'Code copié !';
	@override String get copyCode => 'Copier le code';
	@override String get inviteDescription => 'Invitez vos amis et apprenez\nensemble';
	@override String get linkCopied => 'Copié';
	@override String get linkCopiedMessage => 'Le lien a été copié dans le presse-papiers.';
}

// Path: editProfile
class _TranslationsEditProfileFr implements TranslationsEditProfileEn {
	_TranslationsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override String get changePhoto => 'Changer l\'avatar';
	@override String get learnLanguage => 'Sélectionner la langue d\'apprentissage';
	@override String get fullName => 'Nom complet';
	@override String get email => 'E-mail';
	@override String get age => 'Âge';
	@override String get save => 'Enregistrer';
	@override String get saving => 'Enregistrement...';
	@override String get updateSuccess => 'Profil mis à jour avec succès';
	@override String get updateError => 'Une erreur s\'est produite lors de la mise à jour du profil';
	@override String get deleteAccount => 'Supprimer le compte';
}

// Path: notifications
class _TranslationsNotificationsFr implements TranslationsNotificationsEn {
	_TranslationsNotificationsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifications';
	@override String get emptyTitle => 'Pas encore de notifications';
	@override String get emptyDescription => 'Nous vous informerons lorsqu\'il y aura une mise à jour importante concernant votre parcours d\'apprentissage.';
	@override String get premiumBannerTitle => 'Ne manquez pas les\navantages Premium !';
	@override String get premiumBannerDescription => 'Profitez des opportunités en tant qu\'abonné Premium.';
}

// Path: auth
class _TranslationsAuthFr implements TranslationsAuthEn {
	_TranslationsAuthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Continuer avec Google';
	@override String get facebook => 'Continuer avec Facebook';
	@override String get apple => 'Continuer avec Apple';
	@override String get guest => 'Continuer en tant qu\'invité';
	@override String signInFailed({required Object error}) => 'Échec de la connexion : ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeFr implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Entrez le code à 8 caractères';
	@override String get applying => 'Application du code...';
	@override late final _TranslationsReferralCodeSuccessFr success = _TranslationsReferralCodeSuccessFr._(_root);
	@override late final _TranslationsReferralCodeErrorsFr errors = _TranslationsReferralCodeErrorsFr._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsFr implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get english => 'Anglais';
	@override String get german => 'Allemand';
	@override String get italian => 'Italien';
	@override String get french => 'Français';
	@override String get japanese => 'Japonais';
	@override String get spanish => 'Espagnol';
	@override String get russian => 'Russe';
	@override String get turkish => 'Turc';
	@override String get korean => 'Coréen';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portugais';
}

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyFr implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Politique de Confidentialité';
	@override String get lastUpdated => 'Dernière mise à jour : 2025';
	@override String get intro => 'Lingola Stories Kids adopte la protection de la vie privée des enfants comme principe fondamental.';
	@override String get section1Title => '1. INFORMATIONS COLLECTÉES';
	@override String get section1sub1Title => '1.1 Données fournies par l\'utilisateur';
	@override String get section1sub1Body => 'Nickname or profile name.\nEmail address.\nAge information.\nLanguage level, stories read, and learned words.\n\nNote: This data is never used for health or psychological analysis.';
	@override String get section1sub2Title => '1.2 Données collectées automatiquement';
	@override String get section1sub2Body => 'Device type, OS, and app performance data are collected. Precise location is NOT collected; only approximate location.';
	@override String get section2Title => '2. FINALITÉS DU TRAITEMENT';
	@override String get section2Body => 'Your data is used solely to:\n\n- Provide safe and age-appropriate content.\n- Personalize the learning experience.\n- Improve app performance.\n- Fulfill legal obligations.';
	@override String get section3Title => '3. CONSERVATION ET SUPPRESSION';
	@override String get section3Body => 'Data is stored as long as your account is active. Support records kept max 12 months. Deleted accounts erase personal data irreversibly.';
	@override String get section4Title => '4. DROITS DES UTILISATEURS';
	@override String get section4Body => 'Conformément au RGPD, les parents peuvent demander accès, correction ou suppression. support@fly-work.com.';
	@override String get section5Title => '5. CONFIDENTIALITÉ DES ENFANTS';
	@override String get section5Body => 'Conçu pour 6 ans et plus. Consentement parental requis pour moins de 13 ans.';
	@override String get section6Title => '6. CONTACT';
	@override String get section6Body => 'Demandes : support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServiceFr implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServiceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conditions d\'Utilisation';
	@override String get lastUpdated => 'Dernière mise à jour : 2025';
	@override String get intro => 'Ces conditions régissent l\'utilisation de Lingola Stories Kids.';
	@override String get disclaimer => 'Avertissement : Lingola Stories Kids est un outil éducatif.';
	@override String get section1Title => '1. PORTÉE DU SERVICE';
	@override String get section1Body => 'The app provides story-based learning for children:\n\n- AI-powered stories and recommendations.\n- Age and level-based reading experience.\n- Vocabulary and pronunciation support.';
	@override String get section2Title => '2. CONDITIONS D\'UTILISATION ET ÂGE';
	@override String get section2Body => 'Users must be at least 6 years old.\nUsers under 18 are encouraged to use under parental supervision.\nAccount information must be accurate and up-to-date.';
	@override String get section3Title => '3. UTILISATIONS INTERDITES';
	@override String get section3Body => 'Unauthorized copying, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.';
	@override String get section4Title => '4. ABONNEMENTS ET PAIEMENTS';
	@override String get section4Body => 'Premium features are subject to App Store and Google Play policies. Cancellations and refunds are managed via the respective store settings.';
	@override String get section5Title => '5. PROPRIÉTÉ INTELLECTUELLE';
	@override String get section5Body => 'All content belongs to Lingola Stories Kids and may not be reproduced without permission.';
	@override String get section6Title => '6. LIMITATION DE RESPONSABILITÉ';
	@override String get section6Body => 'L\'application est fournie telle quelle.';
	@override String get section7Title => '7. LOI APPLICABLE';
	@override String get section7Body => 'Régie par les lois de la République de Turquie.';
	@override String get section8Title => '8. CONTACT';
	@override String get section8Body => 'Demandes : support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyFr implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Politique de Cookies';
	@override String get lastUpdated => 'Dernière mise à jour : 2025';
	@override String get intro => 'Cette politique explique quels outils numériques sont utilisés dans l\'application.';
	@override String get important => 'IMPORTANT : Protection de la vie privée des enfants pour 6 ans et plus.';
	@override String get section1Title => '1. QUE SONT LES COOKIES ?';
	@override String get section1Body => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. They do not directly identify you.';
	@override String get section2Title => '2. QUELLES TECHNOLOGIES UTILISONS-NOUS ?';
	@override String get section2Body => 'Strictly Necessary: For session management and security.\n\nPerformance and Analytics: Understand which stories are read, data evaluated anonymously.\n\nPersonalization: Remembers language preference and reading level.';
	@override String get section3Title => '3. POURQUOI CES TECHNOLOGIES ?';
	@override String get section3Body => '- To ensure the app runs safely.\n- To make the reading experience more fluid.\n- To remember settings.\n- To identify features for future development.';
	@override String get section4Title => '4. TECHNOLOGIES TIERCES';
	@override String get section4Body => 'We apply minimum data usage when working with third-party partners.';
	@override String get section5Title => '5. CONTRÔLE ET GESTION';
	@override String get section5Body => 'Parents can limit these technologies via device settings. Disabling necessary technologies may affect functionality.';
	@override String get section6Title => '6. CONTACT';
	@override String get section6Body => 'Demandes : support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1Fr implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle langue voudrais-tu\napprendre ?';
	@override String get subtitle => 'Veuillez sélectionner la langue ou les langues\nque vous souhaitez apprendre.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2Fr implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel type d\'histoires\ntu aimes ?';
	@override String get subtitle => 'Veuillez indiquer votre préférence.';
	@override late final _TranslationsOnboardingStep2CategoriesFr categories = _TranslationsOnboardingStep2CategoriesFr._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingFr implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => 'Votre compte personnel est\n';
	@override String get titlePart2 => 'en cours de création';
	@override String get subtitle => 'Nous créons de merveilleuses histoires pour vous';
	@override String get optimization => 'Optimisation';
}

// Path: faq.questions
class _TranslationsFaqQuestionsFr implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Fr q1 = _TranslationsFaqQuestionsQ1Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ2Fr q2 = _TranslationsFaqQuestionsQ2Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ3Fr q3 = _TranslationsFaqQuestionsQ3Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ4Fr q4 = _TranslationsFaqQuestionsQ4Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ5Fr q5 = _TranslationsFaqQuestionsQ5Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ6Fr q6 = _TranslationsFaqQuestionsQ6Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ7Fr q7 = _TranslationsFaqQuestionsQ7Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ8Fr q8 = _TranslationsFaqQuestionsQ8Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ9Fr q9 = _TranslationsFaqQuestionsQ9Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ10Fr q10 = _TranslationsFaqQuestionsQ10Fr._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Fr implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apprenez l\'anglais avec des histoires';
	@override String get description => 'Pas de mémorisation ennuyeuse. Découvrez les mots dans leur flux naturel à travers des histoires courtes et amusantes.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Fr implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'L\'intelligence artificielle vous guide';
	@override String get description => 'Elle suit les mots avec lesquels vous avez des difficultés, explique leur signification et suggère de nouvelles histoires adaptées à votre niveau.';
}

// Path: profile.sections
class _TranslationsProfileSectionsFr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'PARAMÈTRES DU COMPTE';
	@override String get general => 'GÉNÉRAL';
}

// Path: profile.menu
class _TranslationsProfileMenuFr implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Modifier le profil';
	@override String get notifications => 'Notifications';
	@override String get premium => 'Premium';
	@override String get appLanguage => 'Langue de l\'application';
	@override String get shareWithFriends => 'Partager avec des amis';
	@override String get enterInviteCode => 'Entrer le code d\'invitation';
	@override String get rateUs => 'Évaluez-nous';
	@override String get faq => 'FAQ';
	@override String get logout => 'Se déconnecter';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogFr implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous êtes sur le point de vous déconnecter';
	@override String get message => 'À bientôt ! Nous continuerons à suivre vos exercices de respiration.';
	@override String get logoutButton => 'Se déconnecter';
	@override String get cancelButton => 'Annuler';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanFr implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan Premium';
	@override String get description => 'Débloquez votre chatbot IA et\nobtenez toutes les fonctionnalités premium';
	@override String get button => 'Obtenir Premium';
	@override late final _TranslationsHomePremiumPlanDialogFr dialog = _TranslationsHomePremiumPlanDialogFr._(_root);
}

// Path: dayStreak.days
class _TranslationsDayStreakDaysFr implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get su => 'Di';
	@override String get mo => 'Lu';
	@override String get tu => 'Ma';
	@override String get we => 'Me';
	@override String get th => 'Je';
	@override String get fr => 'Ve';
	@override String get sa => 'Sa';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsFr implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get bugReport => 'Rapport de bogue';
	@override String get storyContent => 'Contenu de l\'histoire';
	@override String get audioIssue => 'Problème audio';
	@override String get suggestion => 'Suggestion';
	@override String get other => 'Autre';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessFr implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Succès !';
	@override String get message => 'Code de parrainage appliqué avec succès ! Vous et votre ami avez reçu 1 semaine de premium.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsFr implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeFr missingCode = _TranslationsReferralCodeErrorsMissingCodeFr._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatFr invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatFr._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedFr alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedFr._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralFr selfReferral = _TranslationsReferralCodeErrorsSelfReferralFr._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundFr codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundFr._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorFr genericError = _TranslationsReferralCodeErrorsGenericErrorFr._(_root);
}

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesFr implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 Aventures Spatiales';
	@override String get magic => '🦄 Mondes Magiques';
	@override String get detectives => '🕵️ Petits Détectives';
	@override String get animals => '🐾 Amis Adorables';
	@override String get dinosaurs => '🦖 L\'Ère des Dinosaures';
	@override String get superhero => '🦸 Super-héros';
	@override String get underwater => '🌊 Royaume Sous-marin';
	@override String get fairytale => '🏰 Contes de Princes et Princesses';
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Fr implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'À quoi sert cette application ?';
	@override String get answer => 'Elle permet aux enfants d\'apprendre l\'anglais grâce à des histoires ludiques. Les mots apparaissent en contexte, leur sens s\'appréhende intuitivement et la répétition les ancre durablement.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Fr implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Que fait l\'intelligence artificielle ici ?';
	@override String get answer => 'Elle analyse les mots difficiles pour l\'enfant, fournit des explications simples et propose de nouvelles histoires adaptées à son niveau. Le contenu s\'ajuste au rythme d\'apprentissage.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Fr implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Combien de temps faut-il l\'utiliser chaque jour ?';
	@override String get answer => '5–10 minutes par jour suffisent. Même une courte histoire, si elle est régulière, est efficace.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Fr implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Pour quel groupe d\'âge les histoires conviennent-elles ?';
	@override String get answer => 'Les histoires sont proposées selon l\'âge et le niveau des enfants. L\'application évalue le niveau au départ et adapte la difficulté au fur et à mesure.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Fr implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Comment l\'enfant apprend-il les mots qu\'il ne connaît pas ?';
	@override String get answer => 'En touchant un mot inconnu, l\'enfant voit sa définition, une explication simple et la prononciation correcte. Ainsi le mot est à la fois lu et entendu.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Fr implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Une connexion Internet est-elle nécessaire ?';
	@override String get answer => 'Les histoires préalablement téléchargées peuvent être lues hors ligne. Une connexion est nécessaire pour de nouveaux contenus et les mises à jour.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Fr implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'L\'application est-elle gratuite ?';
	@override String get answer => 'L\'accès aux histoires de base est gratuit. Plus d\'histoires, une personnalisation avancée et des fonctionnalités supplémentaires sont proposées dans le pack premium.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Fr implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Les histoires peuvent-elles être écoutées ?';
	@override String get answer => 'Oui. Les histoires peuvent être écoutées avec une prononciation correcte, ce qui développe simultanément la lecture et la compréhension orale.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Fr implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Est-il possible de suivre les mots appris ?';
	@override String get answer => 'Oui. Les mots appris sont enregistrés et des révisions sont planifiées à intervalles réguliers pour réduire l\'oubli.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Fr implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Dans combien de temps voit-on des progrès ?';
	@override String get answer => 'Avec une utilisation régulière, des progrès se remarquent rapidement. À mesure que l\'habitude de lire augmente, le vocabulaire et la compréhension s\'améliorent.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogFr implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fonctionnalité non disponible';
	@override String get message => 'Cette fonctionnalité n\'est actuellement pas disponible.';
	@override String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeFr implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code requis';
	@override String get message => 'Veuillez entrer un code de parrainage pour continuer.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatFr implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Format invalide';
	@override String get message => 'Le code de parrainage doit contenir exactement 8 caractères.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedFr implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Déjà utilisé';
	@override String get message => 'Vous avez déjà utilisé un code de parrainage. Chaque utilisateur ne peut utiliser qu\'un seul code.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralFr implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code invalide';
	@override String get message => 'Vous ne pouvez pas utiliser votre propre code d\'invitation. Veuillez utiliser un code d\'un ami.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundFr implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code non trouvé';
	@override String get message => 'Le code de parrainage que vous avez saisi n\'existe pas. Veuillez vérifier et réessayer.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorFr implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erreur';
	@override String get message => 'Une erreur s\'est produite lors de l\'application du code de parrainage. Veuillez réessayer.';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Bienvenue ${name}',
			'welcome2' => ({required Object appName}) => 'Bienvenue à ${appName}',
			'get_started' => 'Commencer',
			'next' => 'Suivant',
			'back' => 'Retour',
			'skip' => 'Passer',
			'kContinue' => 'Continuer',
			'logintext' => 'Où chaque mot est une nouvelle aventure qui attend d\'être racontée.',
			'termOfService.text1' => 'En vous inscrivant à swipe, vous acceptez nos ',
			'termOfService.link1' => 'Conditions d\'utilisation',
			'termOfService.text2' => '. Découvrez comment nous traitons vos données dans notre ',
			'termOfService.link2' => 'Politique de confidentialité',
			'termOfService.text3' => ' et ',
			'termOfService.link3' => 'Politique relative aux cookies',
			'termOfService.text4' => '',
			'termOfService.privacyPolicy.title' => 'Politique de Confidentialité',
			'termOfService.privacyPolicy.lastUpdated' => 'Dernière mise à jour : 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids adopte la protection de la vie privée des enfants comme principe fondamental.',
			'termOfService.privacyPolicy.section1Title' => '1. INFORMATIONS COLLECTÉES',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Données fournies par l\'utilisateur',
			'termOfService.privacyPolicy.section1sub1Body' => 'Nickname or profile name.\nEmail address.\nAge information.\nLanguage level, stories read, and learned words.\n\nNote: This data is never used for health or psychological analysis.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Données collectées automatiquement',
			'termOfService.privacyPolicy.section1sub2Body' => 'Device type, OS, and app performance data are collected. Precise location is NOT collected; only approximate location.',
			'termOfService.privacyPolicy.section2Title' => '2. FINALITÉS DU TRAITEMENT',
			'termOfService.privacyPolicy.section2Body' => 'Your data is used solely to:\n\n- Provide safe and age-appropriate content.\n- Personalize the learning experience.\n- Improve app performance.\n- Fulfill legal obligations.',
			'termOfService.privacyPolicy.section3Title' => '3. CONSERVATION ET SUPPRESSION',
			'termOfService.privacyPolicy.section3Body' => 'Data is stored as long as your account is active. Support records kept max 12 months. Deleted accounts erase personal data irreversibly.',
			'termOfService.privacyPolicy.section4Title' => '4. DROITS DES UTILISATEURS',
			'termOfService.privacyPolicy.section4Body' => 'Conformément au RGPD, les parents peuvent demander accès, correction ou suppression. support@fly-work.com.',
			'termOfService.privacyPolicy.section5Title' => '5. CONFIDENTIALITÉ DES ENFANTS',
			'termOfService.privacyPolicy.section5Body' => 'Conçu pour 6 ans et plus. Consentement parental requis pour moins de 13 ans.',
			'termOfService.privacyPolicy.section6Title' => '6. CONTACT',
			'termOfService.privacyPolicy.section6Body' => 'Demandes : support@fly-work.com',
			'termOfService.termsOfService.title' => 'Conditions d\'Utilisation',
			'termOfService.termsOfService.lastUpdated' => 'Dernière mise à jour : 2025',
			'termOfService.termsOfService.intro' => 'Ces conditions régissent l\'utilisation de Lingola Stories Kids.',
			'termOfService.termsOfService.disclaimer' => 'Avertissement : Lingola Stories Kids est un outil éducatif.',
			'termOfService.termsOfService.section1Title' => '1. PORTÉE DU SERVICE',
			'termOfService.termsOfService.section1Body' => 'The app provides story-based learning for children:\n\n- AI-powered stories and recommendations.\n- Age and level-based reading experience.\n- Vocabulary and pronunciation support.',
			'termOfService.termsOfService.section2Title' => '2. CONDITIONS D\'UTILISATION ET ÂGE',
			'termOfService.termsOfService.section2Body' => 'Users must be at least 6 years old.\nUsers under 18 are encouraged to use under parental supervision.\nAccount information must be accurate and up-to-date.',
			'termOfService.termsOfService.section3Title' => '3. UTILISATIONS INTERDITES',
			'termOfService.termsOfService.section3Body' => 'Unauthorized copying, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.',
			'termOfService.termsOfService.section4Title' => '4. ABONNEMENTS ET PAIEMENTS',
			'termOfService.termsOfService.section4Body' => 'Premium features are subject to App Store and Google Play policies. Cancellations and refunds are managed via the respective store settings.',
			'termOfService.termsOfService.section5Title' => '5. PROPRIÉTÉ INTELLECTUELLE',
			'termOfService.termsOfService.section5Body' => 'All content belongs to Lingola Stories Kids and may not be reproduced without permission.',
			'termOfService.termsOfService.section6Title' => '6. LIMITATION DE RESPONSABILITÉ',
			'termOfService.termsOfService.section6Body' => 'L\'application est fournie telle quelle.',
			'termOfService.termsOfService.section7Title' => '7. LOI APPLICABLE',
			'termOfService.termsOfService.section7Body' => 'Régie par les lois de la République de Turquie.',
			'termOfService.termsOfService.section8Title' => '8. CONTACT',
			'termOfService.termsOfService.section8Body' => 'Demandes : support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Politique de Cookies',
			'termOfService.cookiePolicy.lastUpdated' => 'Dernière mise à jour : 2025',
			'termOfService.cookiePolicy.intro' => 'Cette politique explique quels outils numériques sont utilisés dans l\'application.',
			'termOfService.cookiePolicy.important' => 'IMPORTANT : Protection de la vie privée des enfants pour 6 ans et plus.',
			'termOfService.cookiePolicy.section1Title' => '1. QUE SONT LES COOKIES ?',
			'termOfService.cookiePolicy.section1Body' => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. They do not directly identify you.',
			'termOfService.cookiePolicy.section2Title' => '2. QUELLES TECHNOLOGIES UTILISONS-NOUS ?',
			'termOfService.cookiePolicy.section2Body' => 'Strictly Necessary: For session management and security.\n\nPerformance and Analytics: Understand which stories are read, data evaluated anonymously.\n\nPersonalization: Remembers language preference and reading level.',
			'termOfService.cookiePolicy.section3Title' => '3. POURQUOI CES TECHNOLOGIES ?',
			'termOfService.cookiePolicy.section3Body' => '- To ensure the app runs safely.\n- To make the reading experience more fluid.\n- To remember settings.\n- To identify features for future development.',
			'termOfService.cookiePolicy.section4Title' => '4. TECHNOLOGIES TIERCES',
			'termOfService.cookiePolicy.section4Body' => 'We apply minimum data usage when working with third-party partners.',
			'termOfService.cookiePolicy.section5Title' => '5. CONTRÔLE ET GESTION',
			'termOfService.cookiePolicy.section5Body' => 'Parents can limit these technologies via device settings. Disabling necessary technologies may affect functionality.',
			'termOfService.cookiePolicy.section6Title' => '6. CONTACT',
			'termOfService.cookiePolicy.section6Body' => 'Demandes : support@fly-work.com',
			'cookies' => 'Politique relative aux cookies',
			'privacy' => 'Politique de confidentialité',
			'onboarding.step1.title' => 'Quelle langue voudrais-tu\napprendre ?',
			'onboarding.step1.subtitle' => 'Veuillez sélectionner la langue ou les langues\nque vous souhaitez apprendre.',
			'onboarding.step2.title' => 'Quel type d\'histoires\ntu aimes ?',
			'onboarding.step2.subtitle' => 'Veuillez indiquer votre préférence.',
			'onboarding.step2.categories.space' => '🚀 Aventures Spatiales',
			'onboarding.step2.categories.magic' => '🦄 Mondes Magiques',
			'onboarding.step2.categories.detectives' => '🕵️ Petits Détectives',
			'onboarding.step2.categories.animals' => '🐾 Amis Adorables',
			'onboarding.step2.categories.dinosaurs' => '🦖 L\'Ère des Dinosaures',
			'onboarding.step2.categories.superhero' => '🦸 Super-héros',
			'onboarding.step2.categories.underwater' => '🌊 Royaume Sous-marin',
			'onboarding.step2.categories.fairytale' => '🏰 Contes de Princes et Princesses',
			'onboarding.loading.titlePart1' => 'Votre compte personnel est\n',
			'onboarding.loading.titlePart2' => 'en cours de création',
			'onboarding.loading.subtitle' => 'Nous créons de merveilleuses histoires pour vous',
			'onboarding.loading.optimization' => 'Optimisation',
			'pressBackAgainToExit' => 'Appuyez à nouveau sur retour pour quitter',
			'faq.title' => 'Questions fréquemment posées',
			'faq.questions.q1.question' => 'À quoi sert cette application ?',
			'faq.questions.q1.answer' => 'Elle permet aux enfants d\'apprendre l\'anglais grâce à des histoires ludiques. Les mots apparaissent en contexte, leur sens s\'appréhende intuitivement et la répétition les ancre durablement.',
			'faq.questions.q2.question' => 'Que fait l\'intelligence artificielle ici ?',
			'faq.questions.q2.answer' => 'Elle analyse les mots difficiles pour l\'enfant, fournit des explications simples et propose de nouvelles histoires adaptées à son niveau. Le contenu s\'ajuste au rythme d\'apprentissage.',
			'faq.questions.q3.question' => 'Combien de temps faut-il l\'utiliser chaque jour ?',
			'faq.questions.q3.answer' => '5–10 minutes par jour suffisent. Même une courte histoire, si elle est régulière, est efficace.',
			'faq.questions.q4.question' => 'Pour quel groupe d\'âge les histoires conviennent-elles ?',
			'faq.questions.q4.answer' => 'Les histoires sont proposées selon l\'âge et le niveau des enfants. L\'application évalue le niveau au départ et adapte la difficulté au fur et à mesure.',
			'faq.questions.q5.question' => 'Comment l\'enfant apprend-il les mots qu\'il ne connaît pas ?',
			'faq.questions.q5.answer' => 'En touchant un mot inconnu, l\'enfant voit sa définition, une explication simple et la prononciation correcte. Ainsi le mot est à la fois lu et entendu.',
			'faq.questions.q6.question' => 'Une connexion Internet est-elle nécessaire ?',
			'faq.questions.q6.answer' => 'Les histoires préalablement téléchargées peuvent être lues hors ligne. Une connexion est nécessaire pour de nouveaux contenus et les mises à jour.',
			'faq.questions.q7.question' => 'L\'application est-elle gratuite ?',
			'faq.questions.q7.answer' => 'L\'accès aux histoires de base est gratuit. Plus d\'histoires, une personnalisation avancée et des fonctionnalités supplémentaires sont proposées dans le pack premium.',
			'faq.questions.q8.question' => 'Les histoires peuvent-elles être écoutées ?',
			'faq.questions.q8.answer' => 'Oui. Les histoires peuvent être écoutées avec une prononciation correcte, ce qui développe simultanément la lecture et la compréhension orale.',
			'faq.questions.q9.question' => 'Est-il possible de suivre les mots appris ?',
			'faq.questions.q9.answer' => 'Oui. Les mots appris sont enregistrés et des révisions sont planifiées à intervalles réguliers pour réduire l\'oubli.',
			'faq.questions.q10.question' => 'Dans combien de temps voit-on des progrès ?',
			'faq.questions.q10.answer' => 'Avec une utilisation régulière, des progrès se remarquent rapidement. À mesure que l\'habitude de lire augmente, le vocabulaire et la compréhension s\'améliorent.',
			'good_morning' => 'Bonjour',
			'good_afternoon' => 'Bon après-midi',
			'good_evening' => 'Bonsoir',
			'splash.screen1.title' => 'Apprenez l\'anglais avec des histoires',
			'splash.screen1.description' => 'Pas de mémorisation ennuyeuse. Découvrez les mots dans leur flux naturel à travers des histoires courtes et amusantes.',
			'splash.screen2.title' => 'L\'intelligence artificielle vous guide',
			'splash.screen2.description' => 'Elle suit les mots avec lesquels vous avez des difficultés, explique leur signification et suggère de nouvelles histoires adaptées à votre niveau.',
			'profile.title' => 'Profil',
			'profile.freeVersion' => 'Version gratuite',
			'profile.error' => 'Erreur',
			'profile.passive' => 'Passif',
			'profile.sections.accountSettings' => 'PARAMÈTRES DU COMPTE',
			'profile.sections.general' => 'GÉNÉRAL',
			'profile.menu.editProfile' => 'Modifier le profil',
			'profile.menu.notifications' => 'Notifications',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'Langue de l\'application',
			'profile.menu.shareWithFriends' => 'Partager avec des amis',
			'profile.menu.enterInviteCode' => 'Entrer le code d\'invitation',
			'profile.menu.rateUs' => 'Évaluez-nous',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Se déconnecter',
			'profile.manage' => 'GÉRER',
			'profile.logoutDialog.title' => 'Vous êtes sur le point de vous déconnecter',
			'profile.logoutDialog.message' => 'À bientôt ! Nous continuerons à suivre vos exercices de respiration.',
			'profile.logoutDialog.logoutButton' => 'Se déconnecter',
			'profile.logoutDialog.cancelButton' => 'Annuler',
			'home.premium' => 'Premium !',
			'home.seeMore' => 'Voir plus',
			'home.pickUpWhereYouLeftOff' => 'Reprendre où vous en étiez',
			'home.premiumSection' => 'Premium',
			'home.history' => 'Historique',
			'home.librarySection' => 'Bibliothèque',
			'home.libraryDescription' => 'Les mots sauvegardés apparaîtront ici.',
			'home.upgradeToPremium' => 'Passer à Premium',
			'home.unlimitedStories' => 'Histoires illimitées et sans publicité',
			'home.premiumPlan.title' => 'Plan Premium',
			'home.premiumPlan.description' => 'Débloquez votre chatbot IA et\nobtenez toutes les fonctionnalités premium',
			'home.premiumPlan.button' => 'Obtenir Premium',
			'home.premiumPlan.dialog.title' => 'Fonctionnalité non disponible',
			'home.premiumPlan.dialog.message' => 'Cette fonctionnalité n\'est actuellement pas disponible.',
			'home.premiumPlan.dialog.button' => 'OK',
			'allStories.title' => 'Toutes les histoires',
			'allStories.noStoriesFound' => 'Aucune histoire trouvée',
			'allStories.selectFilter' => 'Sélectionner un filtre',
			'allStories.category' => 'Catégorie',
			'allStories.categorySubtitle' => 'Veuillez sélectionner la catégorie que vous souhaitez lire',
			'allStories.apply' => 'Appliquer',
			'stories.title' => 'Histoires',
			'stories.popularStories' => 'Histoires populaires',
			'stories.recommendForYou' => 'Recommandé pour vous',
			'stories.allStories' => 'Toutes les histoires',
			'stories.seeAll' => 'Tout voir',
			'library.title' => 'Bibliothèque',
			'library.wordCount' => ({required Object count}) => '${count} Mots',
			'library.popularWords' => 'Mots populaires',
			'library.allWords' => 'Tous les mots',
			'library.searchWord' => 'Recherche de mots',
			'library.searchHint' => 'Veuillez entrer un mot…',
			'bottomNav.home' => 'Accueil',
			'bottomNav.stories' => 'Histoires',
			'bottomNav.library' => 'Bibliothèque',
			'bottomNav.profile' => 'Profil',
			'dayStreak.title' => 'Série du jour !',
			'dayStreak.days.su' => 'Di',
			'dayStreak.days.mo' => 'Lu',
			'dayStreak.days.tu' => 'Ma',
			'dayStreak.days.we' => 'Me',
			'dayStreak.days.th' => 'Je',
			'dayStreak.days.fr' => 'Ve',
			'dayStreak.days.sa' => 'Sa',
			'storyDetails.introduction' => 'Introduction',
			'storyDetails.saved' => 'Sauvegardé',
			'storyDetails.removed' => 'Supprimé',
			'storyDetails.storyAddedToLibrary' => 'L\'histoire a été ajoutée à votre bibliothèque.',
			'storyDetails.storyRemovedFromLibrary' => 'L\'histoire a été supprimée de la bibliothèque.',
			'storyDetails.wordAddedToLibrary' => 'Le mot a été ajouté à la bibliothèque. Annuler',
			'storyDetails.successfully' => 'Avec succès',
			'storyDetails.ratingSubmitted' => 'Votre évaluation a été soumise avec succès.',
			'storyDetails.warning' => 'Avertissement',
			'storyDetails.fillAllFields' => 'Veuillez remplir tous les champs.',
			'storyDetails.messageSent' => 'Votre message a été envoyé avec succès.',
			'storyDetails.translate' => 'Traduire',
			'storyDetails.speak' => 'Parler',
			'storyDetails.like' => 'J\'aime',
			'storyDetails.save' => 'Sauvegarder',
			'storyDetails.feedback' => 'Retour',
			'storyDetails.rating' => 'Évaluation',
			'storyDetails.stop' => 'Arrêter',
			'storyDetails.start' => 'Démarrer',
			'storyDetails.listen' => 'Écouter',
			'storyDetails.translation' => 'Traduction',
			'storyDetails.translating' => 'Traduction en cours...',
			'storyDetails.saveToLibrary' => 'Enregistrer dans la bibliothèque',
			'storyDetails.rateThisStory' => 'Évaluer cette histoire',
			'storyDetails.enjoyStory' => 'Avez-vous apprécié cette histoire ?',
			'storyDetails.send' => 'Envoyer',
			'storyDetails.subject' => 'Sujet',
			'storyDetails.feedbackSubjects.bugReport' => 'Rapport de bogue',
			'storyDetails.feedbackSubjects.storyContent' => 'Contenu de l\'histoire',
			'storyDetails.feedbackSubjects.audioIssue' => 'Problème audio',
			'storyDetails.feedbackSubjects.suggestion' => 'Suggestion',
			'storyDetails.feedbackSubjects.other' => 'Autre',
			'share.title' => 'Partager avec des amis',
			'share.mainTitle' => 'Partagez la paix',
			'share.descriptionPart1' => 'Invitez vos amis à respirer ensemble.\nPour chaque invitation, vous obtenez tous les deux ',
			'share.descriptionPart2' => '1 semaine Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'VOTRE CODE DE PARRAINAGE',
			'share.codeCopied' => 'Code copié !',
			'share.copyCode' => 'Copier le code',
			'share.inviteDescription' => 'Invitez vos amis et apprenez\nensemble',
			'share.linkCopied' => 'Copié',
			'share.linkCopiedMessage' => 'Le lien a été copié dans le presse-papiers.',
			'delete' => 'Supprimer',
			'editProfile.title' => 'Modifier le profil',
			'editProfile.changePhoto' => 'Changer l\'avatar',
			'editProfile.learnLanguage' => 'Sélectionner la langue d\'apprentissage',
			'editProfile.fullName' => 'Nom complet',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Âge',
			'editProfile.save' => 'Enregistrer',
			'editProfile.saving' => 'Enregistrement...',
			'editProfile.updateSuccess' => 'Profil mis à jour avec succès',
			'editProfile.updateError' => 'Une erreur s\'est produite lors de la mise à jour du profil',
			'editProfile.deleteAccount' => 'Supprimer le compte',
			'notifications.title' => 'Notifications',
			'notifications.emptyTitle' => 'Pas encore de notifications',
			'notifications.emptyDescription' => 'Nous vous informerons lorsqu\'il y aura une mise à jour importante concernant votre parcours d\'apprentissage.',
			'notifications.premiumBannerTitle' => 'Ne manquez pas les\navantages Premium !',
			'notifications.premiumBannerDescription' => 'Profitez des opportunités en tant qu\'abonné Premium.',
			'auth.google' => 'Continuer avec Google',
			'auth.facebook' => 'Continuer avec Facebook',
			'auth.apple' => 'Continuer avec Apple',
			'auth.guest' => 'Continuer en tant qu\'invité',
			'auth.signInFailed' => ({required Object error}) => 'Échec de la connexion : ${error}',
			'cancel' => 'Annuler',
			'deleteAccount' => 'Supprimer le compte',
			'deleteDialogTitle' => 'Êtes-vous sûr de vouloir supprimer votre compte ?',
			'deleteDialogDescription' => 'Cette action est irréversible et supprimera définitivement tout votre historique d\'exercices et vos données.',
			'deleteError' => 'Une erreur s\'est produite lors de la suppression de votre compte. Veuillez réessayer.',
			'enterInvitationCode' => 'Saisir le code d\'invitation',
			'inviteFriends' => 'Entrez le code d\'invitation reçu d\'un ami.\nTapez-le dans le champ désigné',
			'twoDaysPremium' => '7 jours Premium',
			'advantage' => '\npour profiter de ses avantages.',
			'send' => 'Envoyer',
			'referralCode.inputPlaceholder' => 'Entrez le code à 8 caractères',
			'referralCode.applying' => 'Application du code...',
			'referralCode.success.title' => 'Succès !',
			'referralCode.success.message' => 'Code de parrainage appliqué avec succès ! Vous et votre ami avez reçu 1 semaine de premium.',
			'referralCode.errors.missingCode.title' => 'Code requis',
			'referralCode.errors.missingCode.message' => 'Veuillez entrer un code de parrainage pour continuer.',
			'referralCode.errors.invalidFormat.title' => 'Format invalide',
			'referralCode.errors.invalidFormat.message' => 'Le code de parrainage doit contenir exactement 8 caractères.',
			'referralCode.errors.alreadyUsed.title' => 'Déjà utilisé',
			'referralCode.errors.alreadyUsed.message' => 'Vous avez déjà utilisé un code de parrainage. Chaque utilisateur ne peut utiliser qu\'un seul code.',
			'referralCode.errors.selfReferral.title' => 'Code invalide',
			'referralCode.errors.selfReferral.message' => 'Vous ne pouvez pas utiliser votre propre code d\'invitation. Veuillez utiliser un code d\'un ami.',
			'referralCode.errors.codeNotFound.title' => 'Code non trouvé',
			'referralCode.errors.codeNotFound.message' => 'Le code de parrainage que vous avez saisi n\'existe pas. Veuillez vérifier et réessayer.',
			'referralCode.errors.genericError.title' => 'Erreur',
			'referralCode.errors.genericError.message' => 'Une erreur s\'est produite lors de l\'application du code de parrainage. Veuillez réessayer.',
			'deleteNotifications' => 'Supprimer les notifications',
			'deleteNotificationsDescription' => 'Êtes-vous sûr de vouloir supprimer toutes\nvos notifications ? Cette action est irréversible et ne peut pas être annulée.',
			'deleteAll' => 'Tout supprimer',
			'appLanguage' => 'Langue de l\'application',
			'selectLanguage' => 'Sélectionnez votre langue préférée',
			'save' => 'Enregistrer',
			'languageOptions.english' => 'Anglais',
			'languageOptions.german' => 'Allemand',
			'languageOptions.italian' => 'Italien',
			'languageOptions.french' => 'Français',
			'languageOptions.japanese' => 'Japonais',
			'languageOptions.spanish' => 'Espagnol',
			'languageOptions.russian' => 'Russe',
			'languageOptions.turkish' => 'Turc',
			'languageOptions.korean' => 'Coréen',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portugais',
			_ => null,
		};
	}
}
