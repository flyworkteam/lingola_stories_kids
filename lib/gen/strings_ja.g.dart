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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'ようこそ ${name}';
	@override String welcome2({required Object appName}) => 'ようこそ ${appName}';
	@override String get get_started => '始める';
	@override String get next => '次へ';
	@override String get back => '戻る';
	@override String get skip => 'スキップ';
	@override String get kContinue => '続ける';
	@override String get logintext => 'すべての言葉が語られるのを待っている新しい冒険です。';
	@override late final _TranslationsTermOfServiceJa termOfService = _TranslationsTermOfServiceJa._(_root);
	@override String get cookies => 'クッキーポリシー';
	@override String get privacy => 'プライバシーポリシー';
	@override String get pressBackAgainToExit => 'もう一度戻るを押して終了';
	@override late final _TranslationsFaqJa faq = _TranslationsFaqJa._(_root);
	@override String get good_morning => 'おはようございます';
	@override String get good_afternoon => 'こんにちは';
	@override String get good_evening => 'こんばんは';
	@override late final _TranslationsSplashJa splash = _TranslationsSplashJa._(_root);
	@override late final _TranslationsProfileJa profile = _TranslationsProfileJa._(_root);
	@override late final _TranslationsHomeJa home = _TranslationsHomeJa._(_root);
	@override late final _TranslationsEditProfileJa editProfile = _TranslationsEditProfileJa._(_root);
	@override late final _TranslationsNotificationsJa notifications = _TranslationsNotificationsJa._(_root);
	@override late final _TranslationsShareJa share = _TranslationsShareJa._(_root);
	@override late final _TranslationsAuthJa auth = _TranslationsAuthJa._(_root);
	@override String get cancel => 'キャンセル';
	@override String get deleteAccount => 'アカウントを削除';
	@override String get deleteDialogTitle => 'アカウントを削除してもよろしいですか？';
	@override String get deleteDialogDescription => 'このアクションは元に戻せず、すべてのエクササイズ履歴とデータが永久に削除されます。';
	@override String get deleteError => 'アカウントの削除中にエラーが発生しました。もう一度お試しください。';
	@override String get enterInvitationCode => '招待コードを入力';
	@override String get inviteFriends => '友達から受け取った招待コードを入力してください。\n指定されたフィールドに入力してください';
	@override String get twoDaysPremium => '7日間プレミアム';
	@override String get advantage => '\nその利点を享受するために。';
	@override String get send => '送信';
	@override late final _TranslationsReferralCodeJa referralCode = _TranslationsReferralCodeJa._(_root);
	@override String get deleteNotifications => '通知を削除';
	@override String get deleteNotificationsDescription => 'すべての通知を削除してもよろしいですか？\nこのアクションは元に戻せず、取り消すことはできません。';
	@override String get deleteAll => 'すべて削除';
	@override String get appLanguage => 'アプリの言語';
	@override String get selectLanguage => '希望する言語を選択してください';
	@override String get save => '保存';
	@override late final _TranslationsLanguageOptionsJa languageOptions = _TranslationsLanguageOptionsJa._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceJa implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'swipeに登録することで、';
	@override String get link1 => '利用規約';
	@override String get text2 => 'に同意したことになります。';
	@override String get link2 => 'プライバシーポリシー';
	@override String get text3 => 'および';
	@override String get link3 => 'クッキーポリシー';
	@override String get text4 => 'でデータの処理方法をご確認ください';
}

// Path: faq
class _TranslationsFaqJa implements TranslationsFaqEn {
	_TranslationsFaqJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'よくある質問';
	@override late final _TranslationsFaqQuestionsJa questions = _TranslationsFaqQuestionsJa._(_root);
}

// Path: splash
class _TranslationsSplashJa implements TranslationsSplashEn {
	_TranslationsSplashJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Ja screen1 = _TranslationsSplashScreen1Ja._(_root);
	@override late final _TranslationsSplashScreen2Ja screen2 = _TranslationsSplashScreen2Ja._(_root);
}

