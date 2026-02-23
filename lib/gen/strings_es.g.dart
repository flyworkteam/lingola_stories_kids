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
	@override String get get_started => 'Comenzar';
	@override String get next => 'Siguiente';
	@override String get back => 'Atrás';
	@override String get skip => 'Saltar';
	@override String get kContinue => 'Continuar';
	@override String get logintext => 'Donde cada palabra es una nueva aventura esperando ser contada.';
	@override late final _TranslationsTermOfServiceEs termOfService = _TranslationsTermOfServiceEs._(_root);
	@override String get cookies => 'Política de cookies';
	@override String get privacy => 'Política de privacidad';
	@override String get pressBackAgainToExit => 'Presiona atrás nuevamente para salir';
	@override late final _TranslationsFaqEs faq = _TranslationsFaqEs._(_root);
	@override String get good_morning => 'Buenos días';
	@override String get good_afternoon => 'Buenas tardes';
	@override String get good_evening => 'Buenas noches';
	@override late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
	@override late final _TranslationsProfileEs profile = _TranslationsProfileEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsEditProfileEs editProfile = _TranslationsEditProfileEs._(_root);
	@override late final _TranslationsNotificationsEs notifications = _TranslationsNotificationsEs._(_root);
	@override late final _TranslationsShareEs share = _TranslationsShareEs._(_root);
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
	@override late final _TranslationsHomePremiumPlanEs premiumPlan = _TranslationsHomePremiumPlanEs._(_root);
}

// Path: editProfile
class _TranslationsEditProfileEs implements TranslationsEditProfileEn {
	_TranslationsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override String get changePhoto => 'Cambiar foto';
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
	@override String get supportAndOther => 'SOPORTE Y OTROS';
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
			'cookies' => 'Política de cookies',
			'privacy' => 'Política de privacidad',
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
			'profile.sections.accountSettings' => 'CONFIGURACIÓN DE CUENTA',
			'profile.sections.supportAndOther' => 'SOPORTE Y OTROS',
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
			'home.premiumPlan.title' => 'Plan Premium',
			'home.premiumPlan.description' => 'Desbloquea tu chatbot de IA y\nobtén todas las funciones premium',
			'home.premiumPlan.button' => 'Obtener Premium',
			'home.premiumPlan.dialog.title' => 'Función no disponible',
			'home.premiumPlan.dialog.message' => 'Esta función no está disponible actualmente.',
			'home.premiumPlan.dialog.button' => 'OK',
			'editProfile.title' => 'Editar perfil',
			'editProfile.changePhoto' => 'Cambiar foto',
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
			'share.title' => 'Compartir con amigos',
			'share.mainTitle' => 'Comparte la paz',
			'share.descriptionPart1' => 'Invita a tus amigos a respirar juntos.\nPor cada invitación, ambos obtienen ',
			'share.descriptionPart2' => '1 semana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'TU CÓDIGO DE REFERENCIA',
			'share.codeCopied' => '¡Código copiado!',
			'share.copyCode' => 'Copiar código',
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
