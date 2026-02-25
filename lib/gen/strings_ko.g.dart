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
class TranslationsKo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => '환영합니다 ${name}';
	@override String welcome2({required Object appName}) => '${appName}에 오신 것을 환영합니다';
	@override String get get_started => '시작하기';
	@override String get next => '다음';
	@override String get back => '뒤로';
	@override String get skip => '건너뛰기';
	@override String get kContinue => '계속';
	@override String get logintext => '모든 단어가 이야기되기를 기다리는 새로운 모험입니다.';
	@override late final _TranslationsTermOfServiceKo termOfService = _TranslationsTermOfServiceKo._(_root);
	@override String get cookies => '쿠키 정책';
	@override String get privacy => '개인정보 처리방침';
	@override late final _TranslationsOnboardingKo onboarding = _TranslationsOnboardingKo._(_root);
	@override String get pressBackAgainToExit => '종료하려면 뒤로 버튼을 다시 누르세요';
	@override late final _TranslationsFaqKo faq = _TranslationsFaqKo._(_root);
	@override String get good_morning => '좋은 아침입니다';
	@override String get good_afternoon => '좋은 오후입니다';
	@override String get good_evening => '좋은 저녁입니다';
	@override late final _TranslationsSplashKo splash = _TranslationsSplashKo._(_root);
	@override late final _TranslationsProfileKo profile = _TranslationsProfileKo._(_root);
	@override late final _TranslationsHomeKo home = _TranslationsHomeKo._(_root);
	@override late final _TranslationsAllStoriesKo allStories = _TranslationsAllStoriesKo._(_root);
	@override late final _TranslationsStoriesKo stories = _TranslationsStoriesKo._(_root);
	@override late final _TranslationsLibraryKo library = _TranslationsLibraryKo._(_root);
	@override late final _TranslationsBottomNavKo bottomNav = _TranslationsBottomNavKo._(_root);
	@override late final _TranslationsDayStreakKo dayStreak = _TranslationsDayStreakKo._(_root);
	@override late final _TranslationsStoryDetailsKo storyDetails = _TranslationsStoryDetailsKo._(_root);
	@override late final _TranslationsShareKo share = _TranslationsShareKo._(_root);
	@override String get delete => '삭제';
	@override late final _TranslationsEditProfileKo editProfile = _TranslationsEditProfileKo._(_root);
	@override late final _TranslationsNotificationsKo notifications = _TranslationsNotificationsKo._(_root);
	@override late final _TranslationsAuthKo auth = _TranslationsAuthKo._(_root);
	@override String get cancel => '취소';
	@override String get deleteAccount => '계정 삭제';
	@override String get deleteDialogTitle => '계정을 삭제하시겠습니까?';
	@override String get deleteDialogDescription => '이 작업은 되돌릴 수 없으며 모든 운동 기록과 데이터가 영구적으로 삭제됩니다.';
	@override String get deleteError => '계정을 삭제하는 중 오류가 발생했습니다. 다시 시도해 주세요.';
	@override String get enterInvitationCode => '초대 코드 입력';
	@override String get inviteFriends => '친구에게 받은 초대 코드를 입력하세요.\n지정된 필드에 입력하세요';
	@override String get twoDaysPremium => '7일 프리미엄';
	@override String get advantage => '\n혜택을 누리세요.';
	@override String get send => '보내기';
	@override late final _TranslationsReferralCodeKo referralCode = _TranslationsReferralCodeKo._(_root);
	@override String get deleteNotifications => '알림 삭제';
	@override String get deleteNotificationsDescription => '모든 알림을 삭제하시겠습니까?\n이 작업은 되돌릴 수 없으며 실행 취소할 수 없습니다.';
	@override String get deleteAll => '모두 삭제';
	@override String get appLanguage => '앱 언어';
	@override String get selectLanguage => '선호하는 언어를 선택하세요';
	@override String get save => '저장';
	@override late final _TranslationsLanguageOptionsKo languageOptions = _TranslationsLanguageOptionsKo._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceKo implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'swipe에 가입하면 당사의 ';
	@override String get link1 => '서비스 약관';
	@override String get text2 => '에 동의하는 것입니다. ';
	@override String get link2 => '개인정보 처리방침';
	@override String get text3 => ' 및 ';
	@override String get link3 => '쿠키 정책';
	@override String get text4 => '에서 데이터를 처리하는 방법을 알아보세요';
	@override late final _TranslationsTermOfServicePrivacyPolicyKo privacyPolicy = _TranslationsTermOfServicePrivacyPolicyKo._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServiceKo termsOfService = _TranslationsTermOfServiceTermsOfServiceKo._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyKo cookiePolicy = _TranslationsTermOfServiceCookiePolicyKo._(_root);
}

// Path: onboarding
class _TranslationsOnboardingKo implements TranslationsOnboardingEn {
	_TranslationsOnboardingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1Ko step1 = _TranslationsOnboardingStep1Ko._(_root);
	@override late final _TranslationsOnboardingStep2Ko step2 = _TranslationsOnboardingStep2Ko._(_root);
	@override late final _TranslationsOnboardingLoadingKo loading = _TranslationsOnboardingLoadingKo._(_root);
}

// Path: faq
class _TranslationsFaqKo implements TranslationsFaqEn {
	_TranslationsFaqKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자주 묻는 질문';
	@override late final _TranslationsFaqQuestionsKo questions = _TranslationsFaqQuestionsKo._(_root);
}

// Path: splash
class _TranslationsSplashKo implements TranslationsSplashEn {
	_TranslationsSplashKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Ko screen1 = _TranslationsSplashScreen1Ko._(_root);
	@override late final _TranslationsSplashScreen2Ko screen2 = _TranslationsSplashScreen2Ko._(_root);
}

// Path: profile
class _TranslationsProfileKo implements TranslationsProfileEn {
	_TranslationsProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필';
	@override String get freeVersion => '무료 버전';
	@override String get error => '오류';
	@override String get passive => '비활성';
	@override late final _TranslationsProfileSectionsKo sections = _TranslationsProfileSectionsKo._(_root);
	@override late final _TranslationsProfileMenuKo menu = _TranslationsProfileMenuKo._(_root);
	@override String get manage => '관리';
	@override late final _TranslationsProfileLogoutDialogKo logoutDialog = _TranslationsProfileLogoutDialogKo._(_root);
}