// Path: profile
class _TranslationsProfileJa implements TranslationsProfileEn {
	_TranslationsProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール';
	@override String get freeVersion => '無料版';
	@override String get error => 'エラー';
	@override late final _TranslationsProfileSectionsJa sections = _TranslationsProfileSectionsJa._(_root);
	@override late final _TranslationsProfileMenuJa menu = _TranslationsProfileMenuJa._(_root);
	@override String get manage => '管理';
	@override late final _TranslationsProfileLogoutDialogJa logoutDialog = _TranslationsProfileLogoutDialogJa._(_root);
}

// Path: home
class _TranslationsHomeJa implements TranslationsHomeEn {
	_TranslationsHomeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get premium => 'プレミアム！';
	@override String get seeMore => 'もっと見る';
	@override late final _TranslationsHomePremiumPlanJa premiumPlan = _TranslationsHomePremiumPlanJa._(_root);
}

// Path: editProfile
class _TranslationsEditProfileJa implements TranslationsEditProfileEn {
	_TranslationsEditProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィールを編集';
	@override String get changePhoto => '写真を変更';
	@override String get fullName => 'フルネーム';
	@override String get email => 'メール';
	@override String get age => '年齢';
	@override String get save => '保存';
	@override String get saving => '保存中...';
	@override String get updateSuccess => 'プロフィールが正常に更新されました';
	@override String get updateError => 'プロフィールの更新中にエラーが発生しました';
	@override String get deleteAccount => 'アカウントを削除';
}

// Path: notifications
class _TranslationsNotificationsJa implements TranslationsNotificationsEn {
	_TranslationsNotificationsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '通知';
	@override String get emptyTitle => 'まだ通知はありません';
	@override String get emptyDescription => '学習の旅に関する重要な更新があるときにお知らせします。';
	@override String get premiumBannerTitle => 'プレミアム特典を\nお見逃しなく！';
	@override String get premiumBannerDescription => 'プレミアム購読者として機会をつかみましょう。';
}

// Path: share
class _TranslationsShareJa implements TranslationsShareEn {
	_TranslationsShareJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '友達と共有';
	@override String get mainTitle => '平和を共有する';
	@override String get descriptionPart1 => '友達を招待して一緒に呼吸しましょう。\n招待ごとに、両方が ';
	@override String get descriptionPart2 => '1週間プレミアム';
	@override String get descriptionPart3 => 'を取得';
	@override String get yourReferralCode => 'あなたの紹介コード';
	@override String get codeCopied => 'コードがコピーされました！';
	@override String get copyCode => 'コードをコピー';
}

// Path: auth
class _TranslationsAuthJa implements TranslationsAuthEn {
	_TranslationsAuthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'ゲストとして続行';
	@override String signInFailed({required Object error}) => 'サインインに失敗しました：${error}';
}

// Path: referralCode
class _TranslationsReferralCodeJa implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8桁のコードを入力';
	@override String get applying => 'コードを適用中...';
	@override late final _TranslationsReferralCodeSuccessJa success = _TranslationsReferralCodeSuccessJa._(_root);
	@override late final _TranslationsReferralCodeErrorsJa errors = _TranslationsReferralCodeErrorsJa._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsJa implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get english => '英語';
	@override String get german => 'ドイツ語';
	@override String get italian => 'イタリア語';
	@override String get french => 'フランス語';
	@override String get japanese => '日本語';
	@override String get spanish => 'スペイン語';
	@override String get russian => 'ロシア語';
	@override String get turkish => 'トルコ語';
	@override String get korean => '韓国語';
	@override String get hindi => 'ヒンディー語';
	@override String get portuguese => 'ポルトガル語';
}

