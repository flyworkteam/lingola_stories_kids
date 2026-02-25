///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Welcome $name'
	String welcome({required Object name}) => 'Welcome ${name}';

	/// en: 'Welcome to $appName'
	String welcome2({required Object appName}) => 'Welcome to ${appName}';

	/// en: 'Get Started'
	String get get_started => 'Get Started';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Continue'
	String get kContinue => 'Continue';

	/// en: 'Where every word is a new adventure waiting to be told.'
	String get logintext => 'Where every word is a new adventure waiting to be told.';

	late final TranslationsTermOfServiceEn termOfService = TranslationsTermOfServiceEn._(_root);

	/// en: 'Cookies Policy'
	String get cookies => 'Cookies Policy';

	/// en: 'Privacy Policy'
	String get privacy => 'Privacy Policy';

	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);

	/// en: 'Press back again to exit'
	String get pressBackAgainToExit => 'Press back again to exit';

	late final TranslationsFaqEn faq = TranslationsFaqEn._(_root);

	/// en: 'Good Morning'
	String get good_morning => 'Good Morning';

	/// en: 'Good Afternoon'
	String get good_afternoon => 'Good Afternoon';

	/// en: 'Good Evening'
	String get good_evening => 'Good Evening';

	late final TranslationsSplashEn splash = TranslationsSplashEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsAllStoriesEn allStories = TranslationsAllStoriesEn._(_root);
	late final TranslationsStoriesEn stories = TranslationsStoriesEn._(_root);
	late final TranslationsLibraryEn library = TranslationsLibraryEn._(_root);
	late final TranslationsBottomNavEn bottomNav = TranslationsBottomNavEn._(_root);
	late final TranslationsDayStreakEn dayStreak = TranslationsDayStreakEn._(_root);
	late final TranslationsStoryDetailsEn storyDetails = TranslationsStoryDetailsEn._(_root);
	late final TranslationsShareEn share = TranslationsShareEn._(_root);
	late final TranslationsEditProfileEn editProfile = TranslationsEditProfileEn._(_root);
	late final TranslationsNotificationsEn notifications = TranslationsNotificationsEn._(_root);
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Delete Account'
	String get deleteAccount => 'Delete Account';

	/// en: 'Are you sure you want to delete your account?'
	String get deleteDialogTitle => 'Are you sure you want to delete your account?';

	/// en: 'This action is irreversible and will permanently delete all your exercise history and data.'
	String get deleteDialogDescription => 'This action is irreversible and will permanently delete all your exercise history and data.';

	/// en: 'An error occurred while deleting your account. Please try again.'
	String get deleteError => 'An error occurred while deleting your account. Please try again.';

	/// en: 'Enter Invitation Code'
	String get enterInvitationCode => 'Enter Invitation Code';

	/// en: 'Enter the invitation code you received from a friend. Type it into the designated field'
	String get inviteFriends => 'Enter the invitation code you received from a friend.\nType it into the designated field';

	/// en: '7-Day Premium'
	String get twoDaysPremium => '7-Day Premium';

	/// en: ' to enjoy its benefits.'
	String get advantage => '\nto enjoy its benefits.';

	/// en: 'Send'
	String get send => 'Send';

	late final TranslationsReferralCodeEn referralCode = TranslationsReferralCodeEn._(_root);

	/// en: 'Delete Notifications'
	String get deleteNotifications => 'Delete Notifications';

	/// en: 'Are you sure you want to delete all your notifications? This action is irreversible and cannot be undone.'
	String get deleteNotificationsDescription => 'Are you sure you want to delete all \nyour notifications? This action is irreversible and cannot be undone.';

	/// en: 'Delete All'
	String get deleteAll => 'Delete All';

	/// en: 'App Language'
	String get appLanguage => 'App Language';

	/// en: 'Select Your Preferred Language'
	String get selectLanguage => 'Select Your Preferred Language';

	/// en: 'Save'
	String get save => 'Save';

	late final TranslationsLanguageOptionsEn languageOptions = TranslationsLanguageOptionsEn._(_root);
}

// Path: termOfService
class TranslationsTermOfServiceEn {
	TranslationsTermOfServiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'By signing up for swipe, you agree to our '
	String get text1 => 'By signing up for swipe, you agree to our ';

	/// en: 'Terms of Service'
	String get link1 => 'Terms of Service';

	/// en: '. Learn how we process your data in our '
	String get text2 => '. Learn how we process your data in our ';

	/// en: 'Privacy Policy'
	String get link2 => 'Privacy Policy';

	/// en: ' and '
	String get text3 => ' and ';

	/// en: 'Cookies Policy'
	String get link3 => 'Cookies Policy';

	/// en: ''
	String get text4 => '';

	late final TranslationsTermOfServicePrivacyPolicyEn privacyPolicy = TranslationsTermOfServicePrivacyPolicyEn._(_root);
	late final TranslationsTermOfServiceTermsOfServiceEn termsOfService = TranslationsTermOfServiceTermsOfServiceEn._(_root);
	late final TranslationsTermOfServiceCookiePolicyEn cookiePolicy = TranslationsTermOfServiceCookiePolicyEn._(_root);
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsOnboardingStep1En step1 = TranslationsOnboardingStep1En._(_root);
	late final TranslationsOnboardingStep2En step2 = TranslationsOnboardingStep2En._(_root);
	late final TranslationsOnboardingLoadingEn loading = TranslationsOnboardingLoadingEn._(_root);
}

// Path: faq
class TranslationsFaqEn {
	TranslationsFaqEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Frequently Asked Questions'
	String get title => 'Frequently Asked Questions';

	late final TranslationsFaqQuestionsEn questions = TranslationsFaqQuestionsEn._(_root);
}

// Path: splash
class TranslationsSplashEn {
	TranslationsSplashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSplashScreen1En screen1 = TranslationsSplashScreen1En._(_root);
	late final TranslationsSplashScreen2En screen2 = TranslationsSplashScreen2En._(_root);
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get title => 'Profile';

	/// en: 'Free Version'
	String get freeVersion => 'Free Version';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Passive'
	String get passive => 'Passive';

	late final TranslationsProfileSectionsEn sections = TranslationsProfileSectionsEn._(_root);
	late final TranslationsProfileMenuEn menu = TranslationsProfileMenuEn._(_root);

	/// en: 'MANAGE'
	String get manage => 'MANAGE';

	late final TranslationsProfileLogoutDialogEn logoutDialog = TranslationsProfileLogoutDialogEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Premium!'
	String get premium => 'Premium!';

	/// en: 'See More'
	String get seeMore => 'See More';

	/// en: 'Pick up where you left off'
	String get pickUpWhereYouLeftOff => 'Pick up where you left off';

	/// en: 'Premium'
	String get premiumSection => 'Premium';

	/// en: 'History'
	String get history => 'History';

	/// en: 'Library'
	String get librarySection => 'Library';

	/// en: 'The words you have saved will appear here.'
	String get libraryDescription => 'The words you have saved will appear here.';

	/// en: 'Upgrade to Premium'
	String get upgradeToPremium => 'Upgrade to Premium';

	/// en: 'Unlimited stories and an ad-free experience'
	String get unlimitedStories => 'Unlimited stories and an ad-free experience';

	late final TranslationsHomePremiumPlanEn premiumPlan = TranslationsHomePremiumPlanEn._(_root);
}

// Path: allStories
class TranslationsAllStoriesEn {
	TranslationsAllStoriesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'All Stories'
	String get title => 'All Stories';

	/// en: 'No stories found'
	String get noStoriesFound => 'No stories found';

	/// en: 'Select Filter'
	String get selectFilter => 'Select Filter';

	/// en: 'Category'
	String get category => 'Category';

	/// en: 'Please select the category you wish to read'
	String get categorySubtitle => 'Please select the category you wish to read';

	/// en: 'Apply'
	String get apply => 'Apply';
}

// Path: stories
class TranslationsStoriesEn {
	TranslationsStoriesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stories'
	String get title => 'Stories';

