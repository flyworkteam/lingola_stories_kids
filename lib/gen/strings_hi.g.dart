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
class TranslationsHi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	@override 
	TranslationsHi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHi(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'स्वागत है ${name}';
	@override String welcome2({required Object appName}) => 'स्वागत है ${appName}';
	@override String get get_started => 'शुरू करें';
	@override String get next => 'अगला';
	@override String get back => 'पीछे';
	@override String get skip => 'छोड़ें';
	@override String get kContinue => 'जारी रखें';
	@override String get logintext => 'जहां हर शब्द एक नई साहसिकता है जो बताने की प्रतीक्षा कर रहा है।';
	@override late final _TranslationsTermOfServiceHi termOfService = _TranslationsTermOfServiceHi._(_root);
	@override String get cookies => 'कुकी नीति';
	@override String get privacy => 'गोपनीयता नीति';
	@override String get pressBackAgainToExit => 'बाहर निकलने के लिए फिर से वापस दबाएं';
	@override late final _TranslationsFaqHi faq = _TranslationsFaqHi._(_root);
	@override String get good_morning => 'सुप्रभात';
	@override String get good_afternoon => 'शुभ दोपहर';
	@override String get good_evening => 'शुभ संध्या';
	@override late final _TranslationsSplashHi splash = _TranslationsSplashHi._(_root);
	@override late final _TranslationsProfileHi profile = _TranslationsProfileHi._(_root);
	@override late final _TranslationsHomeHi home = _TranslationsHomeHi._(_root);
	@override late final _TranslationsEditProfileHi editProfile = _TranslationsEditProfileHi._(_root);
	@override late final _TranslationsNotificationsHi notifications = _TranslationsNotificationsHi._(_root);
	@override late final _TranslationsShareHi share = _TranslationsShareHi._(_root);
	@override late final _TranslationsAuthHi auth = _TranslationsAuthHi._(_root);
	@override String get cancel => 'रद्द करें';
	@override String get deleteAccount => 'खाता हटाएं';
	@override String get deleteDialogTitle => 'क्या आप वाकई अपना खाता हटाना चाहते हैं?';
	@override String get deleteDialogDescription => 'यह क्रिया अपरिवर्तनीय है और आपके सभी व्यायाम इतिहास और डेटा को स्थायी रूप से हटा देगी।';
	@override String get deleteError => 'अपना खाता हटाते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।';
	@override String get enterInvitationCode => 'निमंत्रण कोड दर्ज करें';
	@override String get inviteFriends => 'किसी मित्र से प्राप्त आमंत्रण कोड दर्ज करें।\nइसे निर्दिष्ट फ़ील्ड में टाइप करें';
	@override String get twoDaysPremium => '7 दिन प्रीमियम';
	@override String get advantage => '\nइसके लाभों का आनंद लेने के लिए।';
	@override String get send => 'भेजें';
	@override late final _TranslationsReferralCodeHi referralCode = _TranslationsReferralCodeHi._(_root);
	@override String get deleteNotifications => 'सूचनाएं हटाएं';
	@override String get deleteNotificationsDescription => 'क्या आप वाकई अपनी सभी\nसूचनाएं हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।';
	@override String get deleteAll => 'सभी हटाएं';
	@override String get appLanguage => 'ऐप भाषा';
	@override String get selectLanguage => 'अपनी पसंदीदा भाषा चुनें';
	@override String get save => 'सहेजें';
	@override late final _TranslationsLanguageOptionsHi languageOptions = _TranslationsLanguageOptionsHi._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceHi implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'swipe पर साइन अप करके, आप हमारी ';
	@override String get link1 => 'सेवा की शर्तों';
	@override String get text2 => ' से सहमत हैं। जानें कि हम आपका डेटा कैसे प्रोसेस करते हैं हमारी ';
	@override String get link2 => 'गोपनीयता नीति';
	@override String get text3 => ' और ';
	@override String get link3 => 'कुकी नीति';
	@override String get text4 => '';
}

// Path: faq
class _TranslationsFaqHi implements TranslationsFaqEn {
	_TranslationsFaqHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामान्य प्रश्न';
	@override late final _TranslationsFaqQuestionsHi questions = _TranslationsFaqQuestionsHi._(_root);
}

// Path: splash
class _TranslationsSplashHi implements TranslationsSplashEn {
	_TranslationsSplashHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Hi screen1 = _TranslationsSplashScreen1Hi._(_root);
	@override late final _TranslationsSplashScreen2Hi screen2 = _TranslationsSplashScreen2Hi._(_root);
}

