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
	@override String continue_to({required Object language}) => '${language} diline devam et';
	@override String get get_started => 'Başlayın';
	@override String get next => 'Sonraki';
	@override String get back => 'Geri';
	@override String get skip => 'Atla';
	@override String get kContinue => 'Devam';
	@override String get logintext => 'Her kelimenin anlatılmayı bekleyen yeni bir macera olduğu yer.';
	@override late final _TranslationsTermOfServiceTr termOfService = _TranslationsTermOfServiceTr._(_root);
	@override String get cookies => 'Çerez Politikası';
	@override String get privacy => 'Gizlilik Politikası';
	@override late final _TranslationsOnboardingTr onboarding = _TranslationsOnboardingTr._(_root);
	@override String get pressBackAgainToExit => 'Çıkmak için bir kez daha geri tuşuna basın';
	@override late final _TranslationsFaqTr faq = _TranslationsFaqTr._(_root);
	@override String get good_morning => 'Günaydın';
	@override String get good_afternoon => 'İyi günler';
	@override String get good_evening => 'İyi akşamlar';
	@override late final _TranslationsSplashTr splash = _TranslationsSplashTr._(_root);
	@override late final _TranslationsProfileTr profile = _TranslationsProfileTr._(_root);
	@override late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
	@override late final _TranslationsAllStoriesTr allStories = _TranslationsAllStoriesTr._(_root);
	@override late final _TranslationsStoriesTr stories = _TranslationsStoriesTr._(_root);
	@override late final _TranslationsLibraryTr library = _TranslationsLibraryTr._(_root);
	@override late final _TranslationsBottomNavTr bottomNav = _TranslationsBottomNavTr._(_root);
	@override late final _TranslationsDayStreakTr dayStreak = _TranslationsDayStreakTr._(_root);
	@override late final _TranslationsStoryDetailsTr storyDetails = _TranslationsStoryDetailsTr._(_root);
	@override late final _TranslationsShareTr share = _TranslationsShareTr._(_root);
	@override String get delete => 'Sil';
	@override late final _TranslationsEditProfileTr editProfile = _TranslationsEditProfileTr._(_root);
	@override late final _TranslationsNotificationsTr notifications = _TranslationsNotificationsTr._(_root);
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
	@override late final _TranslationsTermOfServicePrivacyPolicyTr privacyPolicy = _TranslationsTermOfServicePrivacyPolicyTr._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServiceTr termsOfService = _TranslationsTermOfServiceTermsOfServiceTr._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyTr cookiePolicy = _TranslationsTermOfServiceCookiePolicyTr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingTr implements TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1Tr step1 = _TranslationsOnboardingStep1Tr._(_root);
	@override late final _TranslationsOnboardingStep2Tr step2 = _TranslationsOnboardingStep2Tr._(_root);
	@override late final _TranslationsOnboardingLoadingTr loading = _TranslationsOnboardingLoadingTr._(_root);
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
	@override String get passive => 'Pasif';
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
	@override String get pickUpWhereYouLeftOff => 'Kaldığın yerden devam et';
	@override String get premiumSection => 'Premium';
	@override String get history => 'Geçmiş';
	@override String get librarySection => 'Kütüphane';
	@override String get libraryDescription => 'Kaydettiğiniz kelimeler burada görünecek.';
	@override String get upgradeToPremium => 'Premium\'a yükselt';
	@override String get unlimitedStories => 'Sınırsız hikaye ve reklamsız deneyim';
	@override late final _TranslationsHomePremiumPlanTr premiumPlan = _TranslationsHomePremiumPlanTr._(_root);
}

// Path: allStories
class _TranslationsAllStoriesTr implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tüm Hikayeler';
	@override String get noStoriesFound => 'Hikaye bulunamadı';
	@override String get selectFilter => 'Filtre Seç';
	@override String get category => 'Kategori';
	@override String get categorySubtitle => 'Lütfen okumak istediğiniz kategoriyi seçin';
	@override String get apply => 'Uygula';
}

