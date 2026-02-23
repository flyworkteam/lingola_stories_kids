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
	late final TranslationsEditProfileEn editProfile = TranslationsEditProfileEn._(_root);
	late final TranslationsNotificationsEn notifications = TranslationsNotificationsEn._(_root);
	late final TranslationsShareEn share = TranslationsShareEn._(_root);
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);

	/// en: 'Cancel'
	String get cancel => 'Cancel';

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

	late final TranslationsHomePremiumPlanEn premiumPlan = TranslationsHomePremiumPlanEn._(_root);
}

// Path: editProfile
class TranslationsEditProfileEn {
	TranslationsEditProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	/// en: 'Change Photo'
	String get changePhoto => 'Change Photo';

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

	/// en: 'SUPPORT & OTHER'
	String get supportAndOther => 'SUPPORT & OTHER';
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
			'cookies' => 'Cookies Policy',
			'privacy' => 'Privacy Policy',
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
			'profile.sections.accountSettings' => 'ACCOUNT SETTINGS',
			'profile.sections.supportAndOther' => 'SUPPORT & OTHER',
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
			'home.premiumPlan.title' => 'Premium Plan',
			'home.premiumPlan.description' => 'Unlock your ai chatbot & get \nall premium features',
			'home.premiumPlan.button' => 'Get Premium',
			'home.premiumPlan.dialog.title' => 'Feature Not Available',
			'home.premiumPlan.dialog.message' => 'This feature is currently not available.',
			'home.premiumPlan.dialog.button' => 'OK',
			'editProfile.title' => 'Edit Profile',
			'editProfile.changePhoto' => 'Change Photo',
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
			'share.title' => 'Share with Friends',
			'share.mainTitle' => 'Share the Peace',
			'share.descriptionPart1' => 'Invite your friends to breathe together.\nFor every invite, you both get ',
			'share.descriptionPart2' => '1 week Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'YOUR REFERRAL CODE',
			'share.codeCopied' => 'Code copied!',
			'share.copyCode' => 'Copy Code',
			'auth.google' => 'Continue with Google',
			'auth.facebook' => 'Continue with Facebook',
			'auth.apple' => 'Continue with Apple',
			'auth.guest' => 'Continue as Guest',
			'auth.signInFailed' => ({required Object error}) => 'Sign-in failed: ${error}',
			'cancel' => 'Cancel',
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