// Path: profile
class _TranslationsProfileHi implements TranslationsProfileEn {
	_TranslationsProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल';
	@override String get freeVersion => 'मुफ्त संस्करण';
	@override String get error => 'त्रुटि';
	@override late final _TranslationsProfileSectionsHi sections = _TranslationsProfileSectionsHi._(_root);
	@override late final _TranslationsProfileMenuHi menu = _TranslationsProfileMenuHi._(_root);
	@override String get manage => 'प्रबंधित करें';
	@override late final _TranslationsProfileLogoutDialogHi logoutDialog = _TranslationsProfileLogoutDialogHi._(_root);
}

// Path: home
class _TranslationsHomeHi implements TranslationsHomeEn {
	_TranslationsHomeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get premium => 'प्रीमियम!';
	@override String get seeMore => 'और देखें';
	@override late final _TranslationsHomePremiumPlanHi premiumPlan = _TranslationsHomePremiumPlanHi._(_root);
}

// Path: editProfile
class _TranslationsEditProfileHi implements TranslationsEditProfileEn {
	_TranslationsEditProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override String get changePhoto => 'फ़ोटो बदलें';
	@override String get fullName => 'पूरा नाम';
	@override String get email => 'ईमेल';
	@override String get age => 'आयु';
	@override String get save => 'सहेजें';
	@override String get saving => 'सहेज रहा है...';
	@override String get updateSuccess => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई';
	@override String get updateError => 'प्रोफ़ाइल अपडेट करते समय एक त्रुटि हुई';
	@override String get deleteAccount => 'खाता हटाएं';
}

// Path: notifications
class _TranslationsNotificationsHi implements TranslationsNotificationsEn {
	_TranslationsNotificationsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सूचनाएं';
	@override String get emptyTitle => 'अभी तक कोई सूचना नहीं';
	@override String get emptyDescription => 'जब आपकी सीखने की यात्रा के बारे में कोई महत्वपूर्ण अपडेट होगा तो हम आपको सूचित करेंगे।';
	@override String get premiumBannerTitle => 'प्रीमियम लाभों को\nन चूकें!';
	@override String get premiumBannerDescription => 'प्रीमियम ग्राहक के रूप में अवसरों का लाभ उठाएं।';
}

// Path: share
class _TranslationsShareHi implements TranslationsShareEn {
	_TranslationsShareHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दोस्तों के साथ साझा करें';
	@override String get mainTitle => 'शांति साझा करें';
	@override String get descriptionPart1 => 'दोस्तों को एक साथ सांस लेने के लिए आमंत्रित करें।\nप्रत्येक आमंत्रण के लिए, आप दोनों को मिलता है ';
	@override String get descriptionPart2 => '1 सप्ताह प्रीमियम';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'आपका रेफरल कोड';
	@override String get codeCopied => 'कोड कॉपी किया गया!';
	@override String get copyCode => 'कोड कॉपी करें';
}

// Path: auth
class _TranslationsAuthHi implements TranslationsAuthEn {
	_TranslationsAuthHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get google => 'Continue with Google';
	@override String get facebook => 'Continue with Facebook';
	@override String get apple => 'Continue with Apple';
	@override String get guest => 'अतिथि के रूप में जारी रखें';
	@override String signInFailed({required Object error}) => 'साइन इन विफल: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeHi implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8-अंकीय कोड दर्ज करें';
	@override String get applying => 'कोड लागू हो रहा है...';
	@override late final _TranslationsReferralCodeSuccessHi success = _TranslationsReferralCodeSuccessHi._(_root);
	@override late final _TranslationsReferralCodeErrorsHi errors = _TranslationsReferralCodeErrorsHi._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsHi implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get english => 'अंग्रेज़ी';
	@override String get german => 'जर्मन';
	@override String get italian => 'इतालवी';
	@override String get french => 'फ्रेंच';
	@override String get japanese => 'जापानी';
	@override String get spanish => 'स्पेनिश';
	@override String get russian => 'रूसी';
	@override String get turkish => 'तुर्की';
	@override String get korean => 'कोरियाई';
	@override String get hindi => 'हिंदी';
	@override String get portuguese => 'पुर्तगाली';
}