// Path: stories
class _TranslationsStoriesTr implements TranslationsStoriesEn {
	_TranslationsStoriesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hikayeler';
	@override String get popularStories => 'Popüler Hikayeler';
	@override String get recommendForYou => 'Size Özel Öneriler';
	@override String get allStories => 'Tüm Hikayeler';
	@override String get seeAll => 'Tümünü gör';
	@override late final _TranslationsStoriesCategoriesTr categories = _TranslationsStoriesCategoriesTr._(_root);
}

// Path: library
class _TranslationsLibraryTr implements TranslationsLibraryEn {
	_TranslationsLibraryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kütüphane';
	@override String wordCount({required Object count}) => '${count} Kelime';
	@override String get popularWords => 'Popüler Kelimeler';
	@override String get allWords => 'Tüm Kelimeler';
	@override String get searchWord => 'Kelime Ara';
	@override String get searchHint => 'Lütfen kelime girin…';
}

// Path: bottomNav
class _TranslationsBottomNavTr implements TranslationsBottomNavEn {
	_TranslationsBottomNavTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Ana Sayfa';
	@override String get stories => 'Hikayeler';
	@override String get library => 'Kütüphane';
	@override String get profile => 'Profil';
}

// Path: dayStreak
class _TranslationsDayStreakTr implements TranslationsDayStreakEn {
	_TranslationsDayStreakTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük seri!';
	@override late final _TranslationsDayStreakDaysTr days = _TranslationsDayStreakDaysTr._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsTr implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Giriş';
	@override String get saved => 'Kaydedildi';
	@override String get removed => 'Kaldırıldı';
	@override String get storyAddedToLibrary => 'Hikaye kütüphanenize eklendi.';
	@override String get storyRemovedFromLibrary => 'Hikaye kütüphaneden kaldırıldı.';
	@override String get wordAddedToLibrary => 'Kelime kütüphaneye eklendi. Geri al';
	@override String get successfully => 'Başarıyla';
	@override String get ratingSubmitted => 'Puanınız başarıyla gönderildi.';
	@override String get warning => 'Uyarı';
	@override String get fillAllFields => 'Lütfen tüm alanları doldurun.';
	@override String get messageSent => 'Mesajınız başarıyla gönderildi.';
	@override String get translate => 'Çevir';
	@override String get speak => 'Konuş';
	@override String get like => 'Beğen';
	@override String get save => 'Kaydet';
	@override String get feedback => 'Geri Bildirim';
	@override String get rating => 'Puan';
	@override String get stop => 'Durdur';
	@override String get start => 'Başlat';
	@override String get listen => 'Dinle';
	@override String get translation => 'Çeviri';
	@override String get translating => 'Çevriliyor...';
	@override String get saveToLibrary => 'Kütüphaneye kaydet';
	@override String get rateThisStory => 'Bu hikayeyi puanla';
	@override String get enjoyStory => 'Bu hikayeden ne kadar keyif aldınız?';
	@override String get send => 'Gönder';
	@override String get subject => 'Konu';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsTr feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsTr._(_root);
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
	@override String get inviteDescription => 'Arkadaşlarını davet et ve\nbirlikte öğren';
	@override String get linkCopied => 'Kopyalandı';
	@override String get linkCopiedMessage => 'Bağlantı panoya kopyalandı.';
}