// Path: home
class _TranslationsHomeKo implements TranslationsHomeEn {
	_TranslationsHomeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get premium => '프리미엄!';
	@override String get seeMore => '더 보기';
	@override String get pickUpWhereYouLeftOff => '이어서 계속하기';
	@override String get premiumSection => '프리미엄';
	@override String get history => '기록';
	@override String get librarySection => '라이브러리';
	@override String get libraryDescription => '저장한 단어가 여기에 표시됩니다.';
	@override String get upgradeToPremium => '프리미엄으로 업그레이드';
	@override String get unlimitedStories => '무제한 이야기와 광고 없는 경험';
	@override late final _TranslationsHomePremiumPlanKo premiumPlan = _TranslationsHomePremiumPlanKo._(_root);
}

// Path: allStories
class _TranslationsAllStoriesKo implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모든 이야기';
	@override String get noStoriesFound => '이야기를 찾을 수 없습니다';
	@override String get selectFilter => '필터 선택';
	@override String get category => '카테고리';
	@override String get categorySubtitle => '읽고 싶은 카테고리를 선택하세요';
	@override String get apply => '적용';
}

// Path: stories
class _TranslationsStoriesKo implements TranslationsStoriesEn {
	_TranslationsStoriesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이야기';
	@override String get popularStories => '인기 이야기';
	@override String get recommendForYou => '추천 이야기';
	@override String get allStories => '모든 이야기';
	@override String get seeAll => '전체 보기';
}

// Path: library
class _TranslationsLibraryKo implements TranslationsLibraryEn {
	_TranslationsLibraryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '라이브러리';
	@override String wordCount({required Object count}) => '${count} 단어';
	@override String get popularWords => '인기 단어';
	@override String get allWords => '모든 단어';
	@override String get searchWord => '단어 검색';
	@override String get searchHint => '단어를 입력하세요…';
}

// Path: bottomNav
class _TranslationsBottomNavKo implements TranslationsBottomNavEn {
	_TranslationsBottomNavKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get home => '홈';
	@override String get stories => '이야기';
	@override String get library => '라이브러리';
	@override String get profile => '프로필';
}

// Path: dayStreak
class _TranslationsDayStreakKo implements TranslationsDayStreakEn {
	_TranslationsDayStreakKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '연속 기록!';
	@override late final _TranslationsDayStreakDaysKo days = _TranslationsDayStreakDaysKo._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsKo implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get introduction => '소개';
	@override String get saved => '저장됨';
	@override String get removed => '삭제됨';
	@override String get storyAddedToLibrary => '이야기가 라이브러리에 추가되었습니다.';
	@override String get storyRemovedFromLibrary => '이야기가 라이브러리에서 삭제되었습니다.';
	@override String get wordAddedToLibrary => '단어가 라이브러리에 추가되었습니다. 실행 취소';
	@override String get successfully => '성공적으로';
	@override String get ratingSubmitted => '평가가 성공적으로 제출되었습니다.';
	@override String get warning => '경고';
	@override String get fillAllFields => '모든 필드를 입력해 주세요.';
	@override String get messageSent => '메시지가 성공적으로 전송되었습니다.';
	@override String get translate => '번역';
	@override String get speak => '말하기';
	@override String get like => '좋아요';
	@override String get save => '저장';
	@override String get feedback => '피드백';
	@override String get rating => '평가';
	@override String get stop => '중지';
	@override String get start => '시작';
	@override String get listen => '듣기';
	@override String get translation => '번역';
	@override String get translating => '번역 중...';
	@override String get saveToLibrary => '라이브러리에 저장';
	@override String get rateThisStory => '이 이야기 평가하기';
	@override String get enjoyStory => '이 이야기를 얼마나 즐기셨나요?';
	@override String get send => '보내기';
	@override String get subject => '제목';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsKo feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsKo._(_root);
}

// Path: share
class _TranslationsShareKo implements TranslationsShareEn {
	_TranslationsShareKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '친구와 공유';
	@override String get mainTitle => '평화를 공유하세요';
	@override String get descriptionPart1 => '친구를 초대하여 함께 호흡하세요.\n초대할 때마다 두 분 모두 ';
	@override String get descriptionPart2 => '1주일 프리미엄';
	@override String get descriptionPart3 => '을 받습니다';
	@override String get yourReferralCode => '귀하의 추천 코드';
	@override String get codeCopied => '코드 복사됨!';
	@override String get copyCode => '코드 복사';
	@override String get inviteDescription => '친구를 초대하고\n함께 배워요';
	@override String get linkCopied => '복사됨';
	@override String get linkCopiedMessage => '링크가 클립보드에 복사되었습니다.';
}

// Path: editProfile
class _TranslationsEditProfileKo implements TranslationsEditProfileEn {
	_TranslationsEditProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 편집';
	@override String get changePhoto => '아바타 변경';
	@override String get learnLanguage => '학습 언어 선택';
	@override String get fullName => '성명';
	@override String get email => '이메일';
	@override String get age => '나이';
	@override String get save => '저장';
	@override String get saving => '저장 중...';
	@override String get updateSuccess => '프로필이 성공적으로 업데이트되었습니다';
	@override String get updateError => '프로필 업데이트 중 오류가 발생했습니다';
	@override String get deleteAccount => '계정 삭제';
}

// Path: notifications
class _TranslationsNotificationsKo implements TranslationsNotificationsEn {
	_TranslationsNotificationsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '알림';
	@override String get emptyTitle => '아직 알림 없음';
	@override String get emptyDescription => '학습 여정에 대한 중요한 업데이트가 있을 때 알려드리겠습니다.';
	@override String get premiumBannerTitle => '프리미엄 혜택을\n놓치지 마세요!';
	@override String get premiumBannerDescription => '프리미엄 구독자로서 기회를 잡으세요.';
}

