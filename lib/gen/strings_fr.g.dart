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
	@override String get pressBackAgainToExit => 'Appuyez à nouveau sur retour pour quitter';
	@override late final _TranslationsFaqFr faq = _TranslationsFaqFr._(_root);
	@override String get good_morning => 'Bonjour';
	@override String get good_afternoon => 'Bon après-midi';
	@override String get good_evening => 'Bonsoir';
	@override late final _TranslationsSplashFr splash = _TranslationsSplashFr._(_root);
	@override late final _TranslationsProfileFr profile = _TranslationsProfileFr._(_root);
	@override late final _TranslationsHomeFr home = _TranslationsHomeFr._(_root);
	@override late final _TranslationsEditProfileFr editProfile = _TranslationsEditProfileFr._(_root);
	@override late final _TranslationsNotificationsFr notifications = _TranslationsNotificationsFr._(_root);
	@override late final _TranslationsShareFr share = _TranslationsShareFr._(_root);
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
	@override late final _TranslationsHomePremiumPlanFr premiumPlan = _TranslationsHomePremiumPlanFr._(_root);
}

// Path: editProfile
class _TranslationsEditProfileFr implements TranslationsEditProfileEn {
	_TranslationsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override String get changePhoto => 'Changer la photo';
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
	@override String get supportAndOther => 'SUPPORT ET AUTRE';
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
			'cookies' => 'Politique relative aux cookies',
			'privacy' => 'Politique de confidentialité',
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
			'profile.sections.accountSettings' => 'PARAMÈTRES DU COMPTE',
			'profile.sections.supportAndOther' => 'SUPPORT ET AUTRE',
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
			'home.premiumPlan.title' => 'Plan Premium',
			'home.premiumPlan.description' => 'Débloquez votre chatbot IA et\nobtenez toutes les fonctionnalités premium',
			'home.premiumPlan.button' => 'Obtenir Premium',
			'home.premiumPlan.dialog.title' => 'Fonctionnalité non disponible',
			'home.premiumPlan.dialog.message' => 'Cette fonctionnalité n\'est actuellement pas disponible.',
			'home.premiumPlan.dialog.button' => 'OK',
			'editProfile.title' => 'Modifier le profil',
			'editProfile.changePhoto' => 'Changer la photo',
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
			'share.title' => 'Partager avec des amis',
			'share.mainTitle' => 'Partagez la paix',
			'share.descriptionPart1' => 'Invitez vos amis à respirer ensemble.\nPour chaque invitation, vous obtenez tous les deux ',
			'share.descriptionPart2' => '1 semaine Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'VOTRE CODE DE PARRAINAGE',
			'share.codeCopied' => 'Code copié !',
			'share.copyCode' => 'Copier le code',
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