// Path: faq.questions
class _TranslationsFaqQuestionsHi implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Hi q1 = _TranslationsFaqQuestionsQ1Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ2Hi q2 = _TranslationsFaqQuestionsQ2Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ3Hi q3 = _TranslationsFaqQuestionsQ3Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ4Hi q4 = _TranslationsFaqQuestionsQ4Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ5Hi q5 = _TranslationsFaqQuestionsQ5Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ6Hi q6 = _TranslationsFaqQuestionsQ6Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ7Hi q7 = _TranslationsFaqQuestionsQ7Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ8Hi q8 = _TranslationsFaqQuestionsQ8Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ9Hi q9 = _TranslationsFaqQuestionsQ9Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ10Hi q10 = _TranslationsFaqQuestionsQ10Hi._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Hi implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कहानियों के साथ अंग्रेजी सीखें';
	@override String get description => 'कोई उबाऊ याददाश्त नहीं। छोटी और मजेदार कहानियों के माध्यम से शब्दों को उनके प्राकृतिक प्रवाह में खोजें।';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Hi implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आर्टिफिशियल इंटेलिजेंस आपको मार्गदर्शन करता है';
	@override String get description => 'यह उन शब्दों का ट्रैक रखता है जिनसे आप संघर्ष करते हैं, उनके अर्थ को समझाता है, और आपके स्तर के अनुसार नई कहानियों का सुझाव देता है।';
}

// Path: profile.sections
class _TranslationsProfileSectionsHi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'खाता सेटिंग्स';
	@override String get supportAndOther => 'समर्थन और अन्य';
}

