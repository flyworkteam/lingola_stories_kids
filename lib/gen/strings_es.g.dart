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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Bienvenido ${name}';
	@override String welcome2({required Object appName}) => 'Bienvenido a ${appName}';
	@override String continue_to({required Object language}) => 'Continuar a ${language}';
	@override String get get_started => 'Comenzar';
	@override String get next => 'Siguiente';
	@override String get back => 'Atrás';
	@override String get skip => 'Saltar';
	@override String get kContinue => 'Continuar';
	@override String get logintext => 'Donde cada palabra es una nueva aventura esperando ser contada.';
	@override late final _TranslationsTermOfServiceEs termOfService = _TranslationsTermOfServiceEs._(_root);
	@override String get cookies => 'Política de cookies';
	@override String get privacy => 'Política de privacidad';
	@override late final _TranslationsOnboardingEs onboarding = _TranslationsOnboardingEs._(_root);
	@override String get pressBackAgainToExit => 'Presiona atrás nuevamente para salir';
	@override late final _TranslationsFaqEs faq = _TranslationsFaqEs._(_root);
	@override String get good_morning => 'Buenos días';
	@override String get good_afternoon => 'Buenas tardes';
	@override String get good_evening => 'Buenas noches';
	@override late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
	@override late final _TranslationsProfileEs profile = _TranslationsProfileEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsAllStoriesEs allStories = _TranslationsAllStoriesEs._(_root);
	@override late final _TranslationsStoriesEs stories = _TranslationsStoriesEs._(_root);
	@override late final _TranslationsLibraryEs library = _TranslationsLibraryEs._(_root);
	@override late final _TranslationsBottomNavEs bottomNav = _TranslationsBottomNavEs._(_root);
	@override late final _TranslationsDayStreakEs dayStreak = _TranslationsDayStreakEs._(_root);
	@override late final _TranslationsStoryDetailsEs storyDetails = _TranslationsStoryDetailsEs._(_root);
	@override late final _TranslationsShareEs share = _TranslationsShareEs._(_root);
	@override String get delete => 'Eliminar';
	@override late final _TranslationsEditProfileEs editProfile = _TranslationsEditProfileEs._(_root);
	@override late final _TranslationsNotificationsEs notifications = _TranslationsNotificationsEs._(_root);
	@override late final _TranslationsAuthEs auth = _TranslationsAuthEs._(_root);
	@override String get cancel => 'Cancelar';
	@override String get deleteAccount => 'Eliminar cuenta';
	@override String get deleteDialogTitle => '¿Estás seguro de que quieres eliminar tu cuenta?';
	@override String get deleteDialogDescription => 'Esta acción es irreversible y eliminará permanentemente todo tu historial de ejercicios y datos.';
	@override String get deleteError => 'Ocurrió un error al eliminar tu cuenta. Por favor intenta de nuevo.';
	@override String get enterInvitationCode => 'Ingresar código de invitación';
	@override String get inviteFriends => 'Ingresa el código de invitación que recibiste de un amigo.\nEscríbelo en el campo designado';
	@override String get twoDaysPremium => '7 días Premium';
	@override String get advantage => '\npara disfrutar de sus beneficios.';
	@override String get send => 'Enviar';
	@override late final _TranslationsReferralCodeEs referralCode = _TranslationsReferralCodeEs._(_root);
	@override String get deleteNotifications => 'Eliminar notificaciones';
	@override String get deleteNotificationsDescription => '¿Estás seguro de que quieres eliminar todas\ntus notificaciones? Esta acción es irreversible y no se puede deshacer.';
	@override String get deleteAll => 'Eliminar todo';
	@override String get appLanguage => 'Idioma de la aplicación';
	@override String get selectLanguage => 'Selecciona tu idioma preferido';
	@override String get save => 'Guardar';
	@override late final _TranslationsLanguageOptionsEs languageOptions = _TranslationsLanguageOptionsEs._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceEs implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Al registrarte en swipe, aceptas nuestros ';
	@override String get link1 => 'Términos de servicio';
	@override String get text2 => '. Descubre cómo procesamos tus datos en nuestra ';
	@override String get link2 => 'Política de privacidad';
	@override String get text3 => ' y ';
	@override String get link3 => 'Política de cookies';
	@override String get text4 => '';
	@override late final _TranslationsTermOfServicePrivacyPolicyEs privacyPolicy = _TranslationsTermOfServicePrivacyPolicyEs._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServiceEs termsOfService = _TranslationsTermOfServiceTermsOfServiceEs._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyEs cookiePolicy = _TranslationsTermOfServiceCookiePolicyEs._(_root);
}

// Path: onboarding
class _TranslationsOnboardingEs implements TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1Es step1 = _TranslationsOnboardingStep1Es._(_root);
	@override late final _TranslationsOnboardingStep2Es step2 = _TranslationsOnboardingStep2Es._(_root);
	@override late final _TranslationsOnboardingLoadingEs loading = _TranslationsOnboardingLoadingEs._(_root);
}

// Path: faq
class _TranslationsFaqEs implements TranslationsFaqEn {
	_TranslationsFaqEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preguntas frecuentes';
	@override late final _TranslationsFaqQuestionsEs questions = _TranslationsFaqQuestionsEs._(_root);
}

// Path: splash
class _TranslationsSplashEs implements TranslationsSplashEn {
	_TranslationsSplashEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Es screen1 = _TranslationsSplashScreen1Es._(_root);
	@override late final _TranslationsSplashScreen2Es screen2 = _TranslationsSplashScreen2Es._(_root);
}

// Path: profile
class _TranslationsProfileEs implements TranslationsProfileEn {
	_TranslationsProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get freeVersion => 'Versión gratuita';
	@override String get error => 'Error';
	@override String get passive => 'Pasivo';
	@override late final _TranslationsProfileSectionsEs sections = _TranslationsProfileSectionsEs._(_root);
	@override late final _TranslationsProfileMenuEs menu = _TranslationsProfileMenuEs._(_root);
	@override String get manage => 'GESTIONAR';
	@override late final _TranslationsProfileLogoutDialogEs logoutDialog = _TranslationsProfileLogoutDialogEs._(_root);
}