// Path: editProfile
class _TranslationsEditProfileTr implements TranslationsEditProfileEn {
	_TranslationsEditProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Düzenle';
	@override String get changePhoto => 'Avatar Değiştir';
	@override String get learnLanguage => 'Öğrenilecek Dili Seç';
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

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyTr implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gizlilik Politikası';
	@override String get lastUpdated => 'Son Güncelleme: 2025';
	@override String get intro => 'Lingola Stories Kids, çocuk gizliliğini ve veri güvenliğini temel ilke olarak benimser.';
	@override String get section1Title => '1. TOPLANAN BİLGİLER';
	@override String get section1sub1Title => '1.1 Kullanıcı Tarafından Sağlanan Veriler';
	@override String get section1sub1Body => 'Takma ad veya profil adı.\nE-posta adresi.\nYaş bilgisi.\nDil seviyesi ve öğrenilen kelimeler.\n\nNot: Sağlık analizi için kesinlikle kullanılmaz.';
	@override String get section1sub2Title => '1.2 Otomatik Toplanan Veriler';
	@override String get section1sub2Body => 'Cihaz türü, işletim sistemi ve performans verileri. Kesin konum TOPLANMAZ.';
	@override String get section2Title => '2. VERİ İŞLEME AMAÇLARI';
	@override String get section2Body => 'Verileriniz yalnızca şu amaçlarla kullanılır:\n\n- Yaşa uygun içerik sunmak.\n- Öğrenme deneyimini kişisel uyarlamak.\n- Uygulama performansını iyileştirmek.\n- Yasal yükümlülükleri yerine getirmek.';
	@override String get section3Title => '3. VERİ SAKLAMA VE SİLME';
	@override String get section3Body => 'Hesabınız aktif olduğu sürece saklanır. Destek kayıtları en fazla 12 ay. Silinen hesaplarda veriler geri alınamaz şekilde silinir.';
	@override String get section4Title => '4. KULLANICI HAKLARI';
	@override String get section4Body => 'KVKK kapsamında erişim, düzeltme, silme veya taşınabilirlik talep edebilirsiniz. support@fly-work.com';
	@override String get section5Title => '5. ÇOCUKLARIN GİZLİLİĞİ';
	@override String get section5Body => '6 yaş ve üzeri için tasarım. 13 yaş altı için ebeveyn onayı gereklidir.';
	@override String get section6Title => '6. İLETİŞİM';
	@override String get section6Body => 'Sorular: support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServiceTr implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServiceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kullanım Koşulları';
	@override String get lastUpdated => 'Son Güncelleme: 2025';
	@override String get intro => 'Bu Koşullar, Lingola Stories Kids uygulamasının kullanımını yönetir.';
	@override String get disclaimer => 'Sorumluluk Reddi: Eğitim aracıdır, resmi sertifikasyon sunmaz.';
	@override String get section1Title => '1. HİZMET KAPSAMI';
	@override String get section1Body => 'Uygulama çocuklar için hikaye bazlı öğrenme sunar:\n\n- YZ destekli hikayeler.\n- Yaşa dayalı okuma:\n- Kelime ve telaffuz desteği.';
	@override String get section2Title => '2. KULLANIM KOŞULLARI VE YAŞ';
	@override String get section2Body => 'En az 6 yaşında olmalı.\n18 altı ebeveyn gözetimiyle.\nHesap bilgileri doğru olmalı.';
	@override String get section3Title => '3. YASAKLI KULLANIM';
	@override String get section3Body => 'İzinsiz kopyalama, tersine mühendislik ve ticari kullanım kesinlikle yasaktır.';
	@override String get section4Title => '4. ABONELİKLER VE ÖDEMELER';
	@override String get section4Body => 'Premium App Store / Google Play politikalarına tabidir.';
	@override String get section5Title => '5. FİKRİ MÜLKİYET';
	@override String get section5Body => 'Tüm içerikler Lingola Stories Kids\'e aittir.';
	@override String get section6Title => '6. SORUMLULUGUN SINIRLANMASI';
	@override String get section6Body => 'Uygulama oldugu gibi sunulmaktadır.';
	@override String get section7Title => '7. UYGULANACAK HUKUK';
	@override String get section7Body => 'Türkiye Cumhuriyeti kanunlarına tabidir. İstanbul Mahkemeleri yetkilidir.';
	@override String get section8Title => '8. İLETİŞİM';
	@override String get section8Body => 'Sorular: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyTr implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çerez Politikası';
	@override String get lastUpdated => 'Son Güncelleme: 2025';
	@override String get intro => 'Bu politika, uygulamayı kullandığınızda hangi dijital teknolojilerin kullanıldığını açıklar.';
	@override String get important => 'ÖNEMLİ: Çocuk gizliliği temel ilkemizdir. 6 yaş ve üzeri için tasarım.';
	@override String get section1Title => '1. ÇEREZLER NELİKTİR?';
	@override String get section1Body => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. They do not directly identify you.';
	@override String get section2Title => '2. HANGİ TEKNOLOJİLERİ KULLANIYORUZ?';
	@override String get section2Body => 'Strictly Necessary: For session management and security.\n\nPerformance and Analytics: Understand which stories are read, data evaluated anonymously.\n\nPersonalization: Remembers language preference and reading level.';
	@override String get section3Title => '3. NEDEN KULLANIYORUZ?';
	@override String get section3Body => '- To ensure the app runs safely.\n- To make the reading experience more fluid.\n- To remember settings.\n- To identify features for future development.';
	@override String get section4Title => '4. ÜÇÜNCÜ TARAF TEKNOLOJİLER';
	@override String get section4Body => 'We apply minimum data usage when working with third-party partners.';
	@override String get section5Title => '5. KONTROL VE YÖNETİM';
	@override String get section5Body => 'Parents can limit these technologies via device settings. Disabling necessary technologies may affect functionality.';
	@override String get section6Title => '6. İLETİŞİM';
	@override String get section6Body => 'Sorular: support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1Tr implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hangi dili\nöğrenmek istiyorsunuz?';
	@override String get subtitle => 'Lütfen öğrenmek istediğiniz\ndil veya dilleri seçin.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2Tr implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ne tür hikayeleri\nseversiniz?';
	@override String get subtitle => 'Lütfen tercihinizi belirtin.';
	@override late final _TranslationsOnboardingStep2CategoriesTr categories = _TranslationsOnboardingStep2CategoriesTr._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingTr implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => 'Kişisel hesabınız\n';
	@override String get titlePart2 => 'oluşturuluyor';
	@override String get subtitle => 'Sizin için harika hikayeler oluşturuyoruz';
	@override String get optimization => 'Optimizasyon';
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
	@override String get title => 'Hikâyelerle İngilizce Öğrenin';
	@override String get description => 'Sıkıcı ezber yok. Kısa ve eğlenceli hikâyelerle kelimeleri doğal akışları içinde keşfedin.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Tr implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yapay Zekâ Size Rehberlik Eder';
	@override String get description => 'Zorlandığınız kelimeleri takip eder, anlamlarını açıklar ve seviyenize uygun yeni hikâyeler önerir.';
}