	/// en: 'Popular Stories'
	String get popularStories => 'Popular Stories';

	/// en: 'Recommend For You'
	String get recommendForYou => 'Recommend For You';

	/// en: 'All Stories'
	String get allStories => 'All Stories';

	/// en: 'See all'
	String get seeAll => 'See all';
}

// Path: library
class TranslationsLibraryEn {
	TranslationsLibraryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Library'
	String get title => 'Library';

	/// en: '${count} Words'
	String wordCount({required Object count}) => '${count} Words';

	/// en: 'Popular Words'
	String get popularWords => 'Popular Words';

	/// en: 'All Words'
	String get allWords => 'All Words';

	/// en: 'Search Word'
	String get searchWord => 'Search Word';

	/// en: 'Please enter word…'
	String get searchHint => 'Please enter word…';
}

// Path: bottomNav
class TranslationsBottomNavEn {
	TranslationsBottomNavEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Stories'
	String get stories => 'Stories';

	/// en: 'Library'
	String get library => 'Library';

	/// en: 'Profile'
	String get profile => 'Profile';
}

// Path: dayStreak
class TranslationsDayStreakEn {
	TranslationsDayStreakEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Day streak!'
	String get title => 'Day streak!';

	late final TranslationsDayStreakDaysEn days = TranslationsDayStreakDaysEn._(_root);
}

// Path: storyDetails
class TranslationsStoryDetailsEn {
	TranslationsStoryDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Introduction'
	String get introduction => 'Introduction';

	/// en: 'Saved'
	String get saved => 'Saved';

	/// en: 'Removed'
	String get removed => 'Removed';

	/// en: 'The story has been added to your library.'
	String get storyAddedToLibrary => 'The story has been added to your library.';

	/// en: 'The story has been removed from library.'
	String get storyRemovedFromLibrary => 'The story has been removed from library.';

	/// en: 'The word has been added to the library. Undo'
	String get wordAddedToLibrary => 'The word has been added to the library. Undo';

	/// en: 'Successfully'
	String get successfully => 'Successfully';

	/// en: 'Your rating has been submitted successfully.'
	String get ratingSubmitted => 'Your rating has been submitted successfully.';

	/// en: 'Warning'
	String get warning => 'Warning';

	/// en: 'Please fill in all fields.'
	String get fillAllFields => 'Please fill in all fields.';

	/// en: 'Your message has been sent successfully.'
	String get messageSent => 'Your message has been sent successfully.';

	/// en: 'Translate'
	String get translate => 'Translate';

	/// en: 'Speak'
	String get speak => 'Speak';

	/// en: 'Like'
	String get like => 'Like';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Feedback'
	String get feedback => 'Feedback';

	/// en: 'Rating'
	String get rating => 'Rating';

	/// en: 'Stop'
	String get stop => 'Stop';

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'Listen'
	String get listen => 'Listen';

	/// en: 'Translation'
	String get translation => 'Translation';

	/// en: 'Translating...'
	String get translating => 'Translating...';

	/// en: 'Save to Library'
	String get saveToLibrary => 'Save to Library';

	/// en: 'Rate this Story'
	String get rateThisStory => 'Rate this Story';

	/// en: 'How much did you enjoy this story?'
	String get enjoyStory => 'How much did you enjoy this story?';

	/// en: 'Send'
	String get send => 'Send';

	/// en: 'Subject'
	String get subject => 'Subject';

	late final TranslationsStoryDetailsFeedbackSubjectsEn feedbackSubjects = TranslationsStoryDetailsFeedbackSubjectsEn._(_root);
}

// Path: share
class TranslationsShareEn {
	TranslationsShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share with Friends'
	String get title => 'Share with Friends';

	/// en: 'Share the Peace'
	String get mainTitle => 'Share the Peace';

	/// en: 'Invite your friends to breathe together. For every invite, you both get '
	String get descriptionPart1 => 'Invite your friends to breathe together.\nFor every invite, you both get ';

	/// en: '1 week Premium'
	String get descriptionPart2 => '1 week Premium';

	/// en: ''
	String get descriptionPart3 => '';

	/// en: 'YOUR REFERRAL CODE'
	String get yourReferralCode => 'YOUR REFERRAL CODE';

	/// en: 'Code copied!'
	String get codeCopied => 'Code copied!';

	/// en: 'Copy Code'
	String get copyCode => 'Copy Code';

	/// en: 'Invite your friends and enjoy learning together'
	String get inviteDescription => 'Invite your friends and enjoy\nlearning together';

	/// en: 'Copied'
	String get linkCopied => 'Copied';

	/// en: 'The link has been copied to the clipboard.'
	String get linkCopiedMessage => 'The link has been copied to the clipboard.';
}

// Path: editProfile
class TranslationsEditProfileEn {
	TranslationsEditProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	/// en: 'Change Avatar'
	String get changePhoto => 'Change Avatar';

	/// en: 'Select Learn Language'
	String get learnLanguage => 'Select Learn Language';

	/// en: 'Full Name'
	String get fullName => 'Full Name';

	/// en: 'E-mail'
	String get email => 'E-mail';

	/// en: 'Age'
	String get age => 'Age';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Saving...'
	String get saving => 'Saving...';

	/// en: 'Profile updated successfully'
	String get updateSuccess => 'Profile updated successfully';

	/// en: 'An error occurred while updating profile'
	String get updateError => 'An error occurred while updating profile';

	/// en: 'Delete Account'
	String get deleteAccount => 'Delete Account';
}

// Path: notifications
class TranslationsNotificationsEn {
	TranslationsNotificationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Notifications'
	String get title => 'Notifications';

	/// en: 'No notifications yet'
	String get emptyTitle => 'No notifications yet';

	/// en: 'We'll notify you when there's an important update about your learning journey.'
	String get emptyDescription => 'We\'ll notify you when there\'s an important update about your learning journey.';

	/// en: 'Don't miss out on Premium benefits!'
	String get premiumBannerTitle => 'Don\'t miss out on\nPremium benefits!';

	/// en: 'Grab the opportunities as a Premium subscriber.'
	String get premiumBannerDescription => 'Grab the opportunities as a Premium subscriber.';
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Google'
	String get google => 'Continue with Google';

	/// en: 'Continue with Facebook'
	String get facebook => 'Continue with Facebook';

	/// en: 'Continue with Apple'
	String get apple => 'Continue with Apple';

	/// en: 'Continue as Guest'
	String get guest => 'Continue as Guest';

	/// en: 'Sign-in failed: $error'
	String signInFailed({required Object error}) => 'Sign-in failed: ${error}';
}

// Path: referralCode
class TranslationsReferralCodeEn {
	TranslationsReferralCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter 8-character code'
	String get inputPlaceholder => 'Enter 8-character code';

	/// en: 'Applying code...'
	String get applying => 'Applying code...';

	late final TranslationsReferralCodeSuccessEn success = TranslationsReferralCodeSuccessEn._(_root);
	late final TranslationsReferralCodeErrorsEn errors = TranslationsReferralCodeErrorsEn._(_root);
}

// Path: languageOptions
class TranslationsLanguageOptionsEn {
	TranslationsLanguageOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'English'
	String get english => 'English';

	/// en: 'German'
	String get german => 'German';

	/// en: 'Italian'
	String get italian => 'Italian';

	/// en: 'French'
	String get french => 'French';

	/// en: 'Japanese'
	String get japanese => 'Japanese';

	/// en: 'Spanish'
	String get spanish => 'Spanish';

	/// en: 'Russian'
	String get russian => 'Russian';

	/// en: 'Turkish'
	String get turkish => 'Turkish';

	/// en: 'Korean'
	String get korean => 'Korean';

	/// en: 'Hindi'
	String get hindi => 'Hindi';

	/// en: 'Portuguese'
	String get portuguese => 'Portuguese';
}

// Path: termOfService.privacyPolicy
class TranslationsTermOfServicePrivacyPolicyEn {
	TranslationsTermOfServicePrivacyPolicyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Privacy Policy'
	String get title => 'Privacy Policy';