// Path: profile.menu
class _TranslationsProfileMenuHi implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'प्रोफ़ाइल संपादित करें';
	@override String get notifications => 'सूचनाएं';
	@override String get premium => 'प्रीमियम';
	@override String get appLanguage => 'ऐप भाषा';
	@override String get shareWithFriends => 'दोस्तों के साथ साझा करें';
	@override String get enterInviteCode => 'निमंत्रण कोड दर्ज करें';
	@override String get rateUs => 'हमें रेट करें';
	@override String get faq => 'FAQ';
	@override String get logout => 'लॉग आउट';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogHi implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप लॉग आउट करने वाले हैं';
	@override String get message => 'फिर मिलेंगे! हम आपके श्वास व्यायाम को ट्रैक करना जारी रखेंगे।';
	@override String get logoutButton => 'लॉग आउट';
	@override String get cancelButton => 'रद्द करें';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanHi implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रीमियम प्लान';
	@override String get description => 'अपने AI चैटबॉट को अनलॉक करें और\nसभी प्रीमियम सुविधाएं प्राप्त करें';
	@override String get button => 'प्रीमियम प्राप्त करें';
	@override late final _TranslationsHomePremiumPlanDialogHi dialog = _TranslationsHomePremiumPlanDialogHi._(_root);
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessHi implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सफल!';
	@override String get message => 'रेफरल कोड सफलतापूर्वक लागू किया गया! आपको और आपके मित्र को 1 सप्ताह का प्रीमियम मिला है।';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsHi implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeHi missingCode = _TranslationsReferralCodeErrorsMissingCodeHi._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatHi invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatHi._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedHi alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedHi._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralHi selfReferral = _TranslationsReferralCodeErrorsSelfReferralHi._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundHi codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundHi._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorHi genericError = _TranslationsReferralCodeErrorsGenericErrorHi._(_root);
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Hi implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'यह ऐप क्या करती है?';
	@override String get answer => 'यह बच्चों को मज़ेदार कहानियों के माध्यम से अंग्रेज़ी सीखने में मदद करता है। शब्द वाक्यों में प्राकृतिक रूप से दिखाई देते हैं, अर्थ सहज रूप से समझाया जाता है और पुनरावृत्ति से वे स्थायी हो जाते हैं।';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Hi implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'यहाँ आर्टिफिशियल इंटेलिजेंस क्या करता है?';
	@override String get answer => 'यह विश्लेषण करता है कि बच्चा किन शब्दों में कठिनाई महसूस कर रहा है, सरल व्याख्याएँ प्रदान करता है और उसके स्तर के अनुसार नई कहानियाँ सुझाता है। सामग्री बच्चे की सीखने की गति के अनुसार अनुकूलित होती है।';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Hi implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'रोज़ कितना उपयोग करना पर्याप्त है?';
	@override String get answer => 'रोज़ाना 5–10 मिनट पर्याप्त हैं। एक छोटी सी कहानी भी नियमित अभ्यास के लिए प्रभावी होती है।';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Hi implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'कहानियाँ किस आयु समूह के लिए उपयुक्त हैं?';
	@override String get answer => 'कहानियाँ बच्चों की आयु और स्तर के अनुसार प्रस्तुत की जाती हैं। ऐप शुरुआत में स्तर तय करता है और प्रगति के अनुसार कठिनाई समायोजित करता है।';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Hi implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'अनजाने शब्द कैसे सीखे जाते हैं?';
	@override String get answer => 'जब बच्चा किसी अनजाने शब्द पर टैप करता है तो उसका अर्थ, सरल विवरण और सही उच्चारण दिखाया जाता है। इस तरह शब्द पढ़ा और सुना दोनों जाता है।';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Hi implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या इंटरनेट कनेक्शन आवश्यक है?';
	@override String get answer => 'पहले से डाउनलोड की गई कहानियाँ ऑफ़लाइन पढ़ी जा सकती हैं। नई सामग्री और अपडेट के लिए इंटरनेट कनेक्शन की आवश्यकता होगी।';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Hi implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या ऐप मुफ्त है?';
	@override String get answer => 'बेसिक कहानियों तक मुफ्त पहुँच उपलब्ध है। अधिक कहानियाँ, उन्नत पर्सनलाइज़ेशन और अतिरिक्त सुविधाएँ प्रीमियम पैकेज में मिलती हैं।';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Hi implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या कहानियाँ ऑडियो में सुनी जा सकती हैं?';
	@override String get answer => 'हाँ। कहानियाँ सही उच्चारण के साथ सुनी जा सकती हैं, जिससे पढ़ने और सुनने दोनों कौशल साथ में विकसित होते हैं।';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Hi implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या सीखे गए शब्द ट्रैक किए जा सकते हैं?';
	@override String get answer => 'हाँ। सीखे गए शब्द रिकॉर्ड किए जाते हैं और उन्हें निर्धारित अंतराल पर दोहराने का कार्यक्रम बनाया जाता है, जिससे भूलना कम होता है।';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Hi implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'कितने समय में प्रगति दिखती है?';
	@override String get answer => 'नियमित उपयोग से प्रगति कुछ ही समय में दिख सकती है। पढ़ने की आदत बढ़ने पर शब्दभंडार और समझने की क्षमता में सुधार होता है।';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogHi implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सुविधा उपलब्ध नहीं है';
	@override String get message => 'यह सुविधा वर्तमान में उपलब्ध नहीं है।';
	@override String get button => 'ठीक है';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeHi implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कोड आवश्यक';
	@override String get message => 'जारी रखने के लिए कृपया रेफरल कोड दर्ज करें।';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatHi implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अमान्य प्रारूप';
	@override String get message => 'रेफरल कोड ठीक 8 वर्णों का होना चाहिए।';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedHi implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पहले से उपयोग किया गया';
	@override String get message => 'आपने पहले ही एक रेफरल कोड का उपयोग कर लिया है। प्रत्येक उपयोगकर्ता केवल एक कोड का उपयोग कर सकता है।';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralHi implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अमान्य कोड';
	@override String get message => 'आप अपने स्वयं के आमंत्रण कोड का उपयोग नहीं कर सकते। कृपया किसी मित्र के कोड का उपयोग करें।';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundHi implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कोड नहीं मिला';
	@override String get message => 'दर्ज किया गया रेफरल कोड मौजूद नहीं है। कृपया जांचें और पुनः प्रयास करें।';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorHi implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'त्रुटि';
	@override String get message => 'रेफरल कोड लागू करते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।';
}