// Path: home
class _TranslationsHomeEs implements TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get premium => '¡Premium!';
	@override String get seeMore => 'Ver más';
	@override String get pickUpWhereYouLeftOff => 'Continúa donde lo dejaste';
	@override String get premiumSection => 'Premium';
	@override String get history => 'Historial';
	@override String get librarySection => 'Biblioteca';
	@override String get libraryDescription => 'Las palabras guardadas aparecerán aquí.';
	@override String get upgradeToPremium => 'Actualizar a Premium';
	@override String get unlimitedStories => 'Historias ilimitadas y sin anuncios';
	@override late final _TranslationsHomePremiumPlanEs premiumPlan = _TranslationsHomePremiumPlanEs._(_root);
}

// Path: allStories
class _TranslationsAllStoriesEs implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Todas las historias';
	@override String get noStoriesFound => 'No se encontraron historias';
	@override String get selectFilter => 'Seleccionar filtro';
	@override String get category => 'Categoría';
	@override String get categorySubtitle => 'Por favor, selecciona la categoría que deseas leer';
	@override String get apply => 'Aplicar';
}

// Path: stories
class _TranslationsStoriesEs implements TranslationsStoriesEn {
	_TranslationsStoriesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historias';
	@override String get popularStories => 'Historias populares';
	@override String get recommendForYou => 'Recomendado para ti';
	@override String get allStories => 'Todas las historias';
	@override String get seeAll => 'Ver todo';
	@override late final _TranslationsStoriesCategoriesEs categories = _TranslationsStoriesCategoriesEs._(_root);
}

// Path: library
class _TranslationsLibraryEs implements TranslationsLibraryEn {
	_TranslationsLibraryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biblioteca';
	@override String wordCount({required Object count}) => '${count} Palabras';
	@override String get popularWords => 'Palabras populares';
	@override String get allWords => 'Todas las palabras';
	@override String get searchWord => 'Buscar palabra';
	@override String get searchHint => 'Por favor, ingresa una palabra…';
	@override String get noWordsFound => 'No se encontraron palabras';
	@override String get noSavedWords => 'Aún no hay palabras guardadas';
}

// Path: bottomNav
class _TranslationsBottomNavEs implements TranslationsBottomNavEn {
	_TranslationsBottomNavEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get stories => 'Historias';
	@override String get library => 'Biblioteca';
	@override String get profile => 'Perfil';
}

// Path: dayStreak
class _TranslationsDayStreakEs implements TranslationsDayStreakEn {
	_TranslationsDayStreakEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Racha del día!';
	@override late final _TranslationsDayStreakDaysEs days = _TranslationsDayStreakDaysEs._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsEs implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Introducción';
	@override String get saved => 'Guardado';
	@override String get removed => 'Eliminado';
	@override String get storyAddedToLibrary => 'La historia ha sido añadida a tu biblioteca.';
	@override String get storyRemovedFromLibrary => 'La historia ha sido eliminada de la biblioteca.';
	@override String get wordAddedToLibrary => 'La palabra ha sido añadida a la biblioteca. Deshacer';
	@override String get successfully => 'Exitosamente';
	@override String get ratingSubmitted => 'Tu calificación ha sido enviada exitosamente.';
	@override String get warning => 'Advertencia';
	@override String get fillAllFields => 'Por favor, rellena todos los campos.';
	@override String get messageSent => 'Tu mensaje ha sido enviado exitosamente.';
	@override String get translate => 'Traducir';
	@override String get speak => 'Hablar';
	@override String get like => 'Me gusta';
	@override String get save => 'Guardar';
	@override String get feedback => 'Comentarios';
	@override String get rating => 'Calificación';
	@override String get stop => 'Parar';
	@override String get start => 'Iniciar';
	@override String get listen => 'Escuchar';
	@override String get translation => 'Traducción';
	@override String get translating => 'Traduciendo...';
	@override String get saveToLibrary => 'Guardar en biblioteca';
	@override String get rateThisStory => 'Calificar esta historia';
	@override String get enjoyStory => '¿Cuánto disfrutaste esta historia?';
	@override String get send => 'Enviar';
	@override String get subject => 'Asunto';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsEs feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsEs._(_root);
}

// Path: share
class _TranslationsShareEs implements TranslationsShareEn {
	_TranslationsShareEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartir con amigos';
	@override String get mainTitle => 'Comparte la paz';
	@override String get descriptionPart1 => 'Invita a tus amigos a respirar juntos.\nPor cada invitación, ambos obtienen ';
	@override String get descriptionPart2 => '1 semana Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'TU CÓDIGO DE REFERENCIA';
	@override String get codeCopied => '¡Código copiado!';
	@override String get copyCode => 'Copiar código';
	@override String get inviteDescription => 'Invita a tus amigos y aprende\njuntos';
	@override String get linkCopied => 'Copiado';
	@override String get linkCopiedMessage => 'El enlace ha sido copiado al portapapeles.';
}

// Path: editProfile
class _TranslationsEditProfileEs implements TranslationsEditProfileEn {
	_TranslationsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override String get changePhoto => 'Cambiar Avatar';
	@override String get learnLanguage => 'Seleccionar idioma de aprendizaje';
	@override String get fullName => 'Nombre completo';
	@override String get email => 'Correo electrónico';
	@override String get age => 'Edad';
	@override String get save => 'Guardar';
	@override String get saving => 'Guardando...';
	@override String get updateSuccess => 'Perfil actualizado exitosamente';
	@override String get updateError => 'Ocurrió un error al actualizar el perfil';
	@override String get deleteAccount => 'Eliminar cuenta';
}

// Path: notifications
class _TranslationsNotificationsEs implements TranslationsNotificationsEn {
	_TranslationsNotificationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificaciones';
	@override String get emptyTitle => 'Aún no hay notificaciones';
	@override String get emptyDescription => 'Te notificaremos cuando haya una actualización importante sobre tu viaje de aprendizaje.';
	@override String get premiumBannerTitle => '¡No te pierdas los\nbeneficios Premium!';
	@override String get premiumBannerDescription => 'Aprovecha las oportunidades como suscriptor Premium.';
}