	/// en: 'Last Updated: 2025'
	String get lastUpdated => 'Last Updated: 2025';

	/// en: 'Lingola Stories Kids adopts child privacy and data security as a core principle. This policy explains how your personal data is collected, stored, and protected.'
	String get intro => 'Lingola Stories Kids adopts child privacy and data security as a core principle. This policy explains how your personal data is collected, stored, and protected.';

	/// en: '1. COLLECTED INFORMATION'
	String get section1Title => '1. COLLECTED INFORMATION';

	/// en: '1.1 Data Provided by User'
	String get section1sub1Title => '1.1 Data Provided by User';

	/// en: '• Nickname or profile name. • Email address (for parent account and support). • Age information (for content suitability). • Language level, stories read, and learned words. Note: This data is never used for health or psychological analysis.'
	String get section1sub1Body => '• Nickname or profile name.\n• Email address (for parent account and support).\n• Age information (for content suitability).\n• Language level, stories read, and learned words.\n\nNote: This data is never used for health or psychological analysis.';

	/// en: '1.2 Automatically Collected Data'
	String get section1sub2Title => '1.2 Automatically Collected Data';

	/// en: 'Device type, operating system, and app performance data are collected. Precise location data is NOT collected; only approximate location (country/city) is gathered.'
	String get section1sub2Body => 'Device type, operating system, and app performance data are collected. Precise location data is NOT collected; only approximate location (country/city) is gathered.';

	/// en: '2. PURPOSES OF DATA PROCESSING'
	String get section2Title => '2. PURPOSES OF DATA PROCESSING';

	/// en: 'Your data is used solely to: • Provide safe and age-appropriate content. • Personalize the learning experience. • Improve app performance. • Fulfill legal obligations.'
	String get section2Body => 'Your data is used solely to:\n\n• Provide safe and age-appropriate content.\n• Personalize the learning experience.\n• Improve app performance.\n• Fulfill legal obligations.';

	/// en: '3. DATA RETENTION AND DELETION'
	String get section3Title => '3. DATA RETENTION AND DELETION';

	/// en: 'Data is stored as long as your account is active or as required by law. Support records are kept for a maximum of 12 months. When an account is deleted, personal data is irreversibly erased.'
	String get section3Body => 'Data is stored as long as your account is active or as required by law. Support records are kept for a maximum of 12 months. When an account is deleted, personal data is irreversibly erased.';

	/// en: '4. USER RIGHTS'
	String get section4Title => '4. USER RIGHTS';

	/// en: 'Under GDPR and LPPD (KVKK), parents have the right to request access, correction, deletion, or portability of data. Please send requests to support@fly-work.com.'
	String get section4Body => 'Under GDPR and LPPD (KVKK), parents have the right to request access, correction, deletion, or portability of data. Please send requests to support@fly-work.com.';

	/// en: '5. CHILDREN'S PRIVACY'
	String get section5Title => '5. CHILDREN\'S PRIVACY';

	/// en: 'Lingola Stories Kids is designed for ages 6+. Parental consent is required for users under 13. Accounts with false age declarations will be closed immediately.'
	String get section5Body => 'Lingola Stories Kids is designed for ages 6+. Parental consent is required for users under 13. Accounts with false age declarations will be closed immediately.';

	/// en: '6. CONTACT'
	String get section6Title => '6. CONTACT';

	/// en: '📩 For inquiries: support@fly-work.com'
	String get section6Body => '📩 For inquiries: support@fly-work.com';
}

// Path: termOfService.termsOfService
class TranslationsTermOfServiceTermsOfServiceEn {
	TranslationsTermOfServiceTermsOfServiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Terms of Service'
	String get title => 'Terms of Service';

	/// en: 'Last Updated: 2025'
	String get lastUpdated => 'Last Updated: 2025';

	/// en: 'These Terms of Service govern the use of the Lingola Stories Kids application. By using the app, you agree to these terms.'
	String get intro => 'These Terms of Service govern the use of the Lingola Stories Kids application. By using the app, you agree to these terms.';

	/// en: 'Disclaimer: Lingola Stories Kids is an educational tool. It does not provide official education, academic certification, or professional language training services.'
	String get disclaimer => 'Disclaimer: Lingola Stories Kids is an educational tool. It does not provide official education, academic certification, or professional language training services.';

	/// en: '1. SCOPE OF SERVICE'
	String get section1Title => '1. SCOPE OF SERVICE';

	/// en: 'The app provides a story-based learning experience for children: • AI-powered stories and recommendations. • Age and level-based reading experience. • Vocabulary and pronunciation support.'
	String get section1Body => 'The app provides a story-based learning experience for children:\n\n• AI-powered stories and recommendations.\n• Age and level-based reading experience.\n• Vocabulary and pronunciation support.';

	/// en: '2. CONDITIONS OF USE & AGE'
	String get section2Title => '2. CONDITIONS OF USE & AGE';

	/// en: '• Users must be at least 6 years old. • Users under 18 are encouraged to use the app under parental supervision. • Account information must be accurate and up-to-date.'
	String get section2Body => '• Users must be at least 6 years old.\n• Users under 18 are encouraged to use the app under parental supervision.\n• Account information must be accurate and up-to-date.';

	/// en: '3. PROHIBITED USES'
	String get section3Title => '3. PROHIBITED USES';

	/// en: 'Unauthorized copying of content, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.'
	String get section3Body => 'Unauthorized copying of content, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.';

	/// en: '4. SUBSCRIPTIONS AND PAYMENTS'
	String get section4Title => '4. SUBSCRIPTIONS AND PAYMENTS';

	/// en: 'Premium features are subject to App Store and Google Play policies. Subscription cancellations and refunds are managed via the respective store settings.'
	String get section4Body => 'Premium features are subject to App Store and Google Play policies. Subscription cancellations and refunds are managed via the respective store settings.';

	/// en: '5. INTELLECTUAL PROPERTY'
	String get section5Title => '5. INTELLECTUAL PROPERTY';

	/// en: 'All content, including design, software, stories, and AI outputs, belongs to Lingola Stories Kids and may not be reproduced without permission.'
	String get section5Body => 'All content, including design, software, stories, and AI outputs, belongs to Lingola Stories Kids and may not be reproduced without permission.';

	/// en: '6. LIMITATION OF LIABILITY'
	String get section6Title => '6. LIMITATION OF LIABILITY';

	/// en: 'The app is provided "as is". Lingola Stories Kids is not liable for individual outcomes of content use or technical issues caused by devices.'
	String get section6Body => 'The app is provided "as is". Lingola Stories Kids is not liable for individual outcomes of content use or technical issues caused by devices.';

	/// en: '7. GOVERNING LAW'
	String get section7Title => '7. GOVERNING LAW';

	/// en: 'These terms are governed by the laws of the Republic of Turkey. Istanbul Central Courts shall have jurisdiction over any disputes.'
	String get section7Body => 'These terms are governed by the laws of the Republic of Turkey. Istanbul Central Courts shall have jurisdiction over any disputes.';

	/// en: '8. CONTACT'
	String get section8Title => '8. CONTACT';

	/// en: '📩 For inquiries: support@fly-work.com'
	String get section8Body => '📩 For inquiries: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class TranslationsTermOfServiceCookiePolicyEn {
	TranslationsTermOfServiceCookiePolicyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cookie Policy'
	String get title => 'Cookie Policy';

	/// en: 'Last Updated: 2025'
	String get lastUpdated => 'Last Updated: 2025';

	/// en: 'Welcome to Lingola Stories Kids! This policy explains what digital helpers are used and for what purposes they are utilized when you use the app.'
	String get intro => 'Welcome to Lingola Stories Kids! This policy explains what digital helpers are used and for what purposes they are utilized when you use the app.';

	/// en: 'IMPORTANT: Lingola Stories Kids adopts child privacy as a core principle. Our app is designed for users aged 6 and above.'
	String get important => 'IMPORTANT: Lingola Stories Kids adopts child privacy as a core principle. Our app is designed for users aged 6 and above.';