// Path: profile.sections
class _TranslationsProfileSectionsTr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'HESAP AYARLARI';
	@override String get general => 'GENEL';
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

// Path: stories.categories
class _TranslationsStoriesCategoriesTr implements TranslationsStoriesCategoriesEn {
	_TranslationsStoriesCategoriesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get popular => 'Popüler';
	@override String get space => 'Uzay';
	@override String get magic => 'Sihir';
	@override String get animals => 'Hayvanlar';
	@override String get detectives => 'Dedektifler';
	@override String get dinosaurs => 'Dinozorlar';
	@override String get superhero => 'Süper Kahraman';
	@override String get underwater => 'Su Altı';
	@override String get fairytale => 'Masal';
}

// Path: dayStreak.days
class _TranslationsDayStreakDaysTr implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get su => 'Pa';
	@override String get mo => 'Pt';
	@override String get tu => 'Sa';
	@override String get we => 'Ça';
	@override String get th => 'Pe';
	@override String get fr => 'Cu';
	@override String get sa => 'Ct';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsTr implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get bugReport => 'Hata Bildirimi';
	@override String get storyContent => 'Hikaye İçeriği';
	@override String get audioIssue => 'Ses Sorunu';
	@override String get suggestion => 'Öneri';
	@override String get other => 'Diğer';
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

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesTr implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 Uzay Maceraları';
	@override String get magic => '🦄 Büyülü Dünyalar';
	@override String get detectives => '🕵️ Küçük Dedektifler';
	@override String get animals => '🐾 Sevimli Dostlar';
	@override String get dinosaurs => '🦖 Dinozorlar Çağı';
	@override String get superhero => '🦸 Süper Kahramanlar';
	@override String get underwater => '🌊 Su Altı Krallığı';
	@override String get fairytale => '🏰 Prens ve Prenses Masalları';
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
			'continue_to' => ({required Object language}) => '${language} diline devam et',
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
			'termOfService.privacyPolicy.title' => 'Gizlilik Politikası',
			'termOfService.privacyPolicy.lastUpdated' => 'Son Güncelleme: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids, çocuk gizliliğini ve veri güvenliğini temel ilke olarak benimser.',
			'termOfService.privacyPolicy.section1Title' => '1. TOPLANAN BİLGİLER',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Kullanıcı Tarafından Sağlanan Veriler',
			'termOfService.privacyPolicy.section1sub1Body' => 'Takma ad veya profil adı.\nE-posta adresi.\nYaş bilgisi.\nDil seviyesi ve öğrenilen kelimeler.\n\nNot: Sağlık analizi için kesinlikle kullanılmaz.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Otomatik Toplanan Veriler',
			'termOfService.privacyPolicy.section1sub2Body' => 'Cihaz türü, işletim sistemi ve performans verileri. Kesin konum TOPLANMAZ.',
			'termOfService.privacyPolicy.section2Title' => '2. VERİ İŞLEME AMAÇLARI',
			'termOfService.privacyPolicy.section2Body' => 'Verileriniz yalnızca şu amaçlarla kullanılır:\n\n- Yaşa uygun içerik sunmak.\n- Öğrenme deneyimini kişisel uyarlamak.\n- Uygulama performansını iyileştirmek.\n- Yasal yükümlülükleri yerine getirmek.',
			'termOfService.privacyPolicy.section3Title' => '3. VERİ SAKLAMA VE SİLME',
			'termOfService.privacyPolicy.section3Body' => 'Hesabınız aktif olduğu sürece saklanır. Destek kayıtları en fazla 12 ay. Silinen hesaplarda veriler geri alınamaz şekilde silinir.',
			'termOfService.privacyPolicy.section4Title' => '4. KULLANICI HAKLARI',
			'termOfService.privacyPolicy.section4Body' => 'KVKK kapsamında erişim, düzeltme, silme veya taşınabilirlik talep edebilirsiniz. support@fly-work.com',
			'termOfService.privacyPolicy.section5Title' => '5. ÇOCUKLARIN GİZLİLİĞİ',
			'termOfService.privacyPolicy.section5Body' => '6 yaş ve üzeri için tasarım. 13 yaş altı için ebeveyn onayı gereklidir.',
			'termOfService.privacyPolicy.section6Title' => '6. İLETİŞİM',
			'termOfService.privacyPolicy.section6Body' => 'Sorular: support@fly-work.com',
			'termOfService.termsOfService.title' => 'Kullanım Koşulları',
			'termOfService.termsOfService.lastUpdated' => 'Son Güncelleme: 2025',
			'termOfService.termsOfService.intro' => 'Bu Koşullar, Lingola Stories Kids uygulamasının kullanımını yönetir.',
			'termOfService.termsOfService.disclaimer' => 'Sorumluluk Reddi: Eğitim aracıdır, resmi sertifikasyon sunmaz.',
			'termOfService.termsOfService.section1Title' => '1. HİZMET KAPSAMI',
			'termOfService.termsOfService.section1Body' => 'Uygulama çocuklar için hikaye bazlı öğrenme sunar:\n\n- YZ destekli hikayeler.\n- Yaşa dayalı okuma:\n- Kelime ve telaffuz desteği.',
			'termOfService.termsOfService.section2Title' => '2. KULLANIM KOŞULLARI VE YAŞ',
			'termOfService.termsOfService.section2Body' => 'En az 6 yaşında olmalı.\n18 altı ebeveyn gözetimiyle.\nHesap bilgileri doğru olmalı.',
			'termOfService.termsOfService.section3Title' => '3. YASAKLI KULLANIM',
			'termOfService.termsOfService.section3Body' => 'İzinsiz kopyalama, tersine mühendislik ve ticari kullanım kesinlikle yasaktır.',
			'termOfService.termsOfService.section4Title' => '4. ABONELİKLER VE ÖDEMELER',
			'termOfService.termsOfService.section4Body' => 'Premium App Store / Google Play politikalarına tabidir.',
			'termOfService.termsOfService.section5Title' => '5. FİKRİ MÜLKİYET',
			'termOfService.termsOfService.section5Body' => 'Tüm içerikler Lingola Stories Kids\'e aittir.',
			'termOfService.termsOfService.section6Title' => '6. SORUMLULUGUN SINIRLANMASI',
			'termOfService.termsOfService.section6Body' => 'Uygulama oldugu gibi sunulmaktadır.',
			'termOfService.termsOfService.section7Title' => '7. UYGULANACAK HUKUK',
			'termOfService.termsOfService.section7Body' => 'Türkiye Cumhuriyeti kanunlarına tabidir. İstanbul Mahkemeleri yetkilidir.',
			'termOfService.termsOfService.section8Title' => '8. İLETİŞİM',
			'termOfService.termsOfService.section8Body' => 'Sorular: support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Çerez Politikası',
			'termOfService.cookiePolicy.lastUpdated' => 'Son Güncelleme: 2025',
			'termOfService.cookiePolicy.intro' => 'Bu politika, uygulamayı kullandığınızda hangi dijital teknolojilerin kullanıldığını açıklar.',
			'termOfService.cookiePolicy.important' => 'ÖNEMLİ: Çocuk gizliliği temel ilkemizdir. 6 yaş ve üzeri için tasarım.',
			'termOfService.cookiePolicy.section1Title' => '1. ÇEREZLER NELİKTİR?',
			'termOfService.cookiePolicy.section1Body' => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. They do not directly identify you.',
			'termOfService.cookiePolicy.section2Title' => '2. HANGİ TEKNOLOJİLERİ KULLANIYORUZ?',
			'termOfService.cookiePolicy.section2Body' => 'Strictly Necessary: For session management and security.\n\nPerformance and Analytics: Understand which stories are read, data evaluated anonymously.\n\nPersonalization: Remembers language preference and reading level.',
			'termOfService.cookiePolicy.section3Title' => '3. NEDEN KULLANIYORUZ?',
			'termOfService.cookiePolicy.section3Body' => '- To ensure the app runs safely.\n- To make the reading experience more fluid.\n- To remember settings.\n- To identify features for future development.',
			'termOfService.cookiePolicy.section4Title' => '4. ÜÇÜNCÜ TARAF TEKNOLOJİLER',
			'termOfService.cookiePolicy.section4Body' => 'We apply minimum data usage when working with third-party partners.',
			'termOfService.cookiePolicy.section5Title' => '5. KONTROL VE YÖNETİM',
			'termOfService.cookiePolicy.section5Body' => 'Parents can limit these technologies via device settings. Disabling necessary technologies may affect functionality.',
			'termOfService.cookiePolicy.section6Title' => '6. İLETİŞİM',
			'termOfService.cookiePolicy.section6Body' => 'Sorular: support@fly-work.com',
			'cookies' => 'Çerez Politikası',
			'privacy' => 'Gizlilik Politikası',
			'onboarding.step1.title' => 'Hangi dili\nöğrenmek istiyorsunuz?',
			'onboarding.step1.subtitle' => 'Lütfen öğrenmek istediğiniz\ndil veya dilleri seçin.',
			'onboarding.step2.title' => 'Ne tür hikayeleri\nseversiniz?',
			'onboarding.step2.subtitle' => 'Lütfen tercihinizi belirtin.',
			'onboarding.step2.categories.space' => '🚀 Uzay Maceraları',
			'onboarding.step2.categories.magic' => '🦄 Büyülü Dünyalar',
			'onboarding.step2.categories.detectives' => '🕵️ Küçük Dedektifler',
			'onboarding.step2.categories.animals' => '🐾 Sevimli Dostlar',
			'onboarding.step2.categories.dinosaurs' => '🦖 Dinozorlar Çağı',
			'onboarding.step2.categories.superhero' => '🦸 Süper Kahramanlar',
			'onboarding.step2.categories.underwater' => '🌊 Su Altı Krallığı',
			'onboarding.step2.categories.fairytale' => '🏰 Prens ve Prenses Masalları',
			'onboarding.loading.titlePart1' => 'Kişisel hesabınız\n',
			'onboarding.loading.titlePart2' => 'oluşturuluyor',
			'onboarding.loading.subtitle' => 'Sizin için harika hikayeler oluşturuyoruz',
			'onboarding.loading.optimization' => 'Optimizasyon',
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
			'splash.screen1.title' => 'Hikâyelerle İngilizce Öğrenin',
			'splash.screen1.description' => 'Sıkıcı ezber yok. Kısa ve eğlenceli hikâyelerle kelimeleri doğal akışları içinde keşfedin.',
			'splash.screen2.title' => 'Yapay Zekâ Size Rehberlik Eder',
			'splash.screen2.description' => 'Zorlandığınız kelimeleri takip eder, anlamlarını açıklar ve seviyenize uygun yeni hikâyeler önerir.',
			'profile.title' => 'Profil',
			'profile.freeVersion' => 'Ücretsiz Versiyon',
			'profile.error' => 'Hata',
			'profile.passive' => 'Pasif',
			'profile.sections.accountSettings' => 'HESAP AYARLARI',
			'profile.sections.general' => 'GENEL',
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
			'home.pickUpWhereYouLeftOff' => 'Kaldığın yerden devam et',
			'home.premiumSection' => 'Premium',
			'home.history' => 'Geçmiş',
			'home.librarySection' => 'Kütüphane',
			'home.libraryDescription' => 'Kaydettiğiniz kelimeler burada görünecek.',
			'home.upgradeToPremium' => 'Premium\'a yükselt',
			'home.unlimitedStories' => 'Sınırsız hikaye ve reklamsız deneyim',
			'home.premiumPlan.title' => 'Premium Plan',
			'home.premiumPlan.description' => 'AI asistanının kilidini aç &\ntüm premium özellikleri edin',
			'home.premiumPlan.button' => 'Premium Al',
			'home.premiumPlan.dialog.title' => 'Özellik Aktif Değil',
			'home.premiumPlan.dialog.message' => 'Bu özellik şu anda kullanıma açık değildir.',
			'home.premiumPlan.dialog.button' => 'Tamam',
			'allStories.title' => 'Tüm Hikayeler',
			'allStories.noStoriesFound' => 'Hikaye bulunamadı',
			'allStories.selectFilter' => 'Filtre Seç',
			'allStories.category' => 'Kategori',
			'allStories.categorySubtitle' => 'Lütfen okumak istediğiniz kategoriyi seçin',
			'allStories.apply' => 'Uygula',
			'stories.title' => 'Hikayeler',
			'stories.popularStories' => 'Popüler Hikayeler',
			'stories.recommendForYou' => 'Size Özel Öneriler',
			'stories.allStories' => 'Tüm Hikayeler',
			'stories.seeAll' => 'Tümünü gör',
			'stories.categories.popular' => 'Popüler',
			'stories.categories.space' => 'Uzay',
			'stories.categories.magic' => 'Sihir',
			'stories.categories.animals' => 'Hayvanlar',
			'stories.categories.detectives' => 'Dedektifler',
			'stories.categories.dinosaurs' => 'Dinozorlar',
			'stories.categories.superhero' => 'Süper Kahraman',
			'stories.categories.underwater' => 'Su Altı',
			'stories.categories.fairytale' => 'Masal',
			'library.title' => 'Kütüphane',
			'library.wordCount' => ({required Object count}) => '${count} Kelime',
			'library.popularWords' => 'Popüler Kelimeler',
			'library.allWords' => 'Tüm Kelimeler',
			'library.searchWord' => 'Kelime Ara',
			'library.searchHint' => 'Lütfen kelime girin…',
			'bottomNav.home' => 'Ana Sayfa',
			'bottomNav.stories' => 'Hikayeler',
			'bottomNav.library' => 'Kütüphane',
			'bottomNav.profile' => 'Profil',
			'dayStreak.title' => 'Günlük seri!',
			'dayStreak.days.su' => 'Pa',
			'dayStreak.days.mo' => 'Pt',
			'dayStreak.days.tu' => 'Sa',
			'dayStreak.days.we' => 'Ça',
			'dayStreak.days.th' => 'Pe',
			'dayStreak.days.fr' => 'Cu',
			'dayStreak.days.sa' => 'Ct',
			'storyDetails.introduction' => 'Giriş',
			'storyDetails.saved' => 'Kaydedildi',
			'storyDetails.removed' => 'Kaldırıldı',
			'storyDetails.storyAddedToLibrary' => 'Hikaye kütüphanenize eklendi.',
			'storyDetails.storyRemovedFromLibrary' => 'Hikaye kütüphaneden kaldırıldı.',
			'storyDetails.wordAddedToLibrary' => 'Kelime kütüphaneye eklendi. Geri al',
			'storyDetails.successfully' => 'Başarıyla',
			'storyDetails.ratingSubmitted' => 'Puanınız başarıyla gönderildi.',
			'storyDetails.warning' => 'Uyarı',
			'storyDetails.fillAllFields' => 'Lütfen tüm alanları doldurun.',
			'storyDetails.messageSent' => 'Mesajınız başarıyla gönderildi.',
			'storyDetails.translate' => 'Çevir',
			'storyDetails.speak' => 'Konuş',
			'storyDetails.like' => 'Beğen',
			'storyDetails.save' => 'Kaydet',
			'storyDetails.feedback' => 'Geri Bildirim',
			'storyDetails.rating' => 'Puan',
			'storyDetails.stop' => 'Durdur',
			'storyDetails.start' => 'Başlat',
			'storyDetails.listen' => 'Dinle',
			'storyDetails.translation' => 'Çeviri',
			'storyDetails.translating' => 'Çevriliyor...',
			'storyDetails.saveToLibrary' => 'Kütüphaneye kaydet',
			'storyDetails.rateThisStory' => 'Bu hikayeyi puanla',
			'storyDetails.enjoyStory' => 'Bu hikayeden ne kadar keyif aldınız?',
			'storyDetails.send' => 'Gönder',
			'storyDetails.subject' => 'Konu',
			'storyDetails.feedbackSubjects.bugReport' => 'Hata Bildirimi',
			'storyDetails.feedbackSubjects.storyContent' => 'Hikaye İçeriği',
			'storyDetails.feedbackSubjects.audioIssue' => 'Ses Sorunu',
			'storyDetails.feedbackSubjects.suggestion' => 'Öneri',
			'storyDetails.feedbackSubjects.other' => 'Diğer',
			'share.title' => 'Arkadaşlarınla Paylaş',
			'share.mainTitle' => 'Huzuru Paylaş',
			'share.descriptionPart1' => 'Arkadaşlarını davet et birlikte nefes alın.\nHer davet için ikiniz de ',
			'share.descriptionPart2' => '1 hafta Premium\n',
			'share.descriptionPart3' => ' kazanın',
			'share.yourReferralCode' => 'REFERANS KODUN',
			'share.codeCopied' => 'Kod kopyalandı!',
			'share.copyCode' => 'Kodu Kopyala',
			'share.inviteDescription' => 'Arkadaşlarını davet et ve\nbirlikte öğren',
			'share.linkCopied' => 'Kopyalandı',
			'share.linkCopiedMessage' => 'Bağlantı panoya kopyalandı.',
			'delete' => 'Sil',
			'editProfile.title' => 'Profil Düzenle',
			'editProfile.changePhoto' => 'Avatar Değiştir',
			'editProfile.learnLanguage' => 'Öğrenilecek Dili Seç',
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