// Path: auth
class _TranslationsAuthEs implements TranslationsAuthEn {
	_TranslationsAuthEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get google => 'Continuar con Google';
	@override String get facebook => 'Continuar con Facebook';
	@override String get apple => 'Continuar con Apple';
	@override String get guest => 'Continuar como invitado';
	@override String signInFailed({required Object error}) => 'Error al iniciar sesión: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeEs implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Ingresa el código de 8 caracteres';
	@override String get applying => 'Aplicando código...';
	@override late final _TranslationsReferralCodeSuccessEs success = _TranslationsReferralCodeSuccessEs._(_root);
	@override late final _TranslationsReferralCodeErrorsEs errors = _TranslationsReferralCodeErrorsEs._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsEs implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get english => 'Inglés';
	@override String get german => 'Alemán';
	@override String get italian => 'Italiano';
	@override String get french => 'Francés';
	@override String get japanese => 'Japonés';
	@override String get spanish => 'Español';
	@override String get russian => 'Ruso';
	@override String get turkish => 'Turco';
	@override String get korean => 'Coreano';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portugués';
}

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyEs implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Política de Privacidad';
	@override String get lastUpdated => 'Última actualización: 2025';
	@override String get intro => 'Lingola Stories Kids adopta la privacidad infantil como principio fundamental.';
	@override String get section1Title => '1. INFORMACIÓN RECOPILADA';
	@override String get section1sub1Title => '1.1 Datos del usuario';
	@override String get section1sub1Body => 'Nickname or profile name.\nEmail address.\nAge information.\nLanguage level, stories read, and learned words.\n\nNote: This data is never used for health or psychological analysis.';
	@override String get section1sub2Title => '1.2 Datos automáticos';
	@override String get section1sub2Body => 'Device type, OS, and app performance data are collected. Precise location is NOT collected; only approximate location.';
	@override String get section2Title => '2. FINALIDADES';
	@override String get section2Body => 'Your data is used solely to:\n\n- Provide safe and age-appropriate content.\n- Personalize the learning experience.\n- Improve app performance.\n- Fulfill legal obligations.';
	@override String get section3Title => '3. RETENCIÓN Y ELIMINACIÓN';
	@override String get section3Body => 'Data is stored as long as your account is active. Support records kept max 12 months. Deleted accounts erase personal data irreversibly.';
	@override String get section4Title => '4. DERECHOS DEL USUARIO';
	@override String get section4Body => 'Bajo el RGPD, los padres pueden solicitar acceso, corrección o eliminación. Envíe solicitudes a support@fly-work.com.';
	@override String get section5Title => '5. PRIVACIDAD INFANTIL';
	@override String get section5Body => 'Diseñada para mayores de 6 años. Consentimiento parental requerido para menores de 13.';
	@override String get section6Title => '6. CONTACTO';
	@override String get section6Body => 'Consultas: support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServiceEs implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServiceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Términos de Servicio';
	@override String get lastUpdated => 'Última actualización: 2025';
	@override String get intro => 'Estos términos rigen el uso de Lingola Stories Kids. Al usar la app, acepta estos términos.';
	@override String get disclaimer => 'Aviso: Lingola Stories Kids es una herramienta educativa.';
	@override String get section1Title => '1. ALCANCE DEL SERVICIO';
	@override String get section1Body => 'The app provides story-based learning for children:\n\n- AI-powered stories and recommendations.\n- Age and level-based reading experience.\n- Vocabulary and pronunciation support.';
	@override String get section2Title => '2. CONDICIONES DE USO Y EDAD';
	@override String get section2Body => 'Users must be at least 6 years old.\nUsers under 18 are encouraged to use under parental supervision.\nAccount information must be accurate and up-to-date.';
	@override String get section3Title => '3. USOS PROHIBIDOS';
	@override String get section3Body => 'Unauthorized copying, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.';
	@override String get section4Title => '4. SUSCRIPCIONES Y PAGOS';
	@override String get section4Body => 'Premium features are subject to App Store and Google Play policies. Cancellations and refunds are managed via the respective store settings.';
	@override String get section5Title => '5. PROPIEDAD INTELECTUAL';
	@override String get section5Body => 'All content belongs to Lingola Stories Kids and may not be reproduced without permission.';
	@override String get section6Title => '6. LIMITACIÓN DE RESPONSABILIDAD';
	@override String get section6Body => 'La app se proporciona tal cual.';
	@override String get section7Title => '7. LEY APLICABLE';
	@override String get section7Body => 'Regida por las leyes de la República de Turquía.';
	@override String get section8Title => '8. CONTACTO';
	@override String get section8Body => 'Consultas: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyEs implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Política de Cookies';
	@override String get lastUpdated => 'Última actualización: 2025';
	@override String get intro => 'Esta política explica qué tecnologías digitales se utilizan en la app.';
	@override String get important => 'IMPORTANTE: Lingola Stories Kids adopta la privacidad infantil como principio fundamental.';
	@override String get section1Title => '1. ¿QUÉ SON LAS COOKIES?';
	@override String get section1Body => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. They do not directly identify you.';
	@override String get section2Title => '2. ¿QUÉ TECNOLOGÍAS USAMOS?';
	@override String get section2Body => 'Strictly Necessary: For session management and security.\n\nPerformance and Analytics: Understand which stories are read, data evaluated anonymously.\n\nPersonalization: Remembers language preference and reading level.';
	@override String get section3Title => '3. ¿POR QUÉ LAS USAMOS?';
	@override String get section3Body => '- To ensure the app runs safely.\n- To make the reading experience more fluid.\n- To remember settings.\n- To identify features for future development.';
	@override String get section4Title => '4. TECNOLOGÍAS DE TERCEROS';
	@override String get section4Body => 'We apply minimum data usage when working with third-party partners.';
	@override String get section5Title => '5. CONTROL Y GESTIÓN';
	@override String get section5Body => 'Parents can limit these technologies via device settings. Disabling necessary technologies may affect functionality.';
	@override String get section6Title => '6. CONTACTO';
	@override String get section6Body => 'Consultas: support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1Es implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿A qué idioma quieres traducir el inglés para aprenderlo?';
	@override String get subtitle => 'Por favor, selecciona el idioma al que quieres traducir el inglés.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2Es implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Qué tipo de historias\nte gustan?';
	@override String get subtitle => 'Por favor, indica tu preferencia.';
	@override late final _TranslationsOnboardingStep2CategoriesEs categories = _TranslationsOnboardingStep2CategoriesEs._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingEs implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => 'Tu cuenta personal está\n';
	@override String get titlePart2 => 'siendo creada';
	@override String get subtitle => 'Creamos historias maravillosas para ti';
	@override String get optimization => 'Optimización';
}