// Path: auth
class _TranslationsAuthKo implements TranslationsAuthEn {
	_TranslationsAuthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => '게스트로 계속';
	@override String signInFailed({required Object error}) => '로그인 실패: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeKo implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8자리 코드 입력';
	@override String get applying => '코드 적용 중...';
	@override late final _TranslationsReferralCodeSuccessKo success = _TranslationsReferralCodeSuccessKo._(_root);
	@override late final _TranslationsReferralCodeErrorsKo errors = _TranslationsReferralCodeErrorsKo._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsKo implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get english => '영어';
	@override String get german => '독일어';
	@override String get italian => '이탈리아어';
	@override String get french => '프랑스어';
	@override String get japanese => '일본어';
	@override String get spanish => '스페인어';
	@override String get russian => '러시아어';
	@override String get turkish => '터키어';
	@override String get korean => '한국어';
	@override String get hindi => '힌디어';
	@override String get portuguese => '포르투갈어';
}

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyKo implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인정보 처리방침';
	@override String get lastUpdated => '최종 업데이트: 2025';
	@override String get intro => 'Lingola Stories Kids는 아동 개인정보 보호를 핵심 원칙으로 채택합니다.';
	@override String get section1Title => '1. 수집하는 정보';
	@override String get section1sub1Title => '1.1 사용자가 제공하는 데이터';
	@override String get section1sub1Body => '닉네임 또는 프로필 이름.\n이메일 주소 (부모 계정 및 지원용).\n연령 정보 (콘텐츠 적합성).\n언어 수준, 읽은 이야기, 학습한 단어.\n\n참고: 건강 분석에 절대 사용되지 않습니다.';
	@override String get section1sub2Title => '1.2 자동으로 수집되는 데이터';
	@override String get section1sub2Body => '기기 유형, OS, 앱 성능 데이터. 정확한 위치는 수집하지 않습니다.';
	@override String get section2Title => '2. 데이터 처리 목적';
	@override String get section2Body => '귀하의 데이터는 다음 목적으로만 사용됩니다:\n\n- 안전하고 연령 적합한 콘텐츠.\n- 학습 경험 개인화.\n- 앱 성능 향상.\n- 법적 의무 이행.';
	@override String get section3Title => '3. 데이터 보존 및 삭제';
	@override String get section3Body => '계정이 활성 상태인 동안 저장됩니다. 지원 기록은 최대 12개월. 계정 삭제 시 데이터는 되돌릴 수 없이 삭제됩니다.';
	@override String get section4Title => '4. 사용자 권리';
	@override String get section4Body => 'GDPR/KVKK에 따라 부모는 데이터 접근, 수정, 삭제를 요청할 수 있습니다. support@fly-work.com으로 문의하세요.';
	@override String get section5Title => '5. 아동 개인정보 보호';
	@override String get section5Body => '6세 이상 사용자를 위해 설계되었습니다. 13세 미만은 부모 동의가 필요합니다.';
	@override String get section6Title => '6. 연락처';
	@override String get section6Body => '📩 문의: support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServiceKo implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServiceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이용약관';
	@override String get lastUpdated => '최종 업데이트: 2025';
	@override String get intro => '본 이용약관은 Lingola Stories Kids 앱의 사용을 규정합니다.';
	@override String get disclaimer => '면책 조항: Lingola Stories Kids는 교육 도구로, 공식 교육이나 학문적 인증을 제공하지 않습니다.';
	@override String get section1Title => '1. 서비스 범위';
	@override String get section1Body => '앱은 어린이를 위한 스토리 기반 학습을 제공합니다:\n\n- AI 기반 스토리 및 추천.\n- 연령 및 수준 기반 읽기.\n- 어휘 및 발음 지원.';
	@override String get section2Title => '2. 사용 조건 및 연령';
	@override String get section2Body => '최소 6세 이상.\n18세 미만은 부모 감독 하에 이용 권장.\n계정 정보는 정확하고 최신 상태 유지.';
	@override String get section3Title => '3. 금지된 사용';
	@override String get section3Body => '무단 복사, 리버스 엔지니어링, 무단 상업적 사용은 엄격히 금지됩니다.';
	@override String get section4Title => '4. 구독 및 결제';
	@override String get section4Body => '프리미엄 기능은 App Store 및 Google Play 정책을 따릅니다.';
	@override String get section5Title => '5. 지적 재산권';
	@override String get section5Body => '모든 콘텐츠는 Lingola Stories Kids에 속합니다.';
	@override String get section6Title => '6. 책임 제한';
	@override String get section6Body => '앱은 현 상태로 제공됩니다.';
	@override String get section7Title => '7. 준거법';
	@override String get section7Body => '터키 공화국 법률 적용. 이스탄불 중앙 법원이 관할합니다.';
	@override String get section8Title => '8. 연락처';
	@override String get section8Body => '📩 문의: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyKo implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '쿠키 정책';
	@override String get lastUpdated => '최종 업데이트: 2025';
	@override String get intro => '이 정책은 앱 사용 시 어떤 디지털 기술이 사용되는지 설명합니다.';
	@override String get important => '중요: 아동 개인정보 보호가 핵심 원칙입니다. 6세 이상 사용자를 위해 설계되었습니다.';
	@override String get section1Title => '1. 쿠키란 무엇인가?';
	@override String get section1Body => '쿠키 및 유사 기술은 앱이 올바르게 작동하도록 돕는 작은 디지털 구성 요소입니다. 귀하를 직접 식별하지 않습니다.';
	@override String get section2Title => '2. 어떤 기술을 사용합니까?';
	@override String get section2Body => '필수 기술: 세션 관리 및 보안.\n\n성능 및 분석: 읽힌 스토리 파악, 익명 데이터.\n\n개인화: 언어 설정과 읽기 수준 기억.';
	@override String get section3Title => '3. 왜 사용합니까?';
	@override String get section3Body => '- 안전하고 원활한 앱 실행.\n- 더 유창한 읽기 경험.\n- 설정 기억.\n- 향후 기능 파악.';
	@override String get section4Title => '4. 제3자 기술';
	@override String get section4Body => '제3자 파트너와의 최소 데이터 사용 원칙 적용.';
	@override String get section5Title => '5. 제어 및 관리';
	@override String get section5Body => '부모는 기기 설정을 통해 이러한 기술을 제한할 수 있습니다.';
	@override String get section6Title => '6. 연락처';
	@override String get section6Body => '📩 문의: support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1Ko implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '어떤 언어를\n배우고 싶으신가요?';
	@override String get subtitle => '배우고 싶은 언어를\n선택해 주세요.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2Ko implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '어떤 종류의 이야기를\n좋아하세요?';
	@override String get subtitle => '선호도를 알려주세요.';
	@override late final _TranslationsOnboardingStep2CategoriesKo categories = _TranslationsOnboardingStep2CategoriesKo._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingKo implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => '개인 계정을\n';
	@override String get titlePart2 => '만들고 있습니다';
	@override String get subtitle => '멋진 이야기를 만들고 있어요';
	@override String get optimization => '최적화 중';
}

