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
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Hoşgeldiniz ${name}';
	@override String welcome2({required Object appName}) => '${appName}\'e hoşgeldiniz';
	@override String get get_started => 'Başlayın';
	@override String get next => 'Sonraki';
	@override String get back => 'Geri';
	@override String get skip => 'Atla';
	@override String get kContinue => 'Devam';
	@override String get logintext => 'Her kelimenin anlatılmayı bekleyen yeni bir macera olduğu yer.';
	@override late final _TranslationsTermOfServiceTr termOfService = _TranslationsTermOfServiceTr._(_root);
	@override String get cookies => 'Çerez Politikası';
	@override String get privacy => 'Gizlilik Politikası';
	@override String get pressBackAgainToExit => 'Çıkmak için bir kez daha geri tuşuna basın';
	@override late final _TranslationsFaqTr faq = _TranslationsFaqTr._(_root);
	@override String get good_morning => 'Günaydın';
	@override String get good_afternoon => 'İyi günler';
	@override String get good_evening => 'İyi akşamlar';
	@override late final _TranslationsSplashTr splash = _TranslationsSplashTr._(_root);
	@override late final _TranslationsProfileTr profile = _TranslationsProfileTr._(_root);
	@override late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
	@override late final _TranslationsEditProfileTr editProfile = _TranslationsEditProfileTr._(_root);
	@override late final _TranslationsNotificationsTr notifications = _TranslationsNotificationsTr._(_root);
	@override late final _TranslationsShareTr share = _TranslationsShareTr._(_root);
	@override late final _TranslationsAuthTr auth = _TranslationsAuthTr._(_root);
	@override String get cancel => 'İptal';
	@override String get deleteAccount => 'Hesabı Sil';
	@override String get deleteDialogTitle => 'Hesabınızı silmek istediğinize emin misiniz?';
	@override String get deleteDialogDescription => 'Bu işlem geri alınamaz ve tüm egzersiz geçmişinizi ve verilerinizi kalıcı olarak silecektir.';
	@override String get deleteError => 'Hesabınızı silerken bir hata oluştu. Lütfen tekrar deneyin.';
	@override String get enterInvitationCode => 'Davet Kodu Gir';
	@override String get inviteFriends => 'Arkadaşınızdan aldığınız davet kodunu.\nİlgili alana yazarak';
	@override String get twoDaysPremium => '7 Günlük Premium';
	@override String get advantage => '\navantajlarından yararlanabilirsiniz.';
	@override String get send => 'Gönder';
	@override late final _TranslationsReferralCodeTr referralCode = _TranslationsReferralCodeTr._(_root);
	@override String get deleteNotifications => 'Bildirimleri Sil';
	@override String get deleteNotificationsDescription => 'Tüm bildirimlerinizi silmek istediğinize emin misiniz? Bu işlem geri alınamaz ve kalıcı olarak silinecektir.';
	@override String get deleteAll => 'Tümünü Sil';
	@override String get appLanguage => 'Uygulama Dili';
	@override String get selectLanguage => 'Tercih Ettiğiniz Dili Seçin';
	@override String get save => 'Kaydet';
	@override late final _TranslationsLanguageOptionsTr languageOptions = _TranslationsLanguageOptionsTr._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceTr implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Swipe\'a kaydolarak ';
	@override String get link1 => 'Hizmet Şartlarımızı';
	@override String get text2 => ' kabul etmiş olursunuz. ';
	@override String get link2 => 'Gizlilik Politikamızda';
	@override String get text3 => ' ve ';
	@override String get link3 => 'Çerez Politikamızda';
	@override String get text4 => ' verilerinizi nasıl işlediğimizi öğrenin';
}

// Path: faq
class _TranslationsFaqTr implements TranslationsFaqEn {
	_TranslationsFaqTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sıkça Sorulan Sorular';
	@override late final _TranslationsFaqQuestionsTr questions = _TranslationsFaqQuestionsTr._(_root);
}

// Path: splash
class _TranslationsSplashTr implements TranslationsSplashEn {
	_TranslationsSplashTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Tr screen1 = _TranslationsSplashScreen1Tr._(_root);
	@override late final _TranslationsSplashScreen2Tr screen2 = _TranslationsSplashScreen2Tr._(_root);
}