// Path: faq.questions
class _TranslationsFaqQuestionsEs implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Es q1 = _TranslationsFaqQuestionsQ1Es._(_root);
	@override late final _TranslationsFaqQuestionsQ2Es q2 = _TranslationsFaqQuestionsQ2Es._(_root);
	@override late final _TranslationsFaqQuestionsQ3Es q3 = _TranslationsFaqQuestionsQ3Es._(_root);
	@override late final _TranslationsFaqQuestionsQ4Es q4 = _TranslationsFaqQuestionsQ4Es._(_root);
	@override late final _TranslationsFaqQuestionsQ5Es q5 = _TranslationsFaqQuestionsQ5Es._(_root);
	@override late final _TranslationsFaqQuestionsQ6Es q6 = _TranslationsFaqQuestionsQ6Es._(_root);
	@override late final _TranslationsFaqQuestionsQ7Es q7 = _TranslationsFaqQuestionsQ7Es._(_root);
	@override late final _TranslationsFaqQuestionsQ8Es q8 = _TranslationsFaqQuestionsQ8Es._(_root);
	@override late final _TranslationsFaqQuestionsQ9Es q9 = _TranslationsFaqQuestionsQ9Es._(_root);
	@override late final _TranslationsFaqQuestionsQ10Es q10 = _TranslationsFaqQuestionsQ10Es._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Es implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aprende inglés con historias';
	@override String get description => 'Nada de memorización aburrida. Descubre las palabras en su flujo natural a través de historias cortas y divertidas.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Es implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'La inteligencia artificial te guía';
	@override String get description => 'Hace seguimiento de las palabras con las que tienes dificultades, explica su significado y sugiere nuevas historias adaptadas a tu nivel.';
}

// Path: profile.sections
class _TranslationsProfileSectionsEs implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'CONFIGURACIÓN DE CUENTA';
	@override String get general => 'GENERAL';
}

// Path: profile.menu
class _TranslationsProfileMenuEs implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Editar perfil';
	@override String get notifications => 'Notificaciones';
	@override String get premium => 'Premium';
	@override String get appLanguage => 'Idioma de la aplicación';
	@override String get shareWithFriends => 'Compartir con amigos';
	@override String get enterInviteCode => 'Ingresar código de invitación';
	@override String get rateUs => 'Califícanos';
	@override String get faq => 'FAQ';
	@override String get logout => 'Cerrar sesión';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogEs implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estás a punto de cerrar sesión';
	@override String get message => '¡Nos vemos de nuevo! Seguiremos rastreando tus ejercicios de respiración.';
	@override String get logoutButton => 'Cerrar sesión';
	@override String get cancelButton => 'Cancelar';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanEs implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan Premium';
	@override String get description => 'Desbloquea tu chatbot de IA y\nobtén todas las funciones premium';
	@override String get button => 'Obtener Premium';
	@override late final _TranslationsHomePremiumPlanDialogEs dialog = _TranslationsHomePremiumPlanDialogEs._(_root);
}

// Path: stories.categories
class _TranslationsStoriesCategoriesEs implements TranslationsStoriesCategoriesEn {
	_TranslationsStoriesCategoriesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get popular => 'Popular';
	@override String get space => 'Espacio';
	@override String get magic => 'Magia';
	@override String get animals => 'Animales';
	@override String get detectives => 'Detectives';
	@override String get dinosaurs => 'Dinosaurios';
	@override String get superhero => 'Superhéroes';
	@override String get underwater => 'Submarino';
	@override String get fairytale => 'Cuentos de hadas';
}