// Path: faq.questions
class _TranslationsFaqQuestionsJa implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Ja q1 = _TranslationsFaqQuestionsQ1Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ2Ja q2 = _TranslationsFaqQuestionsQ2Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ3Ja q3 = _TranslationsFaqQuestionsQ3Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ4Ja q4 = _TranslationsFaqQuestionsQ4Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ5Ja q5 = _TranslationsFaqQuestionsQ5Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ6Ja q6 = _TranslationsFaqQuestionsQ6Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ7Ja q7 = _TranslationsFaqQuestionsQ7Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ8Ja q8 = _TranslationsFaqQuestionsQ8Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ9Ja q9 = _TranslationsFaqQuestionsQ9Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ10Ja q10 = _TranslationsFaqQuestionsQ10Ja._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Ja implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ストーリーで英語を学ぶ';
	@override String get description => '退屈な暗記はありません。短くて楽しいストーリーを通じて、言葉を自然な流れの中で発見しましょう。';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Ja implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '人工知能があなたを導く';
	@override String get description => 'あなたが苦労している単語を追跡し、その意味を説明し、あなたのレベルに合わせた新しいストーリーを提案します。';
}

// Path: profile.sections
class _TranslationsProfileSectionsJa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'アカウント設定';
	@override String get supportAndOther => 'サポートとその他';
}

// Path: profile.menu
class _TranslationsProfileMenuJa implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'プロフィールを編集';
	@override String get notifications => '通知';
	@override String get premium => 'プレミアム';
	@override String get appLanguage => 'アプリの言語';
	@override String get shareWithFriends => '友達と共有';
	@override String get enterInviteCode => '招待コードを入力';
	@override String get rateUs => '評価する';
	@override String get faq => 'FAQ';
	@override String get logout => 'ログアウト';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogJa implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログアウトしようとしています';
	@override String get message => 'またお会いしましょう！呼吸エクササイズを追跡し続けます。';
	@override String get logoutButton => 'ログアウト';
	@override String get cancelButton => 'キャンセル';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanJa implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プレミアムプラン';
	@override String get description => 'AIチャットボットのロックを解除し、\nすべてのプレミアム機能を取得';
	@override String get button => 'プレミアムを取得';
	@override late final _TranslationsHomePremiumPlanDialogJa dialog = _TranslationsHomePremiumPlanDialogJa._(_root);
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessJa implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '成功！';
	@override String get message => '紹介コードが正常に適用されました！あなたとあなたの友人は1週間のプレミアムを受け取りました。';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsJa implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeJa missingCode = _TranslationsReferralCodeErrorsMissingCodeJa._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatJa invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatJa._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedJa alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedJa._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralJa selfReferral = _TranslationsReferralCodeErrorsSelfReferralJa._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundJa codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundJa._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorJa genericError = _TranslationsReferralCodeErrorsGenericErrorJa._(_root);
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Ja implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'このアプリは何のためにありますか？';
	@override String get answer => '子供たちが楽しい物語を通じて英語を学ぶことを可能にします。単語は文の中で見られ、意味は直感的に学ばれ、繰り返しによって定着します。';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Ja implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'ここでAIは何をしていますか？';
	@override String get answer => '子供がどの単語に苦労しているかを分析し、簡単な説明を提供し、レベルに合った新しい物語を提案します。コンテンツは子供の学習速度に合わせて調整されます。';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Ja implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '1日にどれくらいの時間を使えば十分ですか？';
	@override String get answer => '1日に5〜10分で十分です。短い物語でも定期的に使用すれば効果的です。';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Ja implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '物語はどの年齢層に適していますか？';
	@override String get answer => '物語は子供の年齢とレベルに応じて提供されます。アプリは最初にレベルを決定し、進行に応じて難易度を調整します。';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Ja implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '知らない単語はどうやって学ぶの？';
	@override String get answer => '知らない単語に触れると、その意味、簡単な説明、正しい発音が表示されます。こうして単語は見られ、聞かれます。';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Ja implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'インターネット接続は必要ですか？';
	@override String get answer => '以前にダウンロードしたストーリーはオフラインで読むことができます。新しいコンテンツや更新にはインターネット接続が必要です。';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Ja implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'アプリは無料ですか？';
	@override String get answer => '基本的なストーリーには無料でアクセスできます。より多くのストーリー、高度なカスタマイズ、追加機能はプレミアムパッケージで提供されます。';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Ja implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '物語は音声で聞くことができますか？';
	@override String get answer => 'はい。物語は正しい発音で聞くことができます。これにより、読解力とリスニング力が同時に向上します。';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Ja implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '学習した単語は追跡できますか？';
	@override String get answer => 'はい。学習した単語は記録され、定期的に復習される予定です。これにより、忘却を減らすことができます。';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Ja implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'どのくらいの期間で進捗が見られますか？';
	@override String get answer => '定期的に使用することで、短期間で進捗が見られます。読書習慣が身につくにつれて、語彙力と理解力が向上します。';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogJa implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '機能は利用できません';
	@override String get message => 'この機能は現在利用できません。';
	@override String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeJa implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードが必要です';
	@override String get message => '続行するには紹介コードを入力してください。';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatJa implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '無効な形式';
	@override String get message => '紹介コードは正確に8文字である必要があります。';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedJa implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '既に使用済み';
	@override String get message => 'すでに紹介コードを使用しています。各ユーザーは1つのコードのみを使用できます。';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralJa implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '無効なコード';
	@override String get message => '自分の招待コードは使用できません。友人のコードを使用してください。';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundJa implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードが見つかりません';
	@override String get message => '入力された紹介コードは存在しません。確認してもう一度お試しください。';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorJa implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'エラー';
	@override String get message => '紹介コードの適用中にエラーが発生しました。もう一度お試しください。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'ようこそ ${name}',
			'welcome2' => ({required Object appName}) => 'ようこそ ${appName}',
			'get_started' => '始める',
			'next' => '次へ',
			'back' => '戻る',
			'skip' => 'スキップ',
			'kContinue' => '続ける',
			'logintext' => 'すべての言葉が語られるのを待っている新しい冒険です。',
			'termOfService.text1' => 'swipeに登録することで、',
			'termOfService.link1' => '利用規約',
			'termOfService.text2' => 'に同意したことになります。',
			'termOfService.link2' => 'プライバシーポリシー',
			'termOfService.text3' => 'および',
			'termOfService.link3' => 'クッキーポリシー',
			'termOfService.text4' => 'でデータの処理方法をご確認ください',
			'cookies' => 'クッキーポリシー',
			'privacy' => 'プライバシーポリシー',
			'pressBackAgainToExit' => 'もう一度戻るを押して終了',
			'faq.title' => 'よくある質問',
			'faq.questions.q1.question' => 'このアプリは何のためにありますか？',
			'faq.questions.q1.answer' => '子供たちが楽しい物語を通じて英語を学ぶことを可能にします。単語は文の中で見られ、意味は直感的に学ばれ、繰り返しによって定着します。',
			'faq.questions.q2.question' => 'ここでAIは何をしていますか？',
			'faq.questions.q2.answer' => '子供がどの単語に苦労しているかを分析し、簡単な説明を提供し、レベルに合った新しい物語を提案します。コンテンツは子供の学習速度に合わせて調整されます。',
			'faq.questions.q3.question' => '1日にどれくらいの時間を使えば十分ですか？',
			'faq.questions.q3.answer' => '1日に5〜10分で十分です。短い物語でも定期的に使用すれば効果的です。',
			'faq.questions.q4.question' => '物語はどの年齢層に適していますか？',
			'faq.questions.q4.answer' => '物語は子供の年齢とレベルに応じて提供されます。アプリは最初にレベルを決定し、進行に応じて難易度を調整します。',
			'faq.questions.q5.question' => '知らない単語はどうやって学ぶの？',
			'faq.questions.q5.answer' => '知らない単語に触れると、その意味、簡単な説明、正しい発音が表示されます。こうして単語は見られ、聞かれます。',
			'faq.questions.q6.question' => 'インターネット接続は必要ですか？',
			'faq.questions.q6.answer' => '以前にダウンロードしたストーリーはオフラインで読むことができます。新しいコンテンツや更新にはインターネット接続が必要です。',
			'faq.questions.q7.question' => 'アプリは無料ですか？',
			'faq.questions.q7.answer' => '基本的なストーリーには無料でアクセスできます。より多くのストーリー、高度なカスタマイズ、追加機能はプレミアムパッケージで提供されます。',
			'faq.questions.q8.question' => '物語は音声で聞くことができますか？',
			'faq.questions.q8.answer' => 'はい。物語は正しい発音で聞くことができます。これにより、読解力とリスニング力が同時に向上します。',
			'faq.questions.q9.question' => '学習した単語は追跡できますか？',
			'faq.questions.q9.answer' => 'はい。学習した単語は記録され、定期的に復習される予定です。これにより、忘却を減らすことができます。',
			'faq.questions.q10.question' => 'どのくらいの期間で進捗が見られますか？',
			'faq.questions.q10.answer' => '定期的に使用することで、短期間で進捗が見られます。読書習慣が身につくにつれて、語彙力と理解力が向上します。',
			'good_morning' => 'おはようございます',
			'good_afternoon' => 'こんにちは',
			'good_evening' => 'こんばんは',
			'splash.screen1.title' => 'ストーリーで英語を学ぶ',
			'splash.screen1.description' => '退屈な暗記はありません。短くて楽しいストーリーを通じて、言葉を自然な流れの中で発見しましょう。',
			'splash.screen2.title' => '人工知能があなたを導く',
			'splash.screen2.description' => 'あなたが苦労している単語を追跡し、その意味を説明し、あなたのレベルに合わせた新しいストーリーを提案します。',
			'profile.title' => 'プロフィール',
			'profile.freeVersion' => '無料版',
			'profile.error' => 'エラー',
			'profile.sections.accountSettings' => 'アカウント設定',
			'profile.sections.supportAndOther' => 'サポートとその他',
			'profile.menu.editProfile' => 'プロフィールを編集',
			'profile.menu.notifications' => '通知',
			'profile.menu.premium' => 'プレミアム',
			'profile.menu.appLanguage' => 'アプリの言語',
			'profile.menu.shareWithFriends' => '友達と共有',
			'profile.menu.enterInviteCode' => '招待コードを入力',
			'profile.menu.rateUs' => '評価する',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'ログアウト',
			'profile.manage' => '管理',
			'profile.logoutDialog.title' => 'ログアウトしようとしています',
			'profile.logoutDialog.message' => 'またお会いしましょう！呼吸エクササイズを追跡し続けます。',
			'profile.logoutDialog.logoutButton' => 'ログアウト',
			'profile.logoutDialog.cancelButton' => 'キャンセル',
			'home.premium' => 'プレミアム！',
			'home.seeMore' => 'もっと見る',
			'home.premiumPlan.title' => 'プレミアムプラン',
			'home.premiumPlan.description' => 'AIチャットボットのロックを解除し、\nすべてのプレミアム機能を取得',
			'home.premiumPlan.button' => 'プレミアムを取得',
			'home.premiumPlan.dialog.title' => '機能は利用できません',
			'home.premiumPlan.dialog.message' => 'この機能は現在利用できません。',
			'home.premiumPlan.dialog.button' => 'OK',
			'editProfile.title' => 'プロフィールを編集',
			'editProfile.changePhoto' => '写真を変更',
			'editProfile.fullName' => 'フルネーム',
			'editProfile.email' => 'メール',
			'editProfile.age' => '年齢',
			'editProfile.save' => '保存',
			'editProfile.saving' => '保存中...',
			'editProfile.updateSuccess' => 'プロフィールが正常に更新されました',
			'editProfile.updateError' => 'プロフィールの更新中にエラーが発生しました',
			'editProfile.deleteAccount' => 'アカウントを削除',
			'notifications.title' => '通知',
			'notifications.emptyTitle' => 'まだ通知はありません',
			'notifications.emptyDescription' => '学習の旅に関する重要な更新があるときにお知らせします。',
			'notifications.premiumBannerTitle' => 'プレミアム特典を\nお見逃しなく！',
			'notifications.premiumBannerDescription' => 'プレミアム購読者として機会をつかみましょう。',
			'share.title' => '友達と共有',
			'share.mainTitle' => '平和を共有する',
			'share.descriptionPart1' => '友達を招待して一緒に呼吸しましょう。\n招待ごとに、両方が ',
			'share.descriptionPart2' => '1週間プレミアム',
			'share.descriptionPart3' => 'を取得',
			'share.yourReferralCode' => 'あなたの紹介コード',
			'share.codeCopied' => 'コードがコピーされました！',
			'share.copyCode' => 'コードをコピー',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'ゲストとして続行',
			'auth.signInFailed' => ({required Object error}) => 'サインインに失敗しました：${error}',
			'cancel' => 'キャンセル',
			'deleteAccount' => 'アカウントを削除',
			'deleteDialogTitle' => 'アカウントを削除してもよろしいですか？',
			'deleteDialogDescription' => 'このアクションは元に戻せず、すべてのエクササイズ履歴とデータが永久に削除されます。',
			'deleteError' => 'アカウントの削除中にエラーが発生しました。もう一度お試しください。',
			'enterInvitationCode' => '招待コードを入力',
			'inviteFriends' => '友達から受け取った招待コードを入力してください。\n指定されたフィールドに入力してください',
			'twoDaysPremium' => '7日間プレミアム',
			'advantage' => '\nその利点を享受するために。',
			'send' => '送信',
			'referralCode.inputPlaceholder' => '8桁のコードを入力',
			'referralCode.applying' => 'コードを適用中...',
			'referralCode.success.title' => '成功！',
			'referralCode.success.message' => '紹介コードが正常に適用されました！あなたとあなたの友人は1週間のプレミアムを受け取りました。',
			'referralCode.errors.missingCode.title' => 'コードが必要です',
			'referralCode.errors.missingCode.message' => '続行するには紹介コードを入力してください。',
			'referralCode.errors.invalidFormat.title' => '無効な形式',
			'referralCode.errors.invalidFormat.message' => '紹介コードは正確に8文字である必要があります。',
			'referralCode.errors.alreadyUsed.title' => '既に使用済み',
			'referralCode.errors.alreadyUsed.message' => 'すでに紹介コードを使用しています。各ユーザーは1つのコードのみを使用できます。',
			'referralCode.errors.selfReferral.title' => '無効なコード',
			'referralCode.errors.selfReferral.message' => '自分の招待コードは使用できません。友人のコードを使用してください。',
			'referralCode.errors.codeNotFound.title' => 'コードが見つかりません',
			'referralCode.errors.codeNotFound.message' => '入力された紹介コードは存在しません。確認してもう一度お試しください。',
			'referralCode.errors.genericError.title' => 'エラー',
			'referralCode.errors.genericError.message' => '紹介コードの適用中にエラーが発生しました。もう一度お試しください。',
			'deleteNotifications' => '通知を削除',
			'deleteNotificationsDescription' => 'すべての通知を削除してもよろしいですか？\nこのアクションは元に戻せず、取り消すことはできません。',
			'deleteAll' => 'すべて削除',
			'appLanguage' => 'アプリの言語',
			'selectLanguage' => '希望する言語を選択してください',
			'save' => '保存',
			'languageOptions.english' => '英語',
			'languageOptions.german' => 'ドイツ語',
			'languageOptions.italian' => 'イタリア語',
			'languageOptions.french' => 'フランス語',
			'languageOptions.japanese' => '日本語',
			'languageOptions.spanish' => 'スペイン語',
			'languageOptions.russian' => 'ロシア語',
			'languageOptions.turkish' => 'トルコ語',
			'languageOptions.korean' => '韓国語',
			'languageOptions.hindi' => 'ヒンディー語',
			'languageOptions.portuguese' => 'ポルトガル語',
			_ => null,
		};
	}
}