/// The flat map containing all translations for locale <hi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'स्वागत है ${name}',
			'welcome2' => ({required Object appName}) => 'स्वागत है ${appName}',
			'get_started' => 'शुरू करें',
			'next' => 'अगला',
			'back' => 'पीछे',
			'skip' => 'छोड़ें',
			'kContinue' => 'जारी रखें',
			'logintext' => 'जहां हर शब्द एक नई साहसिकता है जो बताने की प्रतीक्षा कर रहा है।',
			'termOfService.text1' => 'swipe पर साइन अप करके, आप हमारी ',
			'termOfService.link1' => 'सेवा की शर्तों',
			'termOfService.text2' => ' से सहमत हैं। जानें कि हम आपका डेटा कैसे प्रोसेस करते हैं हमारी ',
			'termOfService.link2' => 'गोपनीयता नीति',
			'termOfService.text3' => ' और ',
			'termOfService.link3' => 'कुकी नीति',
			'termOfService.text4' => '',
			'cookies' => 'कुकी नीति',
			'privacy' => 'गोपनीयता नीति',
			'pressBackAgainToExit' => 'बाहर निकलने के लिए फिर से वापस दबाएं',
			'faq.title' => 'सामान्य प्रश्न',
			'faq.questions.q1.question' => 'यह ऐप क्या करती है?',
			'faq.questions.q1.answer' => 'यह बच्चों को मज़ेदार कहानियों के माध्यम से अंग्रेज़ी सीखने में मदद करता है। शब्द वाक्यों में प्राकृतिक रूप से दिखाई देते हैं, अर्थ सहज रूप से समझाया जाता है और पुनरावृत्ति से वे स्थायी हो जाते हैं।',
			'faq.questions.q2.question' => 'यहाँ आर्टिफिशियल इंटेलिजेंस क्या करता है?',
			'faq.questions.q2.answer' => 'यह विश्लेषण करता है कि बच्चा किन शब्दों में कठिनाई महसूस कर रहा है, सरल व्याख्याएँ प्रदान करता है और उसके स्तर के अनुसार नई कहानियाँ सुझाता है। सामग्री बच्चे की सीखने की गति के अनुसार अनुकूलित होती है।',
			'faq.questions.q3.question' => 'रोज़ कितना उपयोग करना पर्याप्त है?',
			'faq.questions.q3.answer' => 'रोज़ाना 5–10 मिनट पर्याप्त हैं। एक छोटी सी कहानी भी नियमित अभ्यास के लिए प्रभावी होती है।',
			'faq.questions.q4.question' => 'कहानियाँ किस आयु समूह के लिए उपयुक्त हैं?',
			'faq.questions.q4.answer' => 'कहानियाँ बच्चों की आयु और स्तर के अनुसार प्रस्तुत की जाती हैं। ऐप शुरुआत में स्तर तय करता है और प्रगति के अनुसार कठिनाई समायोजित करता है।',
			'faq.questions.q5.question' => 'अनजाने शब्द कैसे सीखे जाते हैं?',
			'faq.questions.q5.answer' => 'जब बच्चा किसी अनजाने शब्द पर टैप करता है तो उसका अर्थ, सरल विवरण और सही उच्चारण दिखाया जाता है। इस तरह शब्द पढ़ा और सुना दोनों जाता है।',
			'faq.questions.q6.question' => 'क्या इंटरनेट कनेक्शन आवश्यक है?',
			'faq.questions.q6.answer' => 'पहले से डाउनलोड की गई कहानियाँ ऑफ़लाइन पढ़ी जा सकती हैं। नई सामग्री और अपडेट के लिए इंटरनेट कनेक्शन की आवश्यकता होगी।',
			'faq.questions.q7.question' => 'क्या ऐप मुफ्त है?',
			'faq.questions.q7.answer' => 'बेसिक कहानियों तक मुफ्त पहुँच उपलब्ध है। अधिक कहानियाँ, उन्नत पर्सनलाइज़ेशन और अतिरिक्त सुविधाएँ प्रीमियम पैकेज में मिलती हैं।',
			'faq.questions.q8.question' => 'क्या कहानियाँ ऑडियो में सुनी जा सकती हैं?',
			'faq.questions.q8.answer' => 'हाँ। कहानियाँ सही उच्चारण के साथ सुनी जा सकती हैं, जिससे पढ़ने और सुनने दोनों कौशल साथ में विकसित होते हैं।',
			'faq.questions.q9.question' => 'क्या सीखे गए शब्द ट्रैक किए जा सकते हैं?',
			'faq.questions.q9.answer' => 'हाँ। सीखे गए शब्द रिकॉर्ड किए जाते हैं और उन्हें निर्धारित अंतराल पर दोहराने का कार्यक्रम बनाया जाता है, जिससे भूलना कम होता है।',
			'faq.questions.q10.question' => 'कितने समय में प्रगति दिखती है?',
			'faq.questions.q10.answer' => 'नियमित उपयोग से प्रगति कुछ ही समय में दिख सकती है। पढ़ने की आदत बढ़ने पर शब्दभंडार और समझने की क्षमता में सुधार होता है।',
			'good_morning' => 'सुप्रभात',
			'good_afternoon' => 'शुभ दोपहर',
			'good_evening' => 'शुभ संध्या',
			'splash.screen1.title' => 'कहानियों के साथ अंग्रेजी सीखें',
			'splash.screen1.description' => 'कोई उबाऊ याददाश्त नहीं। छोटी और मजेदार कहानियों के माध्यम से शब्दों को उनके प्राकृतिक प्रवाह में खोजें।',
			'splash.screen2.title' => 'आर्टिफिशियल इंटेलिजेंस आपको मार्गदर्शन करता है',
			'splash.screen2.description' => 'यह उन शब्दों का ट्रैक रखता है जिनसे आप संघर्ष करते हैं, उनके अर्थ को समझाता है, और आपके स्तर के अनुसार नई कहानियों का सुझाव देता है।',
			'profile.title' => 'प्रोफ़ाइल',
			'profile.freeVersion' => 'मुफ्त संस्करण',
			'profile.error' => 'त्रुटि',
			'profile.sections.accountSettings' => 'खाता सेटिंग्स',
			'profile.sections.supportAndOther' => 'समर्थन और अन्य',
			'profile.menu.editProfile' => 'प्रोफ़ाइल संपादित करें',
			'profile.menu.notifications' => 'सूचनाएं',
			'profile.menu.premium' => 'प्रीमियम',
			'profile.menu.appLanguage' => 'ऐप भाषा',
			'profile.menu.shareWithFriends' => 'दोस्तों के साथ साझा करें',
			'profile.menu.enterInviteCode' => 'निमंत्रण कोड दर्ज करें',
			'profile.menu.rateUs' => 'हमें रेट करें',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'लॉग आउट',
			'profile.manage' => 'प्रबंधित करें',
			'profile.logoutDialog.title' => 'आप लॉग आउट करने वाले हैं',
			'profile.logoutDialog.message' => 'फिर मिलेंगे! हम आपके श्वास व्यायाम को ट्रैक करना जारी रखेंगे।',
			'profile.logoutDialog.logoutButton' => 'लॉग आउट',
			'profile.logoutDialog.cancelButton' => 'रद्द करें',
			'home.premium' => 'प्रीमियम!',
			'home.seeMore' => 'और देखें',
			'home.premiumPlan.title' => 'प्रीमियम प्लान',
			'home.premiumPlan.description' => 'अपने AI चैटबॉट को अनलॉक करें और\nसभी प्रीमियम सुविधाएं प्राप्त करें',
			'home.premiumPlan.button' => 'प्रीमियम प्राप्त करें',
			'home.premiumPlan.dialog.title' => 'सुविधा उपलब्ध नहीं है',
			'home.premiumPlan.dialog.message' => 'यह सुविधा वर्तमान में उपलब्ध नहीं है।',
			'home.premiumPlan.dialog.button' => 'ठीक है',
			'editProfile.title' => 'प्रोफ़ाइल संपादित करें',
			'editProfile.changePhoto' => 'फ़ोटो बदलें',
			'editProfile.fullName' => 'पूरा नाम',
			'editProfile.email' => 'ईमेल',
			'editProfile.age' => 'आयु',
			'editProfile.save' => 'सहेजें',
			'editProfile.saving' => 'सहेज रहा है...',
			'editProfile.updateSuccess' => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई',
			'editProfile.updateError' => 'प्रोफ़ाइल अपडेट करते समय एक त्रुटि हुई',
			'editProfile.deleteAccount' => 'खाता हटाएं',
			'notifications.title' => 'सूचनाएं',
			'notifications.emptyTitle' => 'अभी तक कोई सूचना नहीं',
			'notifications.emptyDescription' => 'जब आपकी सीखने की यात्रा के बारे में कोई महत्वपूर्ण अपडेट होगा तो हम आपको सूचित करेंगे।',
			'notifications.premiumBannerTitle' => 'प्रीमियम लाभों को\nन चूकें!',
			'notifications.premiumBannerDescription' => 'प्रीमियम ग्राहक के रूप में अवसरों का लाभ उठाएं।',
			'share.title' => 'दोस्तों के साथ साझा करें',
			'share.mainTitle' => 'शांति साझा करें',
			'share.descriptionPart1' => 'दोस्तों को एक साथ सांस लेने के लिए आमंत्रित करें।\nप्रत्येक आमंत्रण के लिए, आप दोनों को मिलता है ',
			'share.descriptionPart2' => '1 सप्ताह प्रीमियम',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'आपका रेफरल कोड',
			'share.codeCopied' => 'कोड कॉपी किया गया!',
			'share.copyCode' => 'कोड कॉपी करें',
			'auth.google' => 'Continue with Google',
			'auth.facebook' => 'Continue with Facebook',
			'auth.apple' => 'Continue with Apple',
			'auth.guest' => 'अतिथि के रूप में जारी रखें',
			'auth.signInFailed' => ({required Object error}) => 'साइन इन विफल: ${error}',
			'cancel' => 'रद्द करें',
			'deleteAccount' => 'खाता हटाएं',
			'deleteDialogTitle' => 'क्या आप वाकई अपना खाता हटाना चाहते हैं?',
			'deleteDialogDescription' => 'यह क्रिया अपरिवर्तनीय है और आपके सभी व्यायाम इतिहास और डेटा को स्थायी रूप से हटा देगी।',
			'deleteError' => 'अपना खाता हटाते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।',
			'enterInvitationCode' => 'निमंत्रण कोड दर्ज करें',
			'inviteFriends' => 'किसी मित्र से प्राप्त आमंत्रण कोड दर्ज करें।\nइसे निर्दिष्ट फ़ील्ड में टाइप करें',
			'twoDaysPremium' => '7 दिन प्रीमियम',
			'advantage' => '\nइसके लाभों का आनंद लेने के लिए।',
			'send' => 'भेजें',
			'referralCode.inputPlaceholder' => '8-अंकीय कोड दर्ज करें',
			'referralCode.applying' => 'कोड लागू हो रहा है...',
			'referralCode.success.title' => 'सफल!',
			'referralCode.success.message' => 'रेफरल कोड सफलतापूर्वक लागू किया गया! आपको और आपके मित्र को 1 सप्ताह का प्रीमियम मिला है।',
			'referralCode.errors.missingCode.title' => 'कोड आवश्यक',
			'referralCode.errors.missingCode.message' => 'जारी रखने के लिए कृपया रेफरल कोड दर्ज करें।',
			'referralCode.errors.invalidFormat.title' => 'अमान्य प्रारूप',
			'referralCode.errors.invalidFormat.message' => 'रेफरल कोड ठीक 8 वर्णों का होना चाहिए।',
			'referralCode.errors.alreadyUsed.title' => 'पहले से उपयोग किया गया',
			'referralCode.errors.alreadyUsed.message' => 'आपने पहले ही एक रेफरल कोड का उपयोग कर लिया है। प्रत्येक उपयोगकर्ता केवल एक कोड का उपयोग कर सकता है।',
			'referralCode.errors.selfReferral.title' => 'अमान्य कोड',
			'referralCode.errors.selfReferral.message' => 'आप अपने स्वयं के आमंत्रण कोड का उपयोग नहीं कर सकते। कृपया किसी मित्र के कोड का उपयोग करें।',
			'referralCode.errors.codeNotFound.title' => 'कोड नहीं मिला',
			'referralCode.errors.codeNotFound.message' => 'दर्ज किया गया रेफरल कोड मौजूद नहीं है। कृपया जांचें और पुनः प्रयास करें।',
			'referralCode.errors.genericError.title' => 'त्रुटि',
			'referralCode.errors.genericError.message' => 'रेफरल कोड लागू करते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।',
			'deleteNotifications' => 'सूचनाएं हटाएं',
			'deleteNotificationsDescription' => 'क्या आप वाकई अपनी सभी\nसूचनाएं हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।',
			'deleteAll' => 'सभी हटाएं',
			'appLanguage' => 'ऐप भाषा',
			'selectLanguage' => 'अपनी पसंदीदा भाषा चुनें',
			'save' => 'सहेजें',
			'languageOptions.english' => 'अंग्रेज़ी',
			'languageOptions.german' => 'जर्मन',
			'languageOptions.italian' => 'इतालवी',
			'languageOptions.french' => 'फ्रेंच',
			'languageOptions.japanese' => 'जापानी',
			'languageOptions.spanish' => 'स्पेनिश',
			'languageOptions.russian' => 'रूसी',
			'languageOptions.turkish' => 'तुर्की',
			'languageOptions.korean' => 'कोरियाई',
			'languageOptions.hindi' => 'हिंदी',
			'languageOptions.portuguese' => 'पुर्तगाली',
			_ => null,
		};
	}
}