	/// en: '1. WHAT ARE COOKIES AND SIMILAR TECHNOLOGIES?'
	String get section1Title => '1. WHAT ARE COOKIES AND SIMILAR TECHNOLOGIES?';

	/// en: 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. These technologies do not directly identify you and do not create individual profiles for advertising.'
	String get section1Body => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. These technologies do not directly identify you and do not create individual profiles for advertising.';

	/// en: '2. WHICH TECHNOLOGIES DO WE USE?'
	String get section2Title => '2. WHICH TECHNOLOGIES DO WE USE?';

	/// en: 'Strictly Necessary Technologies Required for session management and security controls. The app may not function properly without these components. Performance and Analytics Helps us understand which stories are read and which areas need improvement. Data is evaluated anonymously. Personalization Remembers settings like language preference and reading level to provide a tailored experience for the child.'
	String get section2Body => 'Strictly Necessary Technologies\nRequired for session management and security controls. The app may not function properly without these components.\n\nPerformance and Analytics\nHelps us understand which stories are read and which areas need improvement. Data is evaluated anonymously.\n\nPersonalization\nRemembers settings like language preference and reading level to provide a tailored experience for the child.';

	/// en: '3. WHY DO WE USE THESE TECHNOLOGIES?'
	String get section3Title => '3. WHY DO WE USE THESE TECHNOLOGIES?';

	/// en: '• To ensure the app runs safely and smoothly. • To make the reading experience more fluid. • To remember repetitive settings. • To identify features for future development.'
	String get section3Body => '• To ensure the app runs safely and smoothly.\n• To make the reading experience more fluid.\n• To remember repetitive settings.\n• To identify features for future development.';

	/// en: '4. THIRD-PARTY TECHNOLOGIES'
	String get section4Title => '4. THIRD-PARTY TECHNOLOGIES';

	/// en: 'We apply the "minimum data usage" principle when working with third-party partners. These providers are subject to their own privacy policies.'
	String get section4Body => 'We apply the "minimum data usage" principle when working with third-party partners. These providers are subject to their own privacy policies.';

	/// en: '5. CONTROL AND MANAGEMENT'
	String get section5Title => '5. CONTROL AND MANAGEMENT';

	/// en: 'Parents can limit the use of these technologies via device settings. However, disabling necessary technologies may affect functionality.'
	String get section5Body => 'Parents can limit the use of these technologies via device settings. However, disabling necessary technologies may affect functionality.';

	/// en: '6. CONTACT'
	String get section6Title => '6. CONTACT';

	/// en: '📩 For inquiries: support@fly-work.com'
	String get section6Body => '📩 For inquiries: support@fly-work.com';
}

// Path: onboarding.step1
class TranslationsOnboardingStep1En {
	TranslationsOnboardingStep1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Which language would you like to learn?'
	String get title => 'Which language would you\nlike to learn?';

	/// en: 'Please select the language or languages you wish to learn.'
	String get subtitle => 'Please select the language or languages\nyou wish to learn.';
}

// Path: onboarding.step2
class TranslationsOnboardingStep2En {
	TranslationsOnboardingStep2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What kind of stories do you like?'
	String get title => 'What kind of stories\ndo you like?';

	/// en: 'Please indicate your preference.'
	String get subtitle => 'Please indicate your preference.';

	late final TranslationsOnboardingStep2CategoriesEn categories = TranslationsOnboardingStep2CategoriesEn._(_root);
}

// Path: onboarding.loading
class TranslationsOnboardingLoadingEn {
	TranslationsOnboardingLoadingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Personal Account is '
	String get titlePart1 => 'Your Personal Account is\n';

	/// en: 'Being Created'
	String get titlePart2 => 'Being Created';

	/// en: 'We create wonderful stories for you'
	String get subtitle => 'We create wonderful stories for you';

	/// en: 'Optimization'
	String get optimization => 'Optimization';
}

// Path: faq.questions
class TranslationsFaqQuestionsEn {
	TranslationsFaqQuestionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFaqQuestionsQ1En q1 = TranslationsFaqQuestionsQ1En._(_root);
	late final TranslationsFaqQuestionsQ2En q2 = TranslationsFaqQuestionsQ2En._(_root);
	late final TranslationsFaqQuestionsQ3En q3 = TranslationsFaqQuestionsQ3En._(_root);
	late final TranslationsFaqQuestionsQ4En q4 = TranslationsFaqQuestionsQ4En._(_root);
	late final TranslationsFaqQuestionsQ5En q5 = TranslationsFaqQuestionsQ5En._(_root);
	late final TranslationsFaqQuestionsQ6En q6 = TranslationsFaqQuestionsQ6En._(_root);
	late final TranslationsFaqQuestionsQ7En q7 = TranslationsFaqQuestionsQ7En._(_root);
	late final TranslationsFaqQuestionsQ8En q8 = TranslationsFaqQuestionsQ8En._(_root);
	late final TranslationsFaqQuestionsQ9En q9 = TranslationsFaqQuestionsQ9En._(_root);
	late final TranslationsFaqQuestionsQ10En q10 = TranslationsFaqQuestionsQ10En._(_root);
}

// Path: splash.screen1
class TranslationsSplashScreen1En {
	TranslationsSplashScreen1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Learn English with Stories'
	String get title => 'Learn English with Stories';

	/// en: 'No boring memorisation. Discover words in their natural flow through short and fun stories.'
	String get description => 'No boring memorisation. Discover words in their natural flow through short and fun stories.';
}

// Path: splash.screen2
class TranslationsSplashScreen2En {
	TranslationsSplashScreen2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Artificial Intelligence Guides You'
	String get title => 'Artificial Intelligence Guides You';

	/// en: 'It tracks the words you struggle with, explains their meaning, and suggests new stories tailored to your level.'
	String get description => 'It tracks the words you struggle with, explains their meaning, and suggests new stories tailored to your level.';
}

// Path: profile.sections
class TranslationsProfileSectionsEn {
	TranslationsProfileSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'ACCOUNT SETTINGS'
	String get accountSettings => 'ACCOUNT SETTINGS';

	/// en: 'GENERAL'
	String get general => 'GENERAL';
}

// Path: profile.menu
class TranslationsProfileMenuEn {
	TranslationsProfileMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'Notifications'
	String get notifications => 'Notifications';

	/// en: 'Premium'
	String get premium => 'Premium';

	/// en: 'App Language'
	String get appLanguage => 'App Language';

	/// en: 'Share with Friends'
	String get shareWithFriends => 'Share with Friends';

	/// en: 'Enter Invite Code'
	String get enterInviteCode => 'Enter Invite Code';

	/// en: 'Rate Us'
	String get rateUs => 'Rate Us';

	/// en: 'FAQ'
	String get faq => 'FAQ';

	/// en: 'Logout'
	String get logout => 'Logout';
}

// Path: profile.logoutDialog
class TranslationsProfileLogoutDialogEn {
	TranslationsProfileLogoutDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You are about to log out'
	String get title => 'You are about to log out';

	/// en: 'See you again! We will keep tracking your breath exercises.'
	String get message => 'See you again! We will keep tracking your breath exercises.';

	/// en: 'Log Out'
	String get logoutButton => 'Log Out';

	/// en: 'Cancel'
	String get cancelButton => 'Cancel';
}

// Path: home.premiumPlan
class TranslationsHomePremiumPlanEn {
	TranslationsHomePremiumPlanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Premium Plan'
	String get title => 'Premium Plan';

	/// en: 'Unlock your ai chatbot & get all premium features'
	String get description => 'Unlock your ai chatbot & get \nall premium features';

	/// en: 'Get Premium'
	String get button => 'Get Premium';

	late final TranslationsHomePremiumPlanDialogEn dialog = TranslationsHomePremiumPlanDialogEn._(_root);
}

// Path: dayStreak.days
class TranslationsDayStreakDaysEn {
	TranslationsDayStreakDaysEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Su'
	String get su => 'Su';