// Path: profile
class _TranslationsProfileTr implements TranslationsProfileEn {
	_TranslationsProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get freeVersion => 'Ücretsiz Versiyon';
	@override String get error => 'Hata';
	@override late final _TranslationsProfileSectionsTr sections = _TranslationsProfileSectionsTr._(_root);
	@override late final _TranslationsProfileMenuTr menu = _TranslationsProfileMenuTr._(_root);
	@override String get manage => 'YÖNET';
	@override late final _TranslationsProfileLogoutDialogTr logoutDialog = _TranslationsProfileLogoutDialogTr._(_root);
}

// Path: home
class _TranslationsHomeTr implements TranslationsHomeEn {
	_TranslationsHomeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get seeMore => 'Daha Fazla';
	@override late final _TranslationsHomePremiumPlanTr premiumPlan = _TranslationsHomePremiumPlanTr._(_root);
}

// Path: editProfile
class _TranslationsEditProfileTr implements TranslationsEditProfileEn {
	_TranslationsEditProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Düzenle';
	@override String get changePhoto => 'Fotoğrafı Değiştir';
	@override String get fullName => 'Ad Soyad';
	@override String get email => 'E-posta';
	@override String get age => 'Yaş';
	@override String get save => 'Kaydet';
	@override String get saving => 'Kaydediliyor...';
	@override String get updateSuccess => 'Profil başarıyla güncellendi';
	@override String get updateError => 'Profil güncellenirken bir hata oluştu';
	@override String get deleteAccount => 'Hesabı Sil';
}

// Path: notifications
class _TranslationsNotificationsTr implements TranslationsNotificationsEn {
	_TranslationsNotificationsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bildirimler';
	@override String get emptyTitle => 'Henüz bildirim yok';
	@override String get emptyDescription => 'Öğrenme yolculuğunla ilgili önemli bir gelişme olduğunda sana haber vereceğiz.';
	@override String get premiumBannerTitle => 'Premium avantajlarını\nkaçırma!';
	@override String get premiumBannerDescription => 'Premium abonesi olarak fırsatları yakala.';
}

// Path: share
class _TranslationsShareTr implements TranslationsShareEn {
	_TranslationsShareTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arkadaşlarınla Paylaş';
	@override String get mainTitle => 'Huzuru Paylaş';
	@override String get descriptionPart1 => 'Arkadaşlarını davet et birlikte nefes alın.\nHer davet için ikiniz de ';
	@override String get descriptionPart2 => '1 hafta Premium\n';
	@override String get descriptionPart3 => ' kazanın';
	@override String get yourReferralCode => 'REFERANS KODUN';
	@override String get codeCopied => 'Kod kopyalandı!';
	@override String get copyCode => 'Kodu Kopyala';
}

// Path: auth
class _TranslationsAuthTr implements TranslationsAuthEn {
	_TranslationsAuthTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Misafir Olarak Devam Et';
	@override String signInFailed({required Object error}) => 'Giriş başarısız: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeTr implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8 karakterli kodu girin';
	@override String get applying => 'Kod uygulanıyor...';
	@override late final _TranslationsReferralCodeSuccessTr success = _TranslationsReferralCodeSuccessTr._(_root);
	@override late final _TranslationsReferralCodeErrorsTr errors = _TranslationsReferralCodeErrorsTr._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsTr implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get english => 'İngilizce';
	@override String get german => 'Almanca';
	@override String get italian => 'İtalyanca';
	@override String get french => 'Fransızca';
	@override String get japanese => 'Japonca';
	@override String get spanish => 'İspanyolca';
	@override String get russian => 'Rusça';
	@override String get turkish => 'Türkçe';
	@override String get korean => 'Korece';
	@override String get hindi => 'Hintçe';
	@override String get portuguese => 'Portekizce';
}

// Path: faq.questions
class _TranslationsFaqQuestionsTr implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Tr q1 = _TranslationsFaqQuestionsQ1Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ2Tr q2 = _TranslationsFaqQuestionsQ2Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ3Tr q3 = _TranslationsFaqQuestionsQ3Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ4Tr q4 = _TranslationsFaqQuestionsQ4Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ5Tr q5 = _TranslationsFaqQuestionsQ5Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ6Tr q6 = _TranslationsFaqQuestionsQ6Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ7Tr q7 = _TranslationsFaqQuestionsQ7Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ8Tr q8 = _TranslationsFaqQuestionsQ8Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ9Tr q9 = _TranslationsFaqQuestionsQ9Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ10Tr q10 = _TranslationsFaqQuestionsQ10Tr._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Tr implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Learn English with Stories';
	@override String get description => 'No boring memorisation. Discover words in their natural flow through short and fun stories.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Tr implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Artificial Intelligence Guides You';
	@override String get description => 'It tracks the words you struggle with, explains their meaning, and suggests new stories tailored to your level.';
}