// Path: faq.questions
class _TranslationsFaqQuestionsKo implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Ko q1 = _TranslationsFaqQuestionsQ1Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ2Ko q2 = _TranslationsFaqQuestionsQ2Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ3Ko q3 = _TranslationsFaqQuestionsQ3Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ4Ko q4 = _TranslationsFaqQuestionsQ4Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ5Ko q5 = _TranslationsFaqQuestionsQ5Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ6Ko q6 = _TranslationsFaqQuestionsQ6Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ7Ko q7 = _TranslationsFaqQuestionsQ7Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ8Ko q8 = _TranslationsFaqQuestionsQ8Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ9Ko q9 = _TranslationsFaqQuestionsQ9Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ10Ko q10 = _TranslationsFaqQuestionsQ10Ko._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Ko implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이야기로 영어 배우기';
	@override String get description => '지루한 암기는 없습니다. 짧고 재미있는 이야기를 통해 자연스러운 흐름에서 단어를 발견하세요.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Ko implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '인공지능이 당신을 안내합니다';
	@override String get description => '당신이 어려워하는 단어를 추적하고, 그 의미를 설명하며, 당신의 수준에 맞는 새로운 이야기를 제안합니다.';
}

// Path: profile.sections
class _TranslationsProfileSectionsKo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => '계정 설정';
	@override String get general => '일반';
}

// Path: profile.menu
class _TranslationsProfileMenuKo implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get editProfile => '프로필 편집';
	@override String get notifications => '알림';
	@override String get premium => '프리미엄';
	@override String get appLanguage => '앱 언어';
	@override String get shareWithFriends => '친구와 공유';
	@override String get enterInviteCode => '초대 코드 입력';
	@override String get rateUs => '평가하기';
	@override String get faq => '자주 묻는 질문';
	@override String get logout => '로그아웃';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogKo implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '로그아웃하려고 합니다';
	@override String get message => '또 만나요! 호흡 운동을 계속 추적하겠습니다.';
	@override String get logoutButton => '로그아웃';
	@override String get cancelButton => '취소';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanKo implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프리미엄 플랜';
	@override String get description => 'AI 챗봇 잠금 해제 &\n모든 프리미엄 기능 받기';
	@override String get button => '프리미엄 받기';
	@override late final _TranslationsHomePremiumPlanDialogKo dialog = _TranslationsHomePremiumPlanDialogKo._(_root);
}