	/// en: 'Mo'
	String get mo => 'Mo';

	/// en: 'Tu'
	String get tu => 'Tu';

	/// en: 'We'
	String get we => 'We';

	/// en: 'Th'
	String get th => 'Th';

	/// en: 'Fr'
	String get fr => 'Fr';

	/// en: 'Sa'
	String get sa => 'Sa';
}

// Path: storyDetails.feedbackSubjects
class TranslationsStoryDetailsFeedbackSubjectsEn {
	TranslationsStoryDetailsFeedbackSubjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bug Report'
	String get bugReport => 'Bug Report';

	/// en: 'Story Content'
	String get storyContent => 'Story Content';

	/// en: 'Audio Issue'
	String get audioIssue => 'Audio Issue';

	/// en: 'Suggestion'
	String get suggestion => 'Suggestion';

	/// en: 'Other'
	String get other => 'Other';
}

// Path: referralCode.success
class TranslationsReferralCodeSuccessEn {
	TranslationsReferralCodeSuccessEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Success!'
	String get title => 'Success!';

	/// en: 'Referral code applied successfully! Both you and your friend received 1 week of premium.'
	String get message => 'Referral code applied successfully! Both you and your friend received 1 week of premium.';
}

// Path: referralCode.errors
class TranslationsReferralCodeErrorsEn {
	TranslationsReferralCodeErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsReferralCodeErrorsMissingCodeEn missingCode = TranslationsReferralCodeErrorsMissingCodeEn._(_root);
	late final TranslationsReferralCodeErrorsInvalidFormatEn invalidFormat = TranslationsReferralCodeErrorsInvalidFormatEn._(_root);
	late final TranslationsReferralCodeErrorsAlreadyUsedEn alreadyUsed = TranslationsReferralCodeErrorsAlreadyUsedEn._(_root);
	late final TranslationsReferralCodeErrorsSelfReferralEn selfReferral = TranslationsReferralCodeErrorsSelfReferralEn._(_root);
	late final TranslationsReferralCodeErrorsCodeNotFoundEn codeNotFound = TranslationsReferralCodeErrorsCodeNotFoundEn._(_root);
	late final TranslationsReferralCodeErrorsGenericErrorEn genericError = TranslationsReferralCodeErrorsGenericErrorEn._(_root);
}

// Path: onboarding.step2.categories
class TranslationsOnboardingStep2CategoriesEn {
	TranslationsOnboardingStep2CategoriesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '🚀 Space Adventures'
	String get space => '🚀 Space Adventures';

	/// en: '🦄 Magical Worlds'
	String get magic => '🦄 Magical Worlds';

	/// en: '🕵️ Little Detectives'
	String get detectives => '🕵️ Little Detectives';

	/// en: '🐾 Lovable Friends'
	String get animals => '🐾 Lovable Friends';

	/// en: '🦖 The Age of Dinosaurs'
	String get dinosaurs => '🦖 The Age of Dinosaurs';

	/// en: '🦸 Superheroes'
	String get superhero => '🦸 Superheroes';

	/// en: '🌊 Underwater Kingdom'
	String get underwater => '🌊 Underwater Kingdom';

	/// en: '🏰 Prince and Princess Fairy Tales'
	String get fairytale => '🏰 Prince and Princess Fairy Tales';
}

// Path: faq.questions.q1
class TranslationsFaqQuestionsQ1En {
	TranslationsFaqQuestionsQ1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is the purpose of this app?'
	String get question => 'What is the purpose of this app?';

	/// en: 'It helps children learn English through fun stories. Words are seen in context, learned intuitively, and reinforced through repetition.'
	String get answer => 'It helps children learn English through fun stories. Words are seen in context, learned intuitively, and reinforced through repetition.';
}

// Path: faq.questions.q2
class TranslationsFaqQuestionsQ2En {
	TranslationsFaqQuestionsQ2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What does the AI do here?'
	String get question => 'What does the AI do here?';

	/// en: 'It analyzes which words the child struggles with, provides simple explanations, and suggests new stories appropriate for their level. The content is adapted to the child's learning pace.'
	String get answer => 'It analyzes which words the child struggles with, provides simple explanations, and suggests new stories appropriate for their level. The content is adapted to the child\'s learning pace.';
}

// Path: faq.questions.q3
class TranslationsFaqQuestionsQ3En {
	TranslationsFaqQuestionsQ3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How much time is enough to use it daily?'
	String get question => 'How much time is enough to use it daily?';

	/// en: '5–10 minutes a day is sufficient. Even a short story is effective for regular learning.'
	String get answer => '5–10 minutes a day is sufficient. Even a short story is effective for regular learning.';
}

// Path: faq.questions.q4
class TranslationsFaqQuestionsQ4En {
	TranslationsFaqQuestionsQ4En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What age group are the stories suitable for?'
	String get question => 'What age group are the stories suitable for?';

	/// en: 'The stories are presented according to the child's age and level. The app determines the level at the beginning and adjusts the difficulty based on progress.'
	String get answer => 'The stories are presented according to the child\'s age and level. The app determines the level at the beginning and adjusts the difficulty based on progress.';
}

// Path: faq.questions.q5
class TranslationsFaqQuestionsQ5En {
	TranslationsFaqQuestionsQ5En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How does the child learn unfamiliar words?'
	String get question => 'How does the child learn unfamiliar words?';

	/// en: 'When the child taps on an unfamiliar word, its meaning, a simple explanation, and the correct pronunciation are shown. This way, the word is both read and heard.'
	String get answer => 'When the child taps on an unfamiliar word, its meaning, a simple explanation, and the correct pronunciation are shown. This way, the word is both read and heard.';
}

// Path: faq.questions.q6
class TranslationsFaqQuestionsQ6En {
	TranslationsFaqQuestionsQ6En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Is an internet connection required?'
	String get question => 'Is an internet connection required?';

	/// en: 'Previously downloaded stories can be read offline. An internet connection is required for new content and updates.'
	String get answer => 'Previously downloaded stories can be read offline. An internet connection is required for new content and updates.';
}

// Path: faq.questions.q7
class TranslationsFaqQuestionsQ7En {
	TranslationsFaqQuestionsQ7En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Is the app free?'
	String get question => 'Is the app free?';

	/// en: 'Basic stories are available for free. More stories, advanced personalization, and additional features are offered in the premium package.'
	String get answer => 'Basic stories are available for free. More stories, advanced personalization, and additional features are offered in the premium package.';
}

// Path: faq.questions.q8
class TranslationsFaqQuestionsQ8En {
	TranslationsFaqQuestionsQ8En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Can the stories be listened to?'
	String get question => 'Can the stories be listened to?';

	/// en: 'Yes. The stories can be listened to with correct pronunciation. This way, both reading and listening skills develop together.'
	String get answer => 'Yes. The stories can be listened to with correct pronunciation. This way, both reading and listening skills develop together.';
}

// Path: faq.questions.q9
class TranslationsFaqQuestionsQ9En {
	TranslationsFaqQuestionsQ9En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Can the learned words be tracked?'
	String get question => 'Can the learned words be tracked?';

	/// en: 'Yes. The learned words are recorded and planned to be repeated at certain intervals. This way, forgetting can be reduced.'
	String get answer => 'Yes. The learned words are recorded and planned to be repeated at certain intervals. This way, forgetting can be reduced.';
}

// Path: faq.questions.q10
class TranslationsFaqQuestionsQ10En {
	TranslationsFaqQuestionsQ10En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How long does it take to see progress?'
	String get question => 'How long does it take to see progress?';

	/// en: 'With regular use, progress can be noticeable in a short time. As reading habits increase, vocabulary and comprehension skills improve.'
	String get answer => 'With regular use, progress can be noticeable in a short time. As reading habits increase, vocabulary and comprehension skills improve.';
}

// Path: home.premiumPlan.dialog
class TranslationsHomePremiumPlanDialogEn {
	TranslationsHomePremiumPlanDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Feature Not Available'
	String get title => 'Feature Not Available';