// Path: dayStreak.days
class _TranslationsDayStreakDaysEs implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get su => 'Do';
	@override String get mo => 'Lu';
	@override String get tu => 'Ma';
	@override String get we => 'Mi';
	@override String get th => 'Ju';
	@override String get fr => 'Vi';
	@override String get sa => 'Sá';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsEs implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bugReport => 'Reporte de error';
	@override String get storyContent => 'Contenido de la historia';
	@override String get audioIssue => 'Problema de audio';
	@override String get suggestion => 'Sugerencia';
	@override String get other => 'Otro';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessEs implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Éxito!';
	@override String get message => '¡Código de referencia aplicado con éxito! Tú y tu amigo recibieron 1 semana de premium.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsEs implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeEs missingCode = _TranslationsReferralCodeErrorsMissingCodeEs._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatEs invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatEs._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedEs alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedEs._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralEs selfReferral = _TranslationsReferralCodeErrorsSelfReferralEs._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundEs codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundEs._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorEs genericError = _TranslationsReferralCodeErrorsGenericErrorEs._(_root);
}

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesEs implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 Aventuras Espaciales';
	@override String get magic => '🦄 Mundos Mágicos';
	@override String get detectives => '🕵️ Pequeños Detectives';
	@override String get animals => '🐾 Amigos Adorables';
	@override String get dinosaurs => '🦖 La Era de los Dinosaurios';
	@override String get superhero => '🦸 Superhéroes';
	@override String get underwater => '🌊 Reino Submarino';
	@override String get fairytale => '🏰 Cuentos de Príncipes y Princesas';
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Es implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cuál es el propósito de esta aplicación?';
	@override String get answer => 'Ayuda a los niños a aprender inglés a través de historias divertidas. Las palabras se ven en contexto, se aprenden de forma intuitiva y se refuerzan a través de la repetición.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Es implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Qué hace la IA aquí?';
	@override String get answer => 'Analiza con qué palabras tiene dificultades el niño, ofrece explicaciones simples y sugiere nuevas historias que son adecuadas para su nivel. El contenido se adapta al ritmo de aprendizaje del niño.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Es implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cuánto tiempo es suficiente al día?';
	@override String get answer => '5–10 minutos al día son suficientes. Incluso una historia corta es efectiva para el aprendizaje regular.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Es implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Para qué grupo de edad son adecuadas las historias?';
	@override String get answer => 'Las historias se presentan de acuerdo con la edad y el nivel del niño. La aplicación determina el nivel al principio y ajusta la dificultad según el progreso.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Es implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cómo aprende el niño palabras desconocidas?';
	@override String get answer => 'Cuando toca una palabra desconocida, se muestra su significado, una explicación simple y la pronunciación correcta. Así, la palabra se lee y se escucha.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Es implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Es necesaria una conexión a Internet?';
	@override String get answer => 'Las historias descargadas previamente se pueden leer sin conexión. Se requiere una conexión a Internet para nuevos contenidos y actualizaciones.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Es implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿La aplicación es gratuita?';
	@override String get answer => 'Se ofrece acceso gratuito a historias básicas. Más historias, personalización avanzada y funciones adicionales están disponibles en el paquete premium.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Es implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Se pueden escuchar las historias?';
	@override String get answer => 'Sí. Las historias se pueden escuchar con la pronunciación correcta. Así, tanto las habilidades de lectura como las de escucha se desarrollan juntas.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Es implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Se pueden rastrear las palabras aprendidas?';
	@override String get answer => 'Sí. Las palabras aprendidas se registran y se planifican para ser repetidas en intervalos específicos. Así se puede reducir el olvido.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Es implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cuánto tiempo se necesita para ver progreso?';
	@override String get answer => 'Con un uso regular, el progreso puede ser visible en poco tiempo. A medida que aumenta el hábito de lectura, mejoran el vocabulario y las habilidades de comprensión.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogEs implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Función no disponible';
	@override String get message => 'Esta función no está disponible actualmente.';
	@override String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeEs implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código requerido';
	@override String get message => 'Por favor, ingresa un código de referencia para continuar.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatEs implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Formato inválido';
	@override String get message => 'El código de referencia debe tener exactamente 8 caracteres.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedEs implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ya utilizado';
	@override String get message => 'Ya has utilizado un código de referencia. Cada usuario solo puede usar un código.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralEs implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código inválido';
	@override String get message => 'No puedes usar tu propio código de invitación. Por favor usa un código de un amigo.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundEs implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código no encontrado';
	@override String get message => 'El código de referencia que ingresaste no existe. Por favor verifica e intenta nuevamente.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorEs implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error';
	@override String get message => 'Ocurrió un error al aplicar el código de referencia. Por favor intenta nuevamente.';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Bienvenido ${name}',
			'welcome2' => ({required Object appName}) => 'Bienvenido a ${appName}',
			'continue_to' => ({required Object language}) => 'Continuar a ${language}',
			'get_started' => 'Comenzar',
			'next' => 'Siguiente',
			'back' => 'Atrás',
			'skip' => 'Saltar',
			'kContinue' => 'Continuar',
			'logintext' => 'Donde cada palabra es una nueva aventura esperando ser contada.',
			'termOfService.text1' => 'Al registrarte en swipe, aceptas nuestros ',
			'termOfService.link1' => 'Términos de servicio',
			'termOfService.text2' => '. Descubre cómo procesamos tus datos en nuestra ',
			'termOfService.link2' => 'Política de privacidad',
			'termOfService.text3' => ' y ',
			'termOfService.link3' => 'Política de cookies',
			'termOfService.text4' => '',
			'termOfService.privacyPolicy.title' => 'Política de Privacidad',
			'termOfService.privacyPolicy.lastUpdated' => 'Última actualización: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids adopta la privacidad infantil como principio fundamental.',
			'termOfService.privacyPolicy.section1Title' => '1. INFORMACIÓN RECOPILADA',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Datos del usuario',
			'termOfService.privacyPolicy.section1sub1Body' => 'Nickname or profile name.\nEmail address.\nAge information.\nLanguage level, stories read, and learned words.\n\nNote: This data is never used for health or psychological analysis.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Datos automáticos',
			'termOfService.privacyPolicy.section1sub2Body' => 'Device type, OS, and app performance data are collected. Precise location is NOT collected; only approximate location.',
			'termOfService.privacyPolicy.section2Title' => '2. FINALIDADES',
			'termOfService.privacyPolicy.section2Body' => 'Your data is used solely to:\n\n- Provide safe and age-appropriate content.\n- Personalize the learning experience.\n- Improve app performance.\n- Fulfill legal obligations.',
			'termOfService.privacyPolicy.section3Title' => '3. RETENCIÓN Y ELIMINACIÓN',
			'termOfService.privacyPolicy.section3Body' => 'Data is stored as long as your account is active. Support records kept max 12 months. Deleted accounts erase personal data irreversibly.',
			'termOfService.privacyPolicy.section4Title' => '4. DERECHOS DEL USUARIO',
			'termOfService.privacyPolicy.section4Body' => 'Bajo el RGPD, los padres pueden solicitar acceso, corrección o eliminación. Envíe solicitudes a support@fly-work.com.',
			'termOfService.privacyPolicy.section5Title' => '5. PRIVACIDAD INFANTIL',
			'termOfService.privacyPolicy.section5Body' => 'Diseñada para mayores de 6 años. Consentimiento parental requerido para menores de 13.',
			'termOfService.privacyPolicy.section6Title' => '6. CONTACTO',
			'termOfService.privacyPolicy.section6Body' => 'Consultas: support@fly-work.com',
			'termOfService.termsOfService.title' => 'Términos de Servicio',
			'termOfService.termsOfService.lastUpdated' => 'Última actualización: 2025',
			'termOfService.termsOfService.intro' => 'Estos términos rigen el uso de Lingola Stories Kids. Al usar la app, acepta estos términos.',
			'termOfService.termsOfService.disclaimer' => 'Aviso: Lingola Stories Kids es una herramienta educativa.',
			'termOfService.termsOfService.section1Title' => '1. ALCANCE DEL SERVICIO',
			'termOfService.termsOfService.section1Body' => 'The app provides story-based learning for children:\n\n- AI-powered stories and recommendations.\n- Age and level-based reading experience.\n- Vocabulary and pronunciation support.',
			'termOfService.termsOfService.section2Title' => '2. CONDICIONES DE USO Y EDAD',
			'termOfService.termsOfService.section2Body' => 'Users must be at least 6 years old.\nUsers under 18 are encouraged to use under parental supervision.\nAccount information must be accurate and up-to-date.',
			'termOfService.termsOfService.section3Title' => '3. USOS PROHIBIDOS',
			'termOfService.termsOfService.section3Body' => 'Unauthorized copying, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.',
			'termOfService.termsOfService.section4Title' => '4. SUSCRIPCIONES Y PAGOS',
			'termOfService.termsOfService.section4Body' => 'Premium features are subject to App Store and Google Play policies. Cancellations and refunds are managed via the respective store settings.',
			'termOfService.termsOfService.section5Title' => '5. PROPIEDAD INTELECTUAL',
			'termOfService.termsOfService.section5Body' => 'All content belongs to Lingola Stories Kids and may not be reproduced without permission.',
			'termOfService.termsOfService.section6Title' => '6. LIMITACIÓN DE RESPONSABILIDAD',
			'termOfService.termsOfService.section6Body' => 'La app se proporciona tal cual.',
			'termOfService.termsOfService.section7Title' => '7. LEY APLICABLE',
			'termOfService.termsOfService.section7Body' => 'Regida por las leyes de la República de Turquía.',
			'termOfService.termsOfService.section8Title' => '8. CONTACTO',
			'termOfService.termsOfService.section8Body' => 'Consultas: support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Política de Cookies',
			'termOfService.cookiePolicy.lastUpdated' => 'Última actualización: 2025',
			'termOfService.cookiePolicy.intro' => 'Esta política explica qué tecnologías digitales se utilizan en la app.',
			'termOfService.cookiePolicy.important' => 'IMPORTANTE: Lingola Stories Kids adopta la privacidad infantil como principio fundamental.',
			'termOfService.cookiePolicy.section1Title' => '1. ¿QUÉ SON LAS COOKIES?',
			'termOfService.cookiePolicy.section1Body' => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. They do not directly identify you.',
			'termOfService.cookiePolicy.section2Title' => '2. ¿QUÉ TECNOLOGÍAS USAMOS?',
			'termOfService.cookiePolicy.section2Body' => 'Strictly Necessary: For session management and security.\n\nPerformance and Analytics: Understand which stories are read, data evaluated anonymously.\n\nPersonalization: Remembers language preference and reading level.',
			'termOfService.cookiePolicy.section3Title' => '3. ¿POR QUÉ LAS USAMOS?',
			'termOfService.cookiePolicy.section3Body' => '- To ensure the app runs safely.\n- To make the reading experience more fluid.\n- To remember settings.\n- To identify features for future development.',
			'termOfService.cookiePolicy.section4Title' => '4. TECNOLOGÍAS DE TERCEROS',
			'termOfService.cookiePolicy.section4Body' => 'We apply minimum data usage when working with third-party partners.',
			'termOfService.cookiePolicy.section5Title' => '5. CONTROL Y GESTIÓN',
			'termOfService.cookiePolicy.section5Body' => 'Parents can limit these technologies via device settings. Disabling necessary technologies may affect functionality.',
			'termOfService.cookiePolicy.section6Title' => '6. CONTACTO',
			'termOfService.cookiePolicy.section6Body' => 'Consultas: support@fly-work.com',
			'cookies' => 'Política de cookies',
			'privacy' => 'Política de privacidad',
			'onboarding.step1.title' => '¿A qué idioma quieres traducir el inglés para aprenderlo?',
			'onboarding.step1.subtitle' => 'Por favor, selecciona el idioma al que quieres traducir el inglés.',
			'onboarding.step2.title' => '¿Qué tipo de historias\nte gustan?',
			'onboarding.step2.subtitle' => 'Por favor, indica tu preferencia.',
			'onboarding.step2.categories.space' => '🚀 Aventuras Espaciales',
			'onboarding.step2.categories.magic' => '🦄 Mundos Mágicos',
			'onboarding.step2.categories.detectives' => '🕵️ Pequeños Detectives',
			'onboarding.step2.categories.animals' => '🐾 Amigos Adorables',
			'onboarding.step2.categories.dinosaurs' => '🦖 La Era de los Dinosaurios',
			'onboarding.step2.categories.superhero' => '🦸 Superhéroes',
			'onboarding.step2.categories.underwater' => '🌊 Reino Submarino',
			'onboarding.step2.categories.fairytale' => '🏰 Cuentos de Príncipes y Princesas',
			'onboarding.loading.titlePart1' => 'Tu cuenta personal está\n',
			'onboarding.loading.titlePart2' => 'siendo creada',
			'onboarding.loading.subtitle' => 'Creamos historias maravillosas para ti',
			'onboarding.loading.optimization' => 'Optimización',
			'pressBackAgainToExit' => 'Presiona atrás nuevamente para salir',
			'faq.title' => 'Preguntas frecuentes',
			'faq.questions.q1.question' => '¿Cuál es el propósito de esta aplicación?',
			'faq.questions.q1.answer' => 'Ayuda a los niños a aprender inglés a través de historias divertidas. Las palabras se ven en contexto, se aprenden de forma intuitiva y se refuerzan a través de la repetición.',
			'faq.questions.q2.question' => '¿Qué hace la IA aquí?',
			'faq.questions.q2.answer' => 'Analiza con qué palabras tiene dificultades el niño, ofrece explicaciones simples y sugiere nuevas historias que son adecuadas para su nivel. El contenido se adapta al ritmo de aprendizaje del niño.',
			'faq.questions.q3.question' => '¿Cuánto tiempo es suficiente al día?',
			'faq.questions.q3.answer' => '5–10 minutos al día son suficientes. Incluso una historia corta es efectiva para el aprendizaje regular.',
			'faq.questions.q4.question' => '¿Para qué grupo de edad son adecuadas las historias?',
			'faq.questions.q4.answer' => 'Las historias se presentan de acuerdo con la edad y el nivel del niño. La aplicación determina el nivel al principio y ajusta la dificultad según el progreso.',
			'faq.questions.q5.question' => '¿Cómo aprende el niño palabras desconocidas?',
			'faq.questions.q5.answer' => 'Cuando toca una palabra desconocida, se muestra su significado, una explicación simple y la pronunciación correcta. Así, la palabra se lee y se escucha.',
			'faq.questions.q6.question' => '¿Es necesaria una conexión a Internet?',
			'faq.questions.q6.answer' => 'Las historias descargadas previamente se pueden leer sin conexión. Se requiere una conexión a Internet para nuevos contenidos y actualizaciones.',
			'faq.questions.q7.question' => '¿La aplicación es gratuita?',
			'faq.questions.q7.answer' => 'Se ofrece acceso gratuito a historias básicas. Más historias, personalización avanzada y funciones adicionales están disponibles en el paquete premium.',
			'faq.questions.q8.question' => '¿Se pueden escuchar las historias?',
			'faq.questions.q8.answer' => 'Sí. Las historias se pueden escuchar con la pronunciación correcta. Así, tanto las habilidades de lectura como las de escucha se desarrollan juntas.',
			'faq.questions.q9.question' => '¿Se pueden rastrear las palabras aprendidas?',
			'faq.questions.q9.answer' => 'Sí. Las palabras aprendidas se registran y se planifican para ser repetidas en intervalos específicos. Así se puede reducir el olvido.',
			'faq.questions.q10.question' => '¿Cuánto tiempo se necesita para ver progreso?',
			'faq.questions.q10.answer' => 'Con un uso regular, el progreso puede ser visible en poco tiempo. A medida que aumenta el hábito de lectura, mejoran el vocabulario y las habilidades de comprensión.',
			'good_morning' => 'Buenos días',
			'good_afternoon' => 'Buenas tardes',
			'good_evening' => 'Buenas noches',
			'splash.screen1.title' => 'Aprende inglés con historias',
			'splash.screen1.description' => 'Nada de memorización aburrida. Descubre las palabras en su flujo natural a través de historias cortas y divertidas.',
			'splash.screen2.title' => 'La inteligencia artificial te guía',
			'splash.screen2.description' => 'Hace seguimiento de las palabras con las que tienes dificultades, explica su significado y sugiere nuevas historias adaptadas a tu nivel.',
			'profile.title' => 'Perfil',
			'profile.freeVersion' => 'Versión gratuita',
			'profile.error' => 'Error',
			'profile.passive' => 'Pasivo',
			'profile.sections.accountSettings' => 'CONFIGURACIÓN DE CUENTA',
			'profile.sections.general' => 'GENERAL',
			'profile.menu.editProfile' => 'Editar perfil',
			'profile.menu.notifications' => 'Notificaciones',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'Idioma de la aplicación',
			'profile.menu.shareWithFriends' => 'Compartir con amigos',
			'profile.menu.enterInviteCode' => 'Ingresar código de invitación',
			'profile.menu.rateUs' => 'Califícanos',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Cerrar sesión',
			'profile.manage' => 'GESTIONAR',
			'profile.logoutDialog.title' => 'Estás a punto de cerrar sesión',
			'profile.logoutDialog.message' => '¡Nos vemos de nuevo! Seguiremos rastreando tus ejercicios de respiración.',
			'profile.logoutDialog.logoutButton' => 'Cerrar sesión',
			'profile.logoutDialog.cancelButton' => 'Cancelar',
			'home.premium' => '¡Premium!',
			'home.seeMore' => 'Ver más',
			'home.pickUpWhereYouLeftOff' => 'Continúa donde lo dejaste',
			'home.premiumSection' => 'Premium',
			'home.history' => 'Historial',
			'home.librarySection' => 'Biblioteca',
			'home.libraryDescription' => 'Las palabras guardadas aparecerán aquí.',
			'home.upgradeToPremium' => 'Actualizar a Premium',
			'home.unlimitedStories' => 'Historias ilimitadas y sin anuncios',
			'home.premiumPlan.title' => 'Plan Premium',
			'home.premiumPlan.description' => 'Desbloquea tu chatbot de IA y\nobtén todas las funciones premium',
			'home.premiumPlan.button' => 'Obtener Premium',
			'home.premiumPlan.dialog.title' => 'Función no disponible',
			'home.premiumPlan.dialog.message' => 'Esta función no está disponible actualmente.',
			'home.premiumPlan.dialog.button' => 'OK',
			'allStories.title' => 'Todas las historias',
			'allStories.noStoriesFound' => 'No se encontraron historias',
			'allStories.selectFilter' => 'Seleccionar filtro',
			'allStories.category' => 'Categoría',
			'allStories.categorySubtitle' => 'Por favor, selecciona la categoría que deseas leer',
			'allStories.apply' => 'Aplicar',
			'stories.title' => 'Historias',
			'stories.popularStories' => 'Historias populares',
			'stories.recommendForYou' => 'Recomendado para ti',
			'stories.allStories' => 'Todas las historias',
			'stories.seeAll' => 'Ver todo',
			'stories.categories.popular' => 'Popular',
			'stories.categories.space' => 'Espacio',
			'stories.categories.magic' => 'Magia',
			'stories.categories.animals' => 'Animales',
			'stories.categories.detectives' => 'Detectives',
			'stories.categories.dinosaurs' => 'Dinosaurios',
			'stories.categories.superhero' => 'Superhéroes',
			'stories.categories.underwater' => 'Submarino',
			'stories.categories.fairytale' => 'Cuentos de hadas',
			'library.title' => 'Biblioteca',
			'library.wordCount' => ({required Object count}) => '${count} Palabras',
			'library.popularWords' => 'Palabras populares',
			'library.allWords' => 'Todas las palabras',
			'library.searchWord' => 'Buscar palabra',
			'library.searchHint' => 'Por favor, ingresa una palabra…',
			'library.noWordsFound' => 'No se encontraron palabras',
			'library.noSavedWords' => 'Aún no hay palabras guardadas',
			'bottomNav.home' => 'Inicio',
			'bottomNav.stories' => 'Historias',
			'bottomNav.library' => 'Biblioteca',
			'bottomNav.profile' => 'Perfil',
			'dayStreak.title' => '¡Racha del día!',
			'dayStreak.days.su' => 'Do',
			'dayStreak.days.mo' => 'Lu',
			'dayStreak.days.tu' => 'Ma',
			'dayStreak.days.we' => 'Mi',
			'dayStreak.days.th' => 'Ju',
			'dayStreak.days.fr' => 'Vi',
			'dayStreak.days.sa' => 'Sá',
			'storyDetails.introduction' => 'Introducción',
			'storyDetails.saved' => 'Guardado',
			'storyDetails.removed' => 'Eliminado',
			'storyDetails.storyAddedToLibrary' => 'La historia ha sido añadida a tu biblioteca.',
			'storyDetails.storyRemovedFromLibrary' => 'La historia ha sido eliminada de la biblioteca.',
			'storyDetails.wordAddedToLibrary' => 'La palabra ha sido añadida a la biblioteca. Deshacer',
			'storyDetails.successfully' => 'Exitosamente',
			'storyDetails.ratingSubmitted' => 'Tu calificación ha sido enviada exitosamente.',
			'storyDetails.warning' => 'Advertencia',
			'storyDetails.fillAllFields' => 'Por favor, rellena todos los campos.',
			'storyDetails.messageSent' => 'Tu mensaje ha sido enviado exitosamente.',
			'storyDetails.translate' => 'Traducir',
			'storyDetails.speak' => 'Hablar',
			'storyDetails.like' => 'Me gusta',
			'storyDetails.save' => 'Guardar',
			'storyDetails.feedback' => 'Comentarios',
			'storyDetails.rating' => 'Calificación',
			'storyDetails.stop' => 'Parar',
			'storyDetails.start' => 'Iniciar',
			'storyDetails.listen' => 'Escuchar',
			'storyDetails.translation' => 'Traducción',
			'storyDetails.translating' => 'Traduciendo...',
			'storyDetails.saveToLibrary' => 'Guardar en biblioteca',
			'storyDetails.rateThisStory' => 'Calificar esta historia',
			'storyDetails.enjoyStory' => '¿Cuánto disfrutaste esta historia?',
			'storyDetails.send' => 'Enviar',
			'storyDetails.subject' => 'Asunto',
			'storyDetails.feedbackSubjects.bugReport' => 'Reporte de error',
			'storyDetails.feedbackSubjects.storyContent' => 'Contenido de la historia',
			'storyDetails.feedbackSubjects.audioIssue' => 'Problema de audio',
			'storyDetails.feedbackSubjects.suggestion' => 'Sugerencia',
			'storyDetails.feedbackSubjects.other' => 'Otro',
			'share.title' => 'Compartir con amigos',
			'share.mainTitle' => 'Comparte la paz',
			'share.descriptionPart1' => 'Invita a tus amigos a respirar juntos.\nPor cada invitación, ambos obtienen ',
			'share.descriptionPart2' => '1 semana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'TU CÓDIGO DE REFERENCIA',
			'share.codeCopied' => '¡Código copiado!',
			'share.copyCode' => 'Copiar código',
			'share.inviteDescription' => 'Invita a tus amigos y aprende\njuntos',
			'share.linkCopied' => 'Copiado',
			'share.linkCopiedMessage' => 'El enlace ha sido copiado al portapapeles.',
			'delete' => 'Eliminar',
			'editProfile.title' => 'Editar perfil',
			'editProfile.changePhoto' => 'Cambiar Avatar',
			'editProfile.learnLanguage' => 'Seleccionar idioma de aprendizaje',
			'editProfile.fullName' => 'Nombre completo',
			'editProfile.email' => 'Correo electrónico',
			'editProfile.age' => 'Edad',
			'editProfile.save' => 'Guardar',
			'editProfile.saving' => 'Guardando...',
			'editProfile.updateSuccess' => 'Perfil actualizado exitosamente',
			'editProfile.updateError' => 'Ocurrió un error al actualizar el perfil',
			'editProfile.deleteAccount' => 'Eliminar cuenta',
			'notifications.title' => 'Notificaciones',
			'notifications.emptyTitle' => 'Aún no hay notificaciones',
			'notifications.emptyDescription' => 'Te notificaremos cuando haya una actualización importante sobre tu viaje de aprendizaje.',
			'notifications.premiumBannerTitle' => '¡No te pierdas los\nbeneficios Premium!',
			'notifications.premiumBannerDescription' => 'Aprovecha las oportunidades como suscriptor Premium.',
			'auth.google' => 'Continuar con Google',
			'auth.facebook' => 'Continuar con Facebook',
			'auth.apple' => 'Continuar con Apple',
			'auth.guest' => 'Continuar como invitado',
			'auth.signInFailed' => ({required Object error}) => 'Error al iniciar sesión: ${error}',
			'cancel' => 'Cancelar',
			'deleteAccount' => 'Eliminar cuenta',
			'deleteDialogTitle' => '¿Estás seguro de que quieres eliminar tu cuenta?',
			'deleteDialogDescription' => 'Esta acción es irreversible y eliminará permanentemente todo tu historial de ejercicios y datos.',
			'deleteError' => 'Ocurrió un error al eliminar tu cuenta. Por favor intenta de nuevo.',
			'enterInvitationCode' => 'Ingresar código de invitación',
			'inviteFriends' => 'Ingresa el código de invitación que recibiste de un amigo.\nEscríbelo en el campo designado',
			'twoDaysPremium' => '7 días Premium',
			'advantage' => '\npara disfrutar de sus beneficios.',
			'send' => 'Enviar',
			'referralCode.inputPlaceholder' => 'Ingresa el código de 8 caracteres',
			'referralCode.applying' => 'Aplicando código...',
			'referralCode.success.title' => '¡Éxito!',
			'referralCode.success.message' => '¡Código de referencia aplicado con éxito! Tú y tu amigo recibieron 1 semana de premium.',
			'referralCode.errors.missingCode.title' => 'Código requerido',
			'referralCode.errors.missingCode.message' => 'Por favor, ingresa un código de referencia para continuar.',
			'referralCode.errors.invalidFormat.title' => 'Formato inválido',
			'referralCode.errors.invalidFormat.message' => 'El código de referencia debe tener exactamente 8 caracteres.',
			'referralCode.errors.alreadyUsed.title' => 'Ya utilizado',
			'referralCode.errors.alreadyUsed.message' => 'Ya has utilizado un código de referencia. Cada usuario solo puede usar un código.',
			'referralCode.errors.selfReferral.title' => 'Código inválido',
			'referralCode.errors.selfReferral.message' => 'No puedes usar tu propio código de invitación. Por favor usa un código de un amigo.',
			'referralCode.errors.codeNotFound.title' => 'Código no encontrado',
			'referralCode.errors.codeNotFound.message' => 'El código de referencia que ingresaste no existe. Por favor verifica e intenta nuevamente.',
			'referralCode.errors.genericError.title' => 'Error',
			'referralCode.errors.genericError.message' => 'Ocurrió un error al aplicar el código de referencia. Por favor intenta nuevamente.',
			'deleteNotifications' => 'Eliminar notificaciones',
			'deleteNotificationsDescription' => '¿Estás seguro de que quieres eliminar todas\ntus notificaciones? Esta acción es irreversible y no se puede deshacer.',
			'deleteAll' => 'Eliminar todo',
			'appLanguage' => 'Idioma de la aplicación',
			'selectLanguage' => 'Selecciona tu idioma preferido',
			'save' => 'Guardar',
			'languageOptions.english' => 'Inglés',
			'languageOptions.german' => 'Alemán',
			'languageOptions.italian' => 'Italiano',
			'languageOptions.french' => 'Francés',
			'languageOptions.japanese' => 'Japonés',
			'languageOptions.spanish' => 'Español',
			'languageOptions.russian' => 'Ruso',
			'languageOptions.turkish' => 'Turco',
			'languageOptions.korean' => 'Coreano',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portugués',
			_ => null,
		};
	}
}