// Path: profile.sections
class _TranslationsProfileSectionsTr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'HESAP AYARLARI';
	@override String get supportAndOther => 'DESTEK & DİĞER';
}

// Path: profile.menu
class _TranslationsProfileMenuTr implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Profil Düzenle';
	@override String get notifications => 'Bildirimler';
	@override String get premium => 'Premium';
	@override String get appLanguage => 'Uygulama Dili';
	@override String get shareWithFriends => 'Arkadaşlarınla Paylaş';
	@override String get enterInviteCode => 'Davet Kodu Gir';
	@override String get rateUs => 'Bizi Değerlendir';
	@override String get faq => 'SSS';
	@override String get logout => 'Çıkış Yap';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogTr implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çıkış yapmak üzeresiniz';
	@override String get message => 'Tekrar görüşmek üzere! Nefes egzersizlerinizi izleyeceğiz.';
	@override String get logoutButton => 'Çıkış Yap';
	@override String get cancelButton => 'Vazgeç';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanTr implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Premium Plan';
	@override String get description => 'AI asistanının kilidini aç &\ntüm premium özellikleri edin';
	@override String get button => 'Premium Al';
	@override late final _TranslationsHomePremiumPlanDialogTr dialog = _TranslationsHomePremiumPlanDialogTr._(_root);
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessTr implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Başarılı!';
	@override String get message => 'Referans kodu başarıyla uygulandı! Hem siz hem de arkadaşınız 1 hafta premium kazandınız.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsTr implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeTr missingCode = _TranslationsReferralCodeErrorsMissingCodeTr._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatTr invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatTr._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedTr alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedTr._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralTr selfReferral = _TranslationsReferralCodeErrorsSelfReferralTr._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundTr codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundTr._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorTr genericError = _TranslationsReferralCodeErrorsGenericErrorTr._(_root);
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Tr implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Bu uygulama ne işe yarar?';
	@override String get answer => 'Çocukların İngilizceyi eğlenceli hikâyelerle öğrenmesini sağlar. Kelimeler cümle içinde görülür, anlamı sezilerek öğrenilir ve tekrarlarla kalıcı hale getirilir.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Tr implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Yapay zekâ burada ne yapıyor?';
	@override String get answer => 'Çocuğun hangi kelimelerde zorlandığını analiz eder, basit açıklamalar sunar ve seviyesine uygun yeni hikâyeler önerir. İçerik çocuğun öğrenme hızına göre uyarlanır.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Tr implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Günde ne kadar kullanmak yeterlidir?';
	@override String get answer => 'Günde 5–10 dakika yeterlidir. Kısa bir hikâye bile düzenli öğrenme için etkilidir.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Tr implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Hikâyeler hangi yaş grubu için uygundur?';
	@override String get answer => 'Hikâyeler çocukların yaş ve seviyesine göre sunulur. Uygulama başlangıçta seviyeyi belirler ve ilerlemeye göre zorluk derecesini ayarlar.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Tr implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Bilmediği kelimeleri nasıl öğrenir?';
	@override String get answer => 'Bilmediği kelimeye dokunduğunda anlamı, basit açıklaması ve doğru telaffuzu gösterilir. Böylece kelime hem okunur hem duyulur.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Tr implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'İnternet bağlantısı gerekli mi?';
	@override String get answer => 'Önceden indirilen hikâyeler çevrimdışı okunabilir. Yeni içerikler ve güncellemeler için internet bağlantısı gerekir.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Tr implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Uygulama ücretsiz mi?';
	@override String get answer => 'Temel hikâyelere ücretsiz erişim sağlanır. Daha fazla hikâye, gelişmiş kişiselleştirme ve ek özellikler premium pakette sunulur.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Tr implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Hikâyeler sesli dinlenebilir mi?';
	@override String get answer => 'Evet. Hikâyeler doğru telaffuzla dinlenebilir. Bu sayede hem okuma hem dinleme becerisi birlikte gelişir.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Tr implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Öğrenilen kelimeler takip edilebilir mi?';
	@override String get answer => 'Evet. Öğrenilen kelimeler kaydedilir ve belirli aralıklarla tekrar edilmesi planlanır. Böylece unutma azaltılabilir.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Tr implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Ne kadar sürede gelişim görülür?';
	@override String get answer => 'Düzenli kullanımda ilerleme kısa sürede fark edilebilir. Okuma alışkanlığı arttıkça kelime haznesi ve anlama becerisi gelişir.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogTr implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Özellik Aktif Değil';
	@override String get message => 'Bu özellik şu anda kullanıma açık değildir.';
	@override String get button => 'Tamam';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeTr implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kod Gerekli';
	@override String get message => 'Devam etmek için lütfen bir referans kodu girin.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatTr implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geçersiz Format';
	@override String get message => 'Referans kodu tam olarak 8 karakter uzunluğunda olmalıdır.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedTr implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zaten Kullanıldı';
	@override String get message => 'Zaten bir referans kodu kullandınız. Her kullanıcı yalnızca bir kod kullanabilir.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralTr implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geçersiz Kod';
	@override String get message => 'Kendi davet kodunuzu kullanamazsınız. Lütfen bir arkadaşınızın kodunu kullanın.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundTr implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kod Bulunamadı';
	@override String get message => 'Girdiğiniz referans kodu mevcut değil. Lütfen kontrol edip tekrar deneyin.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorTr implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hata';
	@override String get message => 'Referans kodu uygulanırken bir hata oluştu. Lütfen tekrar deneyin.';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Hoşgeldiniz ${name}',
			'welcome2' => ({required Object appName}) => '${appName}\'e hoşgeldiniz',
			'get_started' => 'Başlayın',
			'next' => 'Sonraki',
			'back' => 'Geri',
			'skip' => 'Atla',
			'kContinue' => 'Devam',
			'logintext' => 'Her kelimenin anlatılmayı bekleyen yeni bir macera olduğu yer.',
			'termOfService.text1' => 'Swipe\'a kaydolarak ',
			'termOfService.link1' => 'Hizmet Şartlarımızı',
			'termOfService.text2' => ' kabul etmiş olursunuz. ',
			'termOfService.link2' => 'Gizlilik Politikamızda',
			'termOfService.text3' => ' ve ',
			'termOfService.link3' => 'Çerez Politikamızda',
			'termOfService.text4' => ' verilerinizi nasıl işlediğimizi öğrenin',
			'cookies' => 'Çerez Politikası',
			'privacy' => 'Gizlilik Politikası',
			'pressBackAgainToExit' => 'Çıkmak için bir kez daha geri tuşuna basın',
			'faq.title' => 'Sıkça Sorulan Sorular',
			'faq.questions.q1.question' => 'Bu uygulama ne işe yarar?',
			'faq.questions.q1.answer' => 'Çocukların İngilizceyi eğlenceli hikâyelerle öğrenmesini sağlar. Kelimeler cümle içinde görülür, anlamı sezilerek öğrenilir ve tekrarlarla kalıcı hale getirilir.',
			'faq.questions.q2.question' => 'Yapay zekâ burada ne yapıyor?',
			'faq.questions.q2.answer' => 'Çocuğun hangi kelimelerde zorlandığını analiz eder, basit açıklamalar sunar ve seviyesine uygun yeni hikâyeler önerir. İçerik çocuğun öğrenme hızına göre uyarlanır.',
			'faq.questions.q3.question' => 'Günde ne kadar kullanmak yeterlidir?',
			'faq.questions.q3.answer' => 'Günde 5–10 dakika yeterlidir. Kısa bir hikâye bile düzenli öğrenme için etkilidir.',
			'faq.questions.q4.question' => 'Hikâyeler hangi yaş grubu için uygundur?',
			'faq.questions.q4.answer' => 'Hikâyeler çocukların yaş ve seviyesine göre sunulur. Uygulama başlangıçta seviyeyi belirler ve ilerlemeye göre zorluk derecesini ayarlar.',
			'faq.questions.q5.question' => 'Bilmediği kelimeleri nasıl öğrenir?',
			'faq.questions.q5.answer' => 'Bilmediği kelimeye dokunduğunda anlamı, basit açıklaması ve doğru telaffuzu gösterilir. Böylece kelime hem okunur hem duyulur.',
			'faq.questions.q6.question' => 'İnternet bağlantısı gerekli mi?',
			'faq.questions.q6.answer' => 'Önceden indirilen hikâyeler çevrimdışı okunabilir. Yeni içerikler ve güncellemeler için internet bağlantısı gerekir.',
			'faq.questions.q7.question' => 'Uygulama ücretsiz mi?',
			'faq.questions.q7.answer' => 'Temel hikâyelere ücretsiz erişim sağlanır. Daha fazla hikâye, gelişmiş kişiselleştirme ve ek özellikler premium pakette sunulur.',
			'faq.questions.q8.question' => 'Hikâyeler sesli dinlenebilir mi?',
			'faq.questions.q8.answer' => 'Evet. Hikâyeler doğru telaffuzla dinlenebilir. Bu sayede hem okuma hem dinleme becerisi birlikte gelişir.',
			'faq.questions.q9.question' => 'Öğrenilen kelimeler takip edilebilir mi?',
			'faq.questions.q9.answer' => 'Evet. Öğrenilen kelimeler kaydedilir ve belirli aralıklarla tekrar edilmesi planlanır. Böylece unutma azaltılabilir.',
			'faq.questions.q10.question' => 'Ne kadar sürede gelişim görülür?',
			'faq.questions.q10.answer' => 'Düzenli kullanımda ilerleme kısa sürede fark edilebilir. Okuma alışkanlığı arttıkça kelime haznesi ve anlama becerisi gelişir.',
			'good_morning' => 'Günaydın',
			'good_afternoon' => 'İyi günler',
			'good_evening' => 'İyi akşamlar',
			'splash.screen1.title' => 'Learn English with Stories',
			'splash.screen1.description' => 'No boring memorisation. Discover words in their natural flow through short and fun stories.',
			'splash.screen2.title' => 'Artificial Intelligence Guides You',
			'splash.screen2.description' => 'It tracks the words you struggle with, explains their meaning, and suggests new stories tailored to your level.',
			'profile.title' => 'Profil',
			'profile.freeVersion' => 'Ücretsiz Versiyon',
			'profile.error' => 'Hata',
			'profile.sections.accountSettings' => 'HESAP AYARLARI',
			'profile.sections.supportAndOther' => 'DESTEK & DİĞER',
			'profile.menu.editProfile' => 'Profil Düzenle',
			'profile.menu.notifications' => 'Bildirimler',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'Uygulama Dili',
			'profile.menu.shareWithFriends' => 'Arkadaşlarınla Paylaş',
			'profile.menu.enterInviteCode' => 'Davet Kodu Gir',
			'profile.menu.rateUs' => 'Bizi Değerlendir',
			'profile.menu.faq' => 'SSS',
			'profile.menu.logout' => 'Çıkış Yap',
			'profile.manage' => 'YÖNET',
			'profile.logoutDialog.title' => 'Çıkış yapmak üzeresiniz',
			'profile.logoutDialog.message' => 'Tekrar görüşmek üzere! Nefes egzersizlerinizi izleyeceğiz.',
			'profile.logoutDialog.logoutButton' => 'Çıkış Yap',
			'profile.logoutDialog.cancelButton' => 'Vazgeç',
			'home.premium' => 'Premium!',
			'home.seeMore' => 'Daha Fazla',
			'home.premiumPlan.title' => 'Premium Plan',
			'home.premiumPlan.description' => 'AI asistanının kilidini aç &\ntüm premium özellikleri edin',
			'home.premiumPlan.button' => 'Premium Al',
			'home.premiumPlan.dialog.title' => 'Özellik Aktif Değil',
			'home.premiumPlan.dialog.message' => 'Bu özellik şu anda kullanıma açık değildir.',
			'home.premiumPlan.dialog.button' => 'Tamam',
			'editProfile.title' => 'Profil Düzenle',
			'editProfile.changePhoto' => 'Fotoğrafı Değiştir',
			'editProfile.fullName' => 'Ad Soyad',
			'editProfile.email' => 'E-posta',
			'editProfile.age' => 'Yaş',
			'editProfile.save' => 'Kaydet',
			'editProfile.saving' => 'Kaydediliyor...',
			'editProfile.updateSuccess' => 'Profil başarıyla güncellendi',
			'editProfile.updateError' => 'Profil güncellenirken bir hata oluştu',
			'editProfile.deleteAccount' => 'Hesabı Sil',
			'notifications.title' => 'Bildirimler',
			'notifications.emptyTitle' => 'Henüz bildirim yok',
			'notifications.emptyDescription' => 'Öğrenme yolculuğunla ilgili önemli bir gelişme olduğunda sana haber vereceğiz.',
			'notifications.premiumBannerTitle' => 'Premium avantajlarını\nkaçırma!',
			'notifications.premiumBannerDescription' => 'Premium abonesi olarak fırsatları yakala.',
			'share.title' => 'Arkadaşlarınla Paylaş',
			'share.mainTitle' => 'Huzuru Paylaş',
			'share.descriptionPart1' => 'Arkadaşlarını davet et birlikte nefes alın.\nHer davet için ikiniz de ',
			'share.descriptionPart2' => '1 hafta Premium\n',
			'share.descriptionPart3' => ' kazanın',
			'share.yourReferralCode' => 'REFERANS KODUN',
			'share.codeCopied' => 'Kod kopyalandı!',
			'share.copyCode' => 'Kodu Kopyala',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Misafir Olarak Devam Et',
			'auth.signInFailed' => ({required Object error}) => 'Giriş başarısız: ${error}',
			'cancel' => 'İptal',
			'deleteAccount' => 'Hesabı Sil',
			'deleteDialogTitle' => 'Hesabınızı silmek istediğinize emin misiniz?',
			'deleteDialogDescription' => 'Bu işlem geri alınamaz ve tüm egzersiz geçmişinizi ve verilerinizi kalıcı olarak silecektir.',
			'deleteError' => 'Hesabınızı silerken bir hata oluştu. Lütfen tekrar deneyin.',
			'enterInvitationCode' => 'Davet Kodu Gir',
			'inviteFriends' => 'Arkadaşınızdan aldığınız davet kodunu.\nİlgili alana yazarak',
			'twoDaysPremium' => '7 Günlük Premium',
			'advantage' => '\navantajlarından yararlanabilirsiniz.',
			'send' => 'Gönder',
			'referralCode.inputPlaceholder' => '8 karakterli kodu girin',
			'referralCode.applying' => 'Kod uygulanıyor...',
			'referralCode.success.title' => 'Başarılı!',
			'referralCode.success.message' => 'Referans kodu başarıyla uygulandı! Hem siz hem de arkadaşınız 1 hafta premium kazandınız.',
			'referralCode.errors.missingCode.title' => 'Kod Gerekli',
			'referralCode.errors.missingCode.message' => 'Devam etmek için lütfen bir referans kodu girin.',
			'referralCode.errors.invalidFormat.title' => 'Geçersiz Format',
			'referralCode.errors.invalidFormat.message' => 'Referans kodu tam olarak 8 karakter uzunluğunda olmalıdır.',
			'referralCode.errors.alreadyUsed.title' => 'Zaten Kullanıldı',
			'referralCode.errors.alreadyUsed.message' => 'Zaten bir referans kodu kullandınız. Her kullanıcı yalnızca bir kod kullanabilir.',
			'referralCode.errors.selfReferral.title' => 'Geçersiz Kod',
			'referralCode.errors.selfReferral.message' => 'Kendi davet kodunuzu kullanamazsınız. Lütfen bir arkadaşınızın kodunu kullanın.',
			'referralCode.errors.codeNotFound.title' => 'Kod Bulunamadı',
			'referralCode.errors.codeNotFound.message' => 'Girdiğiniz referans kodu mevcut değil. Lütfen kontrol edip tekrar deneyin.',
			'referralCode.errors.genericError.title' => 'Hata',
			'referralCode.errors.genericError.message' => 'Referans kodu uygulanırken bir hata oluştu. Lütfen tekrar deneyin.',
			'deleteNotifications' => 'Bildirimleri Sil',
			'deleteNotificationsDescription' => 'Tüm bildirimlerinizi silmek istediğinize emin misiniz? Bu işlem geri alınamaz ve kalıcı olarak silinecektir.',
			'deleteAll' => 'Tümünü Sil',
			'appLanguage' => 'Uygulama Dili',
			'selectLanguage' => 'Tercih Ettiğiniz Dili Seçin',
			'save' => 'Kaydet',
			'languageOptions.english' => 'İngilizce',
			'languageOptions.german' => 'Almanca',
			'languageOptions.italian' => 'İtalyanca',
			'languageOptions.french' => 'Fransızca',
			'languageOptions.japanese' => 'Japonca',
			'languageOptions.spanish' => 'İspanyolca',
			'languageOptions.russian' => 'Rusça',
			'languageOptions.turkish' => 'Türkçe',
			'languageOptions.korean' => 'Korece',
			'languageOptions.hindi' => 'Hintçe',
			'languageOptions.portuguese' => 'Portekizce',
			_ => null,
		};
	}
}