	/// en: 'This feature is currently not available.'
	String get message => 'This feature is currently not available.';

	/// en: 'OK'
	String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class TranslationsReferralCodeErrorsMissingCodeEn {
	TranslationsReferralCodeErrorsMissingCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Code Required'
	String get title => 'Code Required';

	/// en: 'Please enter a referral code to continue.'
	String get message => 'Please enter a referral code to continue.';
}

// Path: referralCode.errors.invalidFormat
class TranslationsReferralCodeErrorsInvalidFormatEn {
	TranslationsReferralCodeErrorsInvalidFormatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid Format'
	String get title => 'Invalid Format';

	/// en: 'Referral code must be exactly 8 characters long.'
	String get message => 'Referral code must be exactly 8 characters long.';
}

// Path: referralCode.errors.alreadyUsed
class TranslationsReferralCodeErrorsAlreadyUsedEn {
	TranslationsReferralCodeErrorsAlreadyUsedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Already Used'
	String get title => 'Already Used';

	/// en: 'You have already used a referral code. Each user can only use one code.'
	String get message => 'You have already used a referral code. Each user can only use one code.';
}

// Path: referralCode.errors.selfReferral
class TranslationsReferralCodeErrorsSelfReferralEn {
	TranslationsReferralCodeErrorsSelfReferralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid Code'
	String get title => 'Invalid Code';

	/// en: 'You cannot use your own invitation code. Please use a code from a friend.'
	String get message => 'You cannot use your own invitation code. Please use a code from a friend.';
}

// Path: referralCode.errors.codeNotFound
class TranslationsReferralCodeErrorsCodeNotFoundEn {
	TranslationsReferralCodeErrorsCodeNotFoundEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Code Not Found'
	String get title => 'Code Not Found';

	/// en: 'The referral code you entered does not exist. Please double-check and try again.'
	String get message => 'The referral code you entered does not exist. Please double-check and try again.';
}

// Path: referralCode.errors.genericError
class TranslationsReferralCodeErrorsGenericErrorEn {
	TranslationsReferralCodeErrorsGenericErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Error'
	String get title => 'Error';