// Path: dayStreak.days
class _TranslationsDayStreakDaysKo implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get su => '일';
	@override String get mo => '월';
	@override String get tu => '화';
	@override String get we => '수';
	@override String get th => '목';
	@override String get fr => '금';
	@override String get sa => '토';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsKo implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bugReport => '버그 신고';
	@override String get storyContent => '스토리 내용';
	@override String get audioIssue => '오디오 문제';
	@override String get suggestion => '제안';
	@override String get other => '기타';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessKo implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '성공!';
	@override String get message => '추천 코드가 성공적으로 적용되었습니다! 귀하와 친구 분 모두 1주일 프리미엄을 받았습니다.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsKo implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeKo missingCode = _TranslationsReferralCodeErrorsMissingCodeKo._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatKo invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatKo._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedKo alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedKo._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralKo selfReferral = _TranslationsReferralCodeErrorsSelfReferralKo._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundKo codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundKo._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorKo genericError = _TranslationsReferralCodeErrorsGenericErrorKo._(_root);
}

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesKo implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 우주 모험';
	@override String get magic => '🦄 마법의 세계';
	@override String get detectives => '🕵️ 꼬마 탐정';
	@override String get animals => '🐾 사랑스러운 친구들';
	@override String get dinosaurs => '🦖 공룡 시대';
	@override String get superhero => '🦸 슈퍼히어로';
	@override String get underwater => '🌊 수중 왕국';
	@override String get fairytale => '🏰 왕자와 공주 동화';
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Ko implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '이 앱은 무엇을 하나요?';
	@override String get answer => '아이들이 재미있는 이야기로 영어를 배우도록 돕습니다. 단어는 문맥 속에서 나타나고, 의미는 직관적으로 학습되며 반복을 통해 강화됩니다.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Ko implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '인공지능은 여기서 무엇을 하나요?';
	@override String get answer => '아이들이 어떤 단어에 어려움을 겪고 있는지 분석하고, 간단한 설명을 제공하며, 수준에 맞는 새로운 이야기를 제안합니다. 콘텐츠는 아이의 학습 속도에 맞춰 조정됩니다.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Ko implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '하루에 얼마나 사용해야 하나요?';
	@override String get answer => '하루에 5~10분이면 충분합니다. 짧은 이야기라도 정기적으로 사용하면 효과적입니다.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Ko implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '이야기는 어떤 연령대에 적합한가요?';
	@override String get answer => '이야기는 아이들의 나이와 수준에 맞춰 제공됩니다. 앱은 처음에 수준을 결정하고 진행에 따라 난이도를 조정합니다.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Ko implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '모르는 단어는 어떻게 배우나요?';
	@override String get answer => '모르는 단어에 터치하면 의미, 간단한 설명, 올바른 발음이 표시됩니다. 이렇게 단어는 읽히고 들립니다.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Ko implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '인터넷 연결이 필요합니까?';
	@override String get answer => '이전에 다운로드한 이야기는 오프라인에서 읽을 수 있습니다. 새로운 콘텐츠와 업데이트에는 인터넷 연결이 필요합니다.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Ko implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '앱은 무료인가요?';
	@override String get answer => '기본 이야기에는 무료로 접근할 수 있습니다. 더 많은 이야기, 고급 개인화 및 추가 기능은 프리미엄 패키지에서 제공됩니다.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Ko implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '이야기는 음성으로 들을 수 있나요?';
	@override String get answer => '네. 이야기는 올바른 발음으로 들을 수 있습니다. 이를 통해 읽기와 듣기 능력이 함께 향상됩니다.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Ko implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '학습한 단어는 추적할 수 있나요?';
	@override String get answer => '네. 학습한 단어는 기록되며 정기적으로 복습될 예정입니다. 이를 통해 망각을 줄일 수 있습니다.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Ko implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '어느 정도의 시간 안에 발전이 보이나요?';
	@override String get answer => '정기적으로 사용하면 짧은 시간 안에 발전이 보입니다. 독서 습관이 생기면 어휘력과 이해력이 향상됩니다.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogKo implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기능 사용 불가';
	@override String get message => '이 기능은 현재 사용할 수 없습니다.';
	@override String get button => '확인';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeKo implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '코드 필요';
	@override String get message => '계속하려면 추천 코드를 입력하세요.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatKo implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '잘못된 형식';
	@override String get message => '추천 코드는 정확히 8자여야 합니다.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedKo implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이미 사용됨';
	@override String get message => '이미 추천 코드를 사용했습니다. 각 사용자는 하나의 코드만 사용할 수 있습니다.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralKo implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '잘못된 코드';
	@override String get message => '자신의 초대 코드는 사용할 수 없습니다. 친구의 코드를 사용해 주세요.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundKo implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '코드를 찾을 수 없음';
	@override String get message => '입력한 추천 코드가 존재하지 않습니다. 확인 후 다시 시도해 주세요.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorKo implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오류';
	@override String get message => '추천 코드를 적용하는 중 오류가 발생했습니다. 다시 시도해 주세요.';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => '환영합니다 ${name}',
			'welcome2' => ({required Object appName}) => '${appName}에 오신 것을 환영합니다',
			'get_started' => '시작하기',
			'next' => '다음',
			'back' => '뒤로',
			'skip' => '건너뛰기',
			'kContinue' => '계속',
			'logintext' => '모든 단어가 이야기되기를 기다리는 새로운 모험입니다.',
			'termOfService.text1' => 'swipe에 가입하면 당사의 ',
			'termOfService.link1' => '서비스 약관',
			'termOfService.text2' => '에 동의하는 것입니다. ',
			'termOfService.link2' => '개인정보 처리방침',
			'termOfService.text3' => ' 및 ',
			'termOfService.link3' => '쿠키 정책',
			'termOfService.text4' => '에서 데이터를 처리하는 방법을 알아보세요',
			'termOfService.privacyPolicy.title' => '개인정보 처리방침',
			'termOfService.privacyPolicy.lastUpdated' => '최종 업데이트: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids는 아동 개인정보 보호를 핵심 원칙으로 채택합니다.',
			'termOfService.privacyPolicy.section1Title' => '1. 수집하는 정보',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 사용자가 제공하는 데이터',
			'termOfService.privacyPolicy.section1sub1Body' => '닉네임 또는 프로필 이름.\n이메일 주소 (부모 계정 및 지원용).\n연령 정보 (콘텐츠 적합성).\n언어 수준, 읽은 이야기, 학습한 단어.\n\n참고: 건강 분석에 절대 사용되지 않습니다.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 자동으로 수집되는 데이터',
			'termOfService.privacyPolicy.section1sub2Body' => '기기 유형, OS, 앱 성능 데이터. 정확한 위치는 수집하지 않습니다.',
			'termOfService.privacyPolicy.section2Title' => '2. 데이터 처리 목적',
			'termOfService.privacyPolicy.section2Body' => '귀하의 데이터는 다음 목적으로만 사용됩니다:\n\n- 안전하고 연령 적합한 콘텐츠.\n- 학습 경험 개인화.\n- 앱 성능 향상.\n- 법적 의무 이행.',
			'termOfService.privacyPolicy.section3Title' => '3. 데이터 보존 및 삭제',
			'termOfService.privacyPolicy.section3Body' => '계정이 활성 상태인 동안 저장됩니다. 지원 기록은 최대 12개월. 계정 삭제 시 데이터는 되돌릴 수 없이 삭제됩니다.',
			'termOfService.privacyPolicy.section4Title' => '4. 사용자 권리',
			'termOfService.privacyPolicy.section4Body' => 'GDPR/KVKK에 따라 부모는 데이터 접근, 수정, 삭제를 요청할 수 있습니다. support@fly-work.com으로 문의하세요.',
			'termOfService.privacyPolicy.section5Title' => '5. 아동 개인정보 보호',
			'termOfService.privacyPolicy.section5Body' => '6세 이상 사용자를 위해 설계되었습니다. 13세 미만은 부모 동의가 필요합니다.',
			'termOfService.privacyPolicy.section6Title' => '6. 연락처',
			'termOfService.privacyPolicy.section6Body' => '📩 문의: support@fly-work.com',
			'termOfService.termsOfService.title' => '이용약관',
			'termOfService.termsOfService.lastUpdated' => '최종 업데이트: 2025',
			'termOfService.termsOfService.intro' => '본 이용약관은 Lingola Stories Kids 앱의 사용을 규정합니다.',
			'termOfService.termsOfService.disclaimer' => '면책 조항: Lingola Stories Kids는 교육 도구로, 공식 교육이나 학문적 인증을 제공하지 않습니다.',
			'termOfService.termsOfService.section1Title' => '1. 서비스 범위',
			'termOfService.termsOfService.section1Body' => '앱은 어린이를 위한 스토리 기반 학습을 제공합니다:\n\n- AI 기반 스토리 및 추천.\n- 연령 및 수준 기반 읽기.\n- 어휘 및 발음 지원.',
			'termOfService.termsOfService.section2Title' => '2. 사용 조건 및 연령',
			'termOfService.termsOfService.section2Body' => '최소 6세 이상.\n18세 미만은 부모 감독 하에 이용 권장.\n계정 정보는 정확하고 최신 상태 유지.',
			'termOfService.termsOfService.section3Title' => '3. 금지된 사용',
			'termOfService.termsOfService.section3Body' => '무단 복사, 리버스 엔지니어링, 무단 상업적 사용은 엄격히 금지됩니다.',
			'termOfService.termsOfService.section4Title' => '4. 구독 및 결제',
			'termOfService.termsOfService.section4Body' => '프리미엄 기능은 App Store 및 Google Play 정책을 따릅니다.',
			'termOfService.termsOfService.section5Title' => '5. 지적 재산권',
			'termOfService.termsOfService.section5Body' => '모든 콘텐츠는 Lingola Stories Kids에 속합니다.',
			'termOfService.termsOfService.section6Title' => '6. 책임 제한',
			'termOfService.termsOfService.section6Body' => '앱은 현 상태로 제공됩니다.',
			'termOfService.termsOfService.section7Title' => '7. 준거법',
			'termOfService.termsOfService.section7Body' => '터키 공화국 법률 적용. 이스탄불 중앙 법원이 관할합니다.',
			'termOfService.termsOfService.section8Title' => '8. 연락처',
			'termOfService.termsOfService.section8Body' => '📩 문의: support@fly-work.com',
			'termOfService.cookiePolicy.title' => '쿠키 정책',
			'termOfService.cookiePolicy.lastUpdated' => '최종 업데이트: 2025',
			'termOfService.cookiePolicy.intro' => '이 정책은 앱 사용 시 어떤 디지털 기술이 사용되는지 설명합니다.',
			'termOfService.cookiePolicy.important' => '중요: 아동 개인정보 보호가 핵심 원칙입니다. 6세 이상 사용자를 위해 설계되었습니다.',
			'termOfService.cookiePolicy.section1Title' => '1. 쿠키란 무엇인가?',
			'termOfService.cookiePolicy.section1Body' => '쿠키 및 유사 기술은 앱이 올바르게 작동하도록 돕는 작은 디지털 구성 요소입니다. 귀하를 직접 식별하지 않습니다.',
			'termOfService.cookiePolicy.section2Title' => '2. 어떤 기술을 사용합니까?',
			'termOfService.cookiePolicy.section2Body' => '필수 기술: 세션 관리 및 보안.\n\n성능 및 분석: 읽힌 스토리 파악, 익명 데이터.\n\n개인화: 언어 설정과 읽기 수준 기억.',
			'termOfService.cookiePolicy.section3Title' => '3. 왜 사용합니까?',
			'termOfService.cookiePolicy.section3Body' => '- 안전하고 원활한 앱 실행.\n- 더 유창한 읽기 경험.\n- 설정 기억.\n- 향후 기능 파악.',
			'termOfService.cookiePolicy.section4Title' => '4. 제3자 기술',
			'termOfService.cookiePolicy.section4Body' => '제3자 파트너와의 최소 데이터 사용 원칙 적용.',
			'termOfService.cookiePolicy.section5Title' => '5. 제어 및 관리',
			'termOfService.cookiePolicy.section5Body' => '부모는 기기 설정을 통해 이러한 기술을 제한할 수 있습니다.',
			'termOfService.cookiePolicy.section6Title' => '6. 연락처',
			'termOfService.cookiePolicy.section6Body' => '📩 문의: support@fly-work.com',
			'cookies' => '쿠키 정책',
			'privacy' => '개인정보 처리방침',
			'onboarding.step1.title' => '어떤 언어를\n배우고 싶으신가요?',
			'onboarding.step1.subtitle' => '배우고 싶은 언어를\n선택해 주세요.',
			'onboarding.step2.title' => '어떤 종류의 이야기를\n좋아하세요?',
			'onboarding.step2.subtitle' => '선호도를 알려주세요.',
			'onboarding.step2.categories.space' => '🚀 우주 모험',
			'onboarding.step2.categories.magic' => '🦄 마법의 세계',
			'onboarding.step2.categories.detectives' => '🕵️ 꼬마 탐정',
			'onboarding.step2.categories.animals' => '🐾 사랑스러운 친구들',
			'onboarding.step2.categories.dinosaurs' => '🦖 공룡 시대',
			'onboarding.step2.categories.superhero' => '🦸 슈퍼히어로',
			'onboarding.step2.categories.underwater' => '🌊 수중 왕국',
			'onboarding.step2.categories.fairytale' => '🏰 왕자와 공주 동화',
			'onboarding.loading.titlePart1' => '개인 계정을\n',
			'onboarding.loading.titlePart2' => '만들고 있습니다',
			'onboarding.loading.subtitle' => '멋진 이야기를 만들고 있어요',
			'onboarding.loading.optimization' => '최적화 중',
			'pressBackAgainToExit' => '종료하려면 뒤로 버튼을 다시 누르세요',
			'faq.title' => '자주 묻는 질문',
			'faq.questions.q1.question' => '이 앱은 무엇을 하나요?',
			'faq.questions.q1.answer' => '아이들이 재미있는 이야기로 영어를 배우도록 돕습니다. 단어는 문맥 속에서 나타나고, 의미는 직관적으로 학습되며 반복을 통해 강화됩니다.',
			'faq.questions.q2.question' => '인공지능은 여기서 무엇을 하나요?',
			'faq.questions.q2.answer' => '아이들이 어떤 단어에 어려움을 겪고 있는지 분석하고, 간단한 설명을 제공하며, 수준에 맞는 새로운 이야기를 제안합니다. 콘텐츠는 아이의 학습 속도에 맞춰 조정됩니다.',
			'faq.questions.q3.question' => '하루에 얼마나 사용해야 하나요?',
			'faq.questions.q3.answer' => '하루에 5~10분이면 충분합니다. 짧은 이야기라도 정기적으로 사용하면 효과적입니다.',
			'faq.questions.q4.question' => '이야기는 어떤 연령대에 적합한가요?',
			'faq.questions.q4.answer' => '이야기는 아이들의 나이와 수준에 맞춰 제공됩니다. 앱은 처음에 수준을 결정하고 진행에 따라 난이도를 조정합니다.',
			'faq.questions.q5.question' => '모르는 단어는 어떻게 배우나요?',
			'faq.questions.q5.answer' => '모르는 단어에 터치하면 의미, 간단한 설명, 올바른 발음이 표시됩니다. 이렇게 단어는 읽히고 들립니다.',
			'faq.questions.q6.question' => '인터넷 연결이 필요합니까?',
			'faq.questions.q6.answer' => '이전에 다운로드한 이야기는 오프라인에서 읽을 수 있습니다. 새로운 콘텐츠와 업데이트에는 인터넷 연결이 필요합니다.',
			'faq.questions.q7.question' => '앱은 무료인가요?',
			'faq.questions.q7.answer' => '기본 이야기에는 무료로 접근할 수 있습니다. 더 많은 이야기, 고급 개인화 및 추가 기능은 프리미엄 패키지에서 제공됩니다.',
			'faq.questions.q8.question' => '이야기는 음성으로 들을 수 있나요?',
			'faq.questions.q8.answer' => '네. 이야기는 올바른 발음으로 들을 수 있습니다. 이를 통해 읽기와 듣기 능력이 함께 향상됩니다.',
			'faq.questions.q9.question' => '학습한 단어는 추적할 수 있나요?',
			'faq.questions.q9.answer' => '네. 학습한 단어는 기록되며 정기적으로 복습될 예정입니다. 이를 통해 망각을 줄일 수 있습니다.',
			'faq.questions.q10.question' => '어느 정도의 시간 안에 발전이 보이나요?',
			'faq.questions.q10.answer' => '정기적으로 사용하면 짧은 시간 안에 발전이 보입니다. 독서 습관이 생기면 어휘력과 이해력이 향상됩니다.',
			'good_morning' => '좋은 아침입니다',
			'good_afternoon' => '좋은 오후입니다',
			'good_evening' => '좋은 저녁입니다',
			'splash.screen1.title' => '이야기로 영어 배우기',
			'splash.screen1.description' => '지루한 암기는 없습니다. 짧고 재미있는 이야기를 통해 자연스러운 흐름에서 단어를 발견하세요.',
			'splash.screen2.title' => '인공지능이 당신을 안내합니다',
			'splash.screen2.description' => '당신이 어려워하는 단어를 추적하고, 그 의미를 설명하며, 당신의 수준에 맞는 새로운 이야기를 제안합니다.',
			'profile.title' => '프로필',
			'profile.freeVersion' => '무료 버전',
			'profile.error' => '오류',
			'profile.passive' => '비활성',
			'profile.sections.accountSettings' => '계정 설정',
			'profile.sections.general' => '일반',
			'profile.menu.editProfile' => '프로필 편집',
			'profile.menu.notifications' => '알림',
			'profile.menu.premium' => '프리미엄',
			'profile.menu.appLanguage' => '앱 언어',
			'profile.menu.shareWithFriends' => '친구와 공유',
			'profile.menu.enterInviteCode' => '초대 코드 입력',
			'profile.menu.rateUs' => '평가하기',
			'profile.menu.faq' => '자주 묻는 질문',
			'profile.menu.logout' => '로그아웃',
			'profile.manage' => '관리',
			'profile.logoutDialog.title' => '로그아웃하려고 합니다',
			'profile.logoutDialog.message' => '또 만나요! 호흡 운동을 계속 추적하겠습니다.',
			'profile.logoutDialog.logoutButton' => '로그아웃',
			'profile.logoutDialog.cancelButton' => '취소',
			'home.premium' => '프리미엄!',
			'home.seeMore' => '더 보기',
			'home.pickUpWhereYouLeftOff' => '이어서 계속하기',
			'home.premiumSection' => '프리미엄',
			'home.history' => '기록',
			'home.librarySection' => '라이브러리',
			'home.libraryDescription' => '저장한 단어가 여기에 표시됩니다.',
			'home.upgradeToPremium' => '프리미엄으로 업그레이드',
			'home.unlimitedStories' => '무제한 이야기와 광고 없는 경험',
			'home.premiumPlan.title' => '프리미엄 플랜',
			'home.premiumPlan.description' => 'AI 챗봇 잠금 해제 &\n모든 프리미엄 기능 받기',
			'home.premiumPlan.button' => '프리미엄 받기',
			'home.premiumPlan.dialog.title' => '기능 사용 불가',
			'home.premiumPlan.dialog.message' => '이 기능은 현재 사용할 수 없습니다.',
			'home.premiumPlan.dialog.button' => '확인',
			'allStories.title' => '모든 이야기',
			'allStories.noStoriesFound' => '이야기를 찾을 수 없습니다',
			'allStories.selectFilter' => '필터 선택',
			'allStories.category' => '카테고리',
			'allStories.categorySubtitle' => '읽고 싶은 카테고리를 선택하세요',
			'allStories.apply' => '적용',
			'stories.title' => '이야기',
			'stories.popularStories' => '인기 이야기',
			'stories.recommendForYou' => '추천 이야기',
			'stories.allStories' => '모든 이야기',
			'stories.seeAll' => '전체 보기',
			'library.title' => '라이브러리',
			'library.wordCount' => ({required Object count}) => '${count} 단어',
			'library.popularWords' => '인기 단어',
			'library.allWords' => '모든 단어',
			'library.searchWord' => '단어 검색',
			'library.searchHint' => '단어를 입력하세요…',
			'bottomNav.home' => '홈',
			'bottomNav.stories' => '이야기',
			'bottomNav.library' => '라이브러리',
			'bottomNav.profile' => '프로필',
			'dayStreak.title' => '연속 기록!',
			'dayStreak.days.su' => '일',
			'dayStreak.days.mo' => '월',
			'dayStreak.days.tu' => '화',
			'dayStreak.days.we' => '수',
			'dayStreak.days.th' => '목',
			'dayStreak.days.fr' => '금',
			'dayStreak.days.sa' => '토',
			'storyDetails.introduction' => '소개',
			'storyDetails.saved' => '저장됨',
			'storyDetails.removed' => '삭제됨',
			'storyDetails.storyAddedToLibrary' => '이야기가 라이브러리에 추가되었습니다.',
			'storyDetails.storyRemovedFromLibrary' => '이야기가 라이브러리에서 삭제되었습니다.',
			'storyDetails.wordAddedToLibrary' => '단어가 라이브러리에 추가되었습니다. 실행 취소',
			'storyDetails.successfully' => '성공적으로',
			'storyDetails.ratingSubmitted' => '평가가 성공적으로 제출되었습니다.',
			'storyDetails.warning' => '경고',
			'storyDetails.fillAllFields' => '모든 필드를 입력해 주세요.',
			'storyDetails.messageSent' => '메시지가 성공적으로 전송되었습니다.',
			'storyDetails.translate' => '번역',
			'storyDetails.speak' => '말하기',
			'storyDetails.like' => '좋아요',
			'storyDetails.save' => '저장',
			'storyDetails.feedback' => '피드백',
			'storyDetails.rating' => '평가',
			'storyDetails.stop' => '중지',
			'storyDetails.start' => '시작',
			'storyDetails.listen' => '듣기',
			'storyDetails.translation' => '번역',
			'storyDetails.translating' => '번역 중...',
			'storyDetails.saveToLibrary' => '라이브러리에 저장',
			'storyDetails.rateThisStory' => '이 이야기 평가하기',
			'storyDetails.enjoyStory' => '이 이야기를 얼마나 즐기셨나요?',
			'storyDetails.send' => '보내기',
			'storyDetails.subject' => '제목',
			'storyDetails.feedbackSubjects.bugReport' => '버그 신고',
			'storyDetails.feedbackSubjects.storyContent' => '스토리 내용',
			'storyDetails.feedbackSubjects.audioIssue' => '오디오 문제',
			'storyDetails.feedbackSubjects.suggestion' => '제안',
			'storyDetails.feedbackSubjects.other' => '기타',
			'share.title' => '친구와 공유',
			'share.mainTitle' => '평화를 공유하세요',
			'share.descriptionPart1' => '친구를 초대하여 함께 호흡하세요.\n초대할 때마다 두 분 모두 ',
			'share.descriptionPart2' => '1주일 프리미엄',
			'share.descriptionPart3' => '을 받습니다',
			'share.yourReferralCode' => '귀하의 추천 코드',
			'share.codeCopied' => '코드 복사됨!',
			'share.copyCode' => '코드 복사',
			'share.inviteDescription' => '친구를 초대하고\n함께 배워요',
			'share.linkCopied' => '복사됨',
			'share.linkCopiedMessage' => '링크가 클립보드에 복사되었습니다.',
			'delete' => '삭제',
			'editProfile.title' => '프로필 편집',
			'editProfile.changePhoto' => '아바타 변경',
			'editProfile.learnLanguage' => '학습 언어 선택',
			'editProfile.fullName' => '성명',
			'editProfile.email' => '이메일',
			'editProfile.age' => '나이',
			'editProfile.save' => '저장',
			'editProfile.saving' => '저장 중...',
			'editProfile.updateSuccess' => '프로필이 성공적으로 업데이트되었습니다',
			'editProfile.updateError' => '프로필 업데이트 중 오류가 발생했습니다',
			'editProfile.deleteAccount' => '계정 삭제',
			'notifications.title' => '알림',
			'notifications.emptyTitle' => '아직 알림 없음',
			'notifications.emptyDescription' => '학습 여정에 대한 중요한 업데이트가 있을 때 알려드리겠습니다.',
			'notifications.premiumBannerTitle' => '프리미엄 혜택을\n놓치지 마세요!',
			'notifications.premiumBannerDescription' => '프리미엄 구독자로서 기회를 잡으세요.',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => '게스트로 계속',
			'auth.signInFailed' => ({required Object error}) => '로그인 실패: ${error}',
			'cancel' => '취소',
			'deleteAccount' => '계정 삭제',
			'deleteDialogTitle' => '계정을 삭제하시겠습니까?',
			'deleteDialogDescription' => '이 작업은 되돌릴 수 없으며 모든 운동 기록과 데이터가 영구적으로 삭제됩니다.',
			'deleteError' => '계정을 삭제하는 중 오류가 발생했습니다. 다시 시도해 주세요.',
			'enterInvitationCode' => '초대 코드 입력',
			'inviteFriends' => '친구에게 받은 초대 코드를 입력하세요.\n지정된 필드에 입력하세요',
			'twoDaysPremium' => '7일 프리미엄',
			'advantage' => '\n혜택을 누리세요.',
			'send' => '보내기',
			'referralCode.inputPlaceholder' => '8자리 코드 입력',
			'referralCode.applying' => '코드 적용 중...',
			'referralCode.success.title' => '성공!',
			'referralCode.success.message' => '추천 코드가 성공적으로 적용되었습니다! 귀하와 친구 분 모두 1주일 프리미엄을 받았습니다.',
			'referralCode.errors.missingCode.title' => '코드 필요',
			'referralCode.errors.missingCode.message' => '계속하려면 추천 코드를 입력하세요.',
			'referralCode.errors.invalidFormat.title' => '잘못된 형식',
			'referralCode.errors.invalidFormat.message' => '추천 코드는 정확히 8자여야 합니다.',
			'referralCode.errors.alreadyUsed.title' => '이미 사용됨',
			'referralCode.errors.alreadyUsed.message' => '이미 추천 코드를 사용했습니다. 각 사용자는 하나의 코드만 사용할 수 있습니다.',
			'referralCode.errors.selfReferral.title' => '잘못된 코드',
			'referralCode.errors.selfReferral.message' => '자신의 초대 코드는 사용할 수 없습니다. 친구의 코드를 사용해 주세요.',
			'referralCode.errors.codeNotFound.title' => '코드를 찾을 수 없음',
			'referralCode.errors.codeNotFound.message' => '입력한 추천 코드가 존재하지 않습니다. 확인 후 다시 시도해 주세요.',
			'referralCode.errors.genericError.title' => '오류',
			'referralCode.errors.genericError.message' => '추천 코드를 적용하는 중 오류가 발생했습니다. 다시 시도해 주세요.',
			'deleteNotifications' => '알림 삭제',
			'deleteNotificationsDescription' => '모든 알림을 삭제하시겠습니까?\n이 작업은 되돌릴 수 없으며 실행 취소할 수 없습니다.',
			'deleteAll' => '모두 삭제',
			'appLanguage' => '앱 언어',
			'selectLanguage' => '선호하는 언어를 선택하세요',
			'save' => '저장',
			'languageOptions.english' => '영어',
			'languageOptions.german' => '독일어',
			'languageOptions.italian' => '이탈리아어',
			'languageOptions.french' => '프랑스어',
			'languageOptions.japanese' => '일본어',
			'languageOptions.spanish' => '스페인어',
			'languageOptions.russian' => '러시아어',
			'languageOptions.turkish' => '터키어',
			'languageOptions.korean' => '한국어',
			'languageOptions.hindi' => '힌디어',
			'languageOptions.portuguese' => '포르투갈어',
			_ => null,
		};
	}
}