	/// en: 'An error occurred while applying the referral code. Please try again.'
	String get message => 'An error occurred while applying the referral code. Please try again.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Welcome ${name}',
			'welcome2' => ({required Object appName}) => 'Welcome to ${appName}',
			'get_started' => 'Get Started',
			'next' => 'Next',
			'back' => 'Back',
			'skip' => 'Skip',
			'kContinue' => 'Continue',
			'logintext' => 'Where every word is a new adventure waiting to be told.',
			'termOfService.text1' => 'By signing up for swipe, you agree to our ',
			'termOfService.link1' => 'Terms of Service',
			'termOfService.text2' => '. Learn how we process your data in our ',
			'termOfService.link2' => 'Privacy Policy',
			'termOfService.text3' => ' and ',
			'termOfService.link3' => 'Cookies Policy',
			'termOfService.text4' => '',
			'termOfService.privacyPolicy.title' => 'Privacy Policy',
			'termOfService.privacyPolicy.lastUpdated' => 'Last Updated: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids adopts child privacy and data security as a core principle. This policy explains how your personal data is collected, stored, and protected.',
			'termOfService.privacyPolicy.section1Title' => '1. COLLECTED INFORMATION',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Data Provided by User',
			'termOfService.privacyPolicy.section1sub1Body' => '• Nickname or profile name.\n• Email address (for parent account and support).\n• Age information (for content suitability).\n• Language level, stories read, and learned words.\n\nNote: This data is never used for health or psychological analysis.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Automatically Collected Data',
			'termOfService.privacyPolicy.section1sub2Body' => 'Device type, operating system, and app performance data are collected. Precise location data is NOT collected; only approximate location (country/city) is gathered.',
			'termOfService.privacyPolicy.section2Title' => '2. PURPOSES OF DATA PROCESSING',
			'termOfService.privacyPolicy.section2Body' => 'Your data is used solely to:\n\n• Provide safe and age-appropriate content.\n• Personalize the learning experience.\n• Improve app performance.\n• Fulfill legal obligations.',
			'termOfService.privacyPolicy.section3Title' => '3. DATA RETENTION AND DELETION',
			'termOfService.privacyPolicy.section3Body' => 'Data is stored as long as your account is active or as required by law. Support records are kept for a maximum of 12 months. When an account is deleted, personal data is irreversibly erased.',
			'termOfService.privacyPolicy.section4Title' => '4. USER RIGHTS',
			'termOfService.privacyPolicy.section4Body' => 'Under GDPR and LPPD (KVKK), parents have the right to request access, correction, deletion, or portability of data. Please send requests to support@fly-work.com.',
			'termOfService.privacyPolicy.section5Title' => '5. CHILDREN\'S PRIVACY',
			'termOfService.privacyPolicy.section5Body' => 'Lingola Stories Kids is designed for ages 6+. Parental consent is required for users under 13. Accounts with false age declarations will be closed immediately.',
			'termOfService.privacyPolicy.section6Title' => '6. CONTACT',
			'termOfService.privacyPolicy.section6Body' => '📩 For inquiries: support@fly-work.com',
			'termOfService.termsOfService.title' => 'Terms of Service',
			'termOfService.termsOfService.lastUpdated' => 'Last Updated: 2025',
			'termOfService.termsOfService.intro' => 'These Terms of Service govern the use of the Lingola Stories Kids application. By using the app, you agree to these terms.',
			'termOfService.termsOfService.disclaimer' => 'Disclaimer: Lingola Stories Kids is an educational tool. It does not provide official education, academic certification, or professional language training services.',
			'termOfService.termsOfService.section1Title' => '1. SCOPE OF SERVICE',
			'termOfService.termsOfService.section1Body' => 'The app provides a story-based learning experience for children:\n\n• AI-powered stories and recommendations.\n• Age and level-based reading experience.\n• Vocabulary and pronunciation support.',
			'termOfService.termsOfService.section2Title' => '2. CONDITIONS OF USE & AGE',
			'termOfService.termsOfService.section2Body' => '• Users must be at least 6 years old.\n• Users under 18 are encouraged to use the app under parental supervision.\n• Account information must be accurate and up-to-date.',
			'termOfService.termsOfService.section3Title' => '3. PROHIBITED USES',
			'termOfService.termsOfService.section3Body' => 'Unauthorized copying of content, reverse engineering, manipulation of AI systems, and unauthorized commercial use are strictly prohibited.',
			'termOfService.termsOfService.section4Title' => '4. SUBSCRIPTIONS AND PAYMENTS',
			'termOfService.termsOfService.section4Body' => 'Premium features are subject to App Store and Google Play policies. Subscription cancellations and refunds are managed via the respective store settings.',
			'termOfService.termsOfService.section5Title' => '5. INTELLECTUAL PROPERTY',
			'termOfService.termsOfService.section5Body' => 'All content, including design, software, stories, and AI outputs, belongs to Lingola Stories Kids and may not be reproduced without permission.',
			'termOfService.termsOfService.section6Title' => '6. LIMITATION OF LIABILITY',
			'termOfService.termsOfService.section6Body' => 'The app is provided "as is". Lingola Stories Kids is not liable for individual outcomes of content use or technical issues caused by devices.',
			'termOfService.termsOfService.section7Title' => '7. GOVERNING LAW',
			'termOfService.termsOfService.section7Body' => 'These terms are governed by the laws of the Republic of Turkey. Istanbul Central Courts shall have jurisdiction over any disputes.',
			'termOfService.termsOfService.section8Title' => '8. CONTACT',
			'termOfService.termsOfService.section8Body' => '📩 For inquiries: support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Cookie Policy',
			'termOfService.cookiePolicy.lastUpdated' => 'Last Updated: 2025',
			'termOfService.cookiePolicy.intro' => 'Welcome to Lingola Stories Kids! This policy explains what digital helpers are used and for what purposes they are utilized when you use the app.',
			'termOfService.cookiePolicy.important' => 'IMPORTANT: Lingola Stories Kids adopts child privacy as a core principle. Our app is designed for users aged 6 and above.',
			'termOfService.cookiePolicy.section1Title' => '1. WHAT ARE COOKIES AND SIMILAR TECHNOLOGIES?',
			'termOfService.cookiePolicy.section1Body' => 'Cookies and similar technologies (SDKs, identifiers) are small digital components that help the app function correctly. These technologies do not directly identify you and do not create individual profiles for advertising.',
			'termOfService.cookiePolicy.section2Title' => '2. WHICH TECHNOLOGIES DO WE USE?',
			'termOfService.cookiePolicy.section2Body' => 'Strictly Necessary Technologies\nRequired for session management and security controls. The app may not function properly without these components.\n\nPerformance and Analytics\nHelps us understand which stories are read and which areas need improvement. Data is evaluated anonymously.\n\nPersonalization\nRemembers settings like language preference and reading level to provide a tailored experience for the child.',
			'termOfService.cookiePolicy.section3Title' => '3. WHY DO WE USE THESE TECHNOLOGIES?',
			'termOfService.cookiePolicy.section3Body' => '• To ensure the app runs safely and smoothly.\n• To make the reading experience more fluid.\n• To remember repetitive settings.\n• To identify features for future development.',
			'termOfService.cookiePolicy.section4Title' => '4. THIRD-PARTY TECHNOLOGIES',
			'termOfService.cookiePolicy.section4Body' => 'We apply the "minimum data usage" principle when working with third-party partners. These providers are subject to their own privacy policies.',
			'termOfService.cookiePolicy.section5Title' => '5. CONTROL AND MANAGEMENT',
			'termOfService.cookiePolicy.section5Body' => 'Parents can limit the use of these technologies via device settings. However, disabling necessary technologies may affect functionality.',
			'termOfService.cookiePolicy.section6Title' => '6. CONTACT',
			'termOfService.cookiePolicy.section6Body' => '📩 For inquiries: support@fly-work.com',
			'cookies' => 'Cookies Policy',
			'privacy' => 'Privacy Policy',
			'onboarding.step1.title' => 'Which language would you\nlike to learn?',
			'onboarding.step1.subtitle' => 'Please select the language or languages\nyou wish to learn.',
			'onboarding.step2.title' => 'What kind of stories\ndo you like?',
			'onboarding.step2.subtitle' => 'Please indicate your preference.',
			'onboarding.step2.categories.space' => '🚀 Space Adventures',
			'onboarding.step2.categories.magic' => '🦄 Magical Worlds',
			'onboarding.step2.categories.detectives' => '🕵️ Little Detectives',
			'onboarding.step2.categories.animals' => '🐾 Lovable Friends',
			'onboarding.step2.categories.dinosaurs' => '🦖 The Age of Dinosaurs',
			'onboarding.step2.categories.superhero' => '🦸 Superheroes',
			'onboarding.step2.categories.underwater' => '🌊 Underwater Kingdom',
			'onboarding.step2.categories.fairytale' => '🏰 Prince and Princess Fairy Tales',
			'onboarding.loading.titlePart1' => 'Your Personal Account is\n',
			'onboarding.loading.titlePart2' => 'Being Created',
			'onboarding.loading.subtitle' => 'We create wonderful stories for you',
			'onboarding.loading.optimization' => 'Optimization',
			'pressBackAgainToExit' => 'Press back again to exit',
			'faq.title' => 'Frequently Asked Questions',
			'faq.questions.q1.question' => 'What is the purpose of this app?',
			'faq.questions.q1.answer' => 'It helps children learn English through fun stories. Words are seen in context, learned intuitively, and reinforced through repetition.',
			'faq.questions.q2.question' => 'What does the AI do here?',
			'faq.questions.q2.answer' => 'It analyzes which words the child struggles with, provides simple explanations, and suggests new stories appropriate for their level. The content is adapted to the child\'s learning pace.',
			'faq.questions.q3.question' => 'How much time is enough to use it daily?',
			'faq.questions.q3.answer' => '5–10 minutes a day is sufficient. Even a short story is effective for regular learning.',
			'faq.questions.q4.question' => 'What age group are the stories suitable for?',
			'faq.questions.q4.answer' => 'The stories are presented according to the child\'s age and level. The app determines the level at the beginning and adjusts the difficulty based on progress.',
			'faq.questions.q5.question' => 'How does the child learn unfamiliar words?',
			'faq.questions.q5.answer' => 'When the child taps on an unfamiliar word, its meaning, a simple explanation, and the correct pronunciation are shown. This way, the word is both read and heard.',
			'faq.questions.q6.question' => 'Is an internet connection required?',
			'faq.questions.q6.answer' => 'Previously downloaded stories can be read offline. An internet connection is required for new content and updates.',
			'faq.questions.q7.question' => 'Is the app free?',
			'faq.questions.q7.answer' => 'Basic stories are available for free. More stories, advanced personalization, and additional features are offered in the premium package.',
			'faq.questions.q8.question' => 'Can the stories be listened to?',
			'faq.questions.q8.answer' => 'Yes. The stories can be listened to with correct pronunciation. This way, both reading and listening skills develop together.',
			'faq.questions.q9.question' => 'Can the learned words be tracked?',
			'faq.questions.q9.answer' => 'Yes. The learned words are recorded and planned to be repeated at certain intervals. This way, forgetting can be reduced.',
			'faq.questions.q10.question' => 'How long does it take to see progress?',
			'faq.questions.q10.answer' => 'With regular use, progress can be noticeable in a short time. As reading habits increase, vocabulary and comprehension skills improve.',
			'good_morning' => 'Good Morning',
			'good_afternoon' => 'Good Afternoon',
			'good_evening' => 'Good Evening',
			'splash.screen1.title' => 'Learn English with Stories',
			'splash.screen1.description' => 'No boring memorisation. Discover words in their natural flow through short and fun stories.',
			'splash.screen2.title' => 'Artificial Intelligence Guides You',
			'splash.screen2.description' => 'It tracks the words you struggle with, explains their meaning, and suggests new stories tailored to your level.',
			'profile.title' => 'Profile',
			'profile.freeVersion' => 'Free Version',
			'profile.error' => 'Error',
			'profile.passive' => 'Passive',
			'profile.sections.accountSettings' => 'ACCOUNT SETTINGS',
			'profile.sections.general' => 'GENERAL',
			'profile.menu.editProfile' => 'Edit Profile',
			'profile.menu.notifications' => 'Notifications',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'App Language',
			'profile.menu.shareWithFriends' => 'Share with Friends',
			'profile.menu.enterInviteCode' => 'Enter Invite Code',
			'profile.menu.rateUs' => 'Rate Us',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Logout',
			'profile.manage' => 'MANAGE',
			'profile.logoutDialog.title' => 'You are about to log out',
			'profile.logoutDialog.message' => 'See you again! We will keep tracking your breath exercises.',
			'profile.logoutDialog.logoutButton' => 'Log Out',
			'profile.logoutDialog.cancelButton' => 'Cancel',
			'home.premium' => 'Premium!',
			'home.seeMore' => 'See More',
			'home.pickUpWhereYouLeftOff' => 'Pick up where you left off',
			'home.premiumSection' => 'Premium',
			'home.history' => 'History',
			'home.librarySection' => 'Library',
			'home.libraryDescription' => 'The words you have saved will appear here.',
			'home.upgradeToPremium' => 'Upgrade to Premium',
			'home.unlimitedStories' => 'Unlimited stories and an ad-free experience',
			'home.premiumPlan.title' => 'Premium Plan',
			'home.premiumPlan.description' => 'Unlock your ai chatbot & get \nall premium features',
			'home.premiumPlan.button' => 'Get Premium',
			'home.premiumPlan.dialog.title' => 'Feature Not Available',
			'home.premiumPlan.dialog.message' => 'This feature is currently not available.',
			'home.premiumPlan.dialog.button' => 'OK',
			'allStories.title' => 'All Stories',
			'allStories.noStoriesFound' => 'No stories found',
			'allStories.selectFilter' => 'Select Filter',
			'allStories.category' => 'Category',
			'allStories.categorySubtitle' => 'Please select the category you wish to read',
			'allStories.apply' => 'Apply',
			'stories.title' => 'Stories',
			'stories.popularStories' => 'Popular Stories',
			'stories.recommendForYou' => 'Recommend For You',
			'stories.allStories' => 'All Stories',
			'stories.seeAll' => 'See all',
			'library.title' => 'Library',
			'library.wordCount' => ({required Object count}) => '${count} Words',
			'library.popularWords' => 'Popular Words',
			'library.allWords' => 'All Words',
			'library.searchWord' => 'Search Word',
			'library.searchHint' => 'Please enter word…',
			'bottomNav.home' => 'Home',
			'bottomNav.stories' => 'Stories',
			'bottomNav.library' => 'Library',
			'bottomNav.profile' => 'Profile',
			'dayStreak.title' => 'Day streak!',
			'dayStreak.days.su' => 'Su',
			'dayStreak.days.mo' => 'Mo',
			'dayStreak.days.tu' => 'Tu',
			'dayStreak.days.we' => 'We',
			'dayStreak.days.th' => 'Th',
			'dayStreak.days.fr' => 'Fr',
			'dayStreak.days.sa' => 'Sa',
			'storyDetails.introduction' => 'Introduction',
			'storyDetails.saved' => 'Saved',
			'storyDetails.removed' => 'Removed',
			'storyDetails.storyAddedToLibrary' => 'The story has been added to your library.',
			'storyDetails.storyRemovedFromLibrary' => 'The story has been removed from library.',
			'storyDetails.wordAddedToLibrary' => 'The word has been added to the library. Undo',
			'storyDetails.successfully' => 'Successfully',
			'storyDetails.ratingSubmitted' => 'Your rating has been submitted successfully.',
			'storyDetails.warning' => 'Warning',
			'storyDetails.fillAllFields' => 'Please fill in all fields.',
			'storyDetails.messageSent' => 'Your message has been sent successfully.',
			'storyDetails.translate' => 'Translate',
			'storyDetails.speak' => 'Speak',
			'storyDetails.like' => 'Like',
			'storyDetails.save' => 'Save',
			'storyDetails.feedback' => 'Feedback',
			'storyDetails.rating' => 'Rating',
			'storyDetails.stop' => 'Stop',
			'storyDetails.start' => 'Start',
			'storyDetails.listen' => 'Listen',
			'storyDetails.translation' => 'Translation',
			'storyDetails.translating' => 'Translating...',
			'storyDetails.saveToLibrary' => 'Save to Library',
			'storyDetails.rateThisStory' => 'Rate this Story',
			'storyDetails.enjoyStory' => 'How much did you enjoy this story?',
			'storyDetails.send' => 'Send',
			'storyDetails.subject' => 'Subject',
			'storyDetails.feedbackSubjects.bugReport' => 'Bug Report',
			'storyDetails.feedbackSubjects.storyContent' => 'Story Content',
			'storyDetails.feedbackSubjects.audioIssue' => 'Audio Issue',
			'storyDetails.feedbackSubjects.suggestion' => 'Suggestion',
			'storyDetails.feedbackSubjects.other' => 'Other',
			'share.title' => 'Share with Friends',
			'share.mainTitle' => 'Share the Peace',
			'share.descriptionPart1' => 'Invite your friends to breathe together.\nFor every invite, you both get ',
			'share.descriptionPart2' => '1 week Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'YOUR REFERRAL CODE',
			'share.codeCopied' => 'Code copied!',
			'share.copyCode' => 'Copy Code',
			'share.inviteDescription' => 'Invite your friends and enjoy\nlearning together',
			'share.linkCopied' => 'Copied',
			'share.linkCopiedMessage' => 'The link has been copied to the clipboard.',
			'editProfile.title' => 'Edit Profile',
			'editProfile.changePhoto' => 'Change Avatar',
			'editProfile.learnLanguage' => 'Select Learn Language',
			'editProfile.fullName' => 'Full Name',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Age',
			'editProfile.save' => 'Save',
			'editProfile.saving' => 'Saving...',
			'editProfile.updateSuccess' => 'Profile updated successfully',
			'editProfile.updateError' => 'An error occurred while updating profile',
			'editProfile.deleteAccount' => 'Delete Account',
			'notifications.title' => 'Notifications',
			'notifications.emptyTitle' => 'No notifications yet',
			'notifications.emptyDescription' => 'We\'ll notify you when there\'s an important update about your learning journey.',
			'notifications.premiumBannerTitle' => 'Don\'t miss out on\nPremium benefits!',
			'notifications.premiumBannerDescription' => 'Grab the opportunities as a Premium subscriber.',
			'auth.google' => 'Continue with Google',
			'auth.facebook' => 'Continue with Facebook',
			'auth.apple' => 'Continue with Apple',
			'auth.guest' => 'Continue as Guest',
			'auth.signInFailed' => ({required Object error}) => 'Sign-in failed: ${error}',
			'cancel' => 'Cancel',
			'delete' => 'Delete',
			'deleteAccount' => 'Delete Account',
			'deleteDialogTitle' => 'Are you sure you want to delete your account?',
			'deleteDialogDescription' => 'This action is irreversible and will permanently delete all your exercise history and data.',
			'deleteError' => 'An error occurred while deleting your account. Please try again.',
			'enterInvitationCode' => 'Enter Invitation Code',
			'inviteFriends' => 'Enter the invitation code you received from a friend.\nType it into the designated field',
			'twoDaysPremium' => '7-Day Premium',
			'advantage' => '\nto enjoy its benefits.',
			'send' => 'Send',
			'referralCode.inputPlaceholder' => 'Enter 8-character code',
			'referralCode.applying' => 'Applying code...',
			'referralCode.success.title' => 'Success!',
			'referralCode.success.message' => 'Referral code applied successfully! Both you and your friend received 1 week of premium.',
			'referralCode.errors.missingCode.title' => 'Code Required',
			'referralCode.errors.missingCode.message' => 'Please enter a referral code to continue.',
			'referralCode.errors.invalidFormat.title' => 'Invalid Format',
			'referralCode.errors.invalidFormat.message' => 'Referral code must be exactly 8 characters long.',
			'referralCode.errors.alreadyUsed.title' => 'Already Used',
			'referralCode.errors.alreadyUsed.message' => 'You have already used a referral code. Each user can only use one code.',
			'referralCode.errors.selfReferral.title' => 'Invalid Code',
			'referralCode.errors.selfReferral.message' => 'You cannot use your own invitation code. Please use a code from a friend.',
			'referralCode.errors.codeNotFound.title' => 'Code Not Found',
			'referralCode.errors.codeNotFound.message' => 'The referral code you entered does not exist. Please double-check and try again.',
			'referralCode.errors.genericError.title' => 'Error',
			'referralCode.errors.genericError.message' => 'An error occurred while applying the referral code. Please try again.',
			'deleteNotifications' => 'Delete Notifications',
			'deleteNotificationsDescription' => 'Are you sure you want to delete all \nyour notifications? This action is irreversible and cannot be undone.',
			'deleteAll' => 'Delete All',
			'appLanguage' => 'App Language',
			'selectLanguage' => 'Select Your Preferred Language',
			'save' => 'Save',
			'languageOptions.english' => 'English',
			'languageOptions.german' => 'German',
			'languageOptions.italian' => 'Italian',
			'languageOptions.french' => 'French',
			'languageOptions.japanese' => 'Japanese',
			'languageOptions.spanish' => 'Spanish',
			'languageOptions.russian' => 'Russian',
			'languageOptions.turkish' => 'Turkish',
			'languageOptions.korean' => 'Korean',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portuguese',
			_ => null,
		};
	}
}
