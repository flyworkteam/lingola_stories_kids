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
class TranslationsPt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Bem-vindo ${name}';
	@override String welcome2({required Object appName}) => 'Bem-vindo ao ${appName}';
	@override String get get_started => 'Começar';
	@override String get next => 'Próximo';
	@override String get back => 'Voltar';
	@override String get skip => 'Pular';
	@override String get kContinue => 'Continuar';
	@override String get logintext => 'Onde cada palavra é uma nova aventura esperando para ser contada.';
	@override late final _TranslationsTermOfServicePt termOfService = _TranslationsTermOfServicePt._(_root);
	@override String get cookies => 'Política de Cookies';
	@override String get privacy => 'Política de Privacidade';
	@override late final _TranslationsOnboardingPt onboarding = _TranslationsOnboardingPt._(_root);
	@override String get pressBackAgainToExit => 'Pressione voltar novamente para sair';
	@override late final _TranslationsFaqPt faq = _TranslationsFaqPt._(_root);
	@override String get good_morning => 'Bom dia';
	@override String get good_afternoon => 'Boa tarde';
	@override String get good_evening => 'Boa noite';
	@override late final _TranslationsSplashPt splash = _TranslationsSplashPt._(_root);
	@override late final _TranslationsProfilePt profile = _TranslationsProfilePt._(_root);
	@override late final _TranslationsHomePt home = _TranslationsHomePt._(_root);
	@override late final _TranslationsAllStoriesPt allStories = _TranslationsAllStoriesPt._(_root);
	@override late final _TranslationsStoriesPt stories = _TranslationsStoriesPt._(_root);
	@override late final _TranslationsLibraryPt library = _TranslationsLibraryPt._(_root);
	@override late final _TranslationsBottomNavPt bottomNav = _TranslationsBottomNavPt._(_root);
	@override late final _TranslationsDayStreakPt dayStreak = _TranslationsDayStreakPt._(_root);
	@override late final _TranslationsStoryDetailsPt storyDetails = _TranslationsStoryDetailsPt._(_root);
	@override late final _TranslationsSharePt share = _TranslationsSharePt._(_root);
	@override String get delete => 'Excluir';
	@override late final _TranslationsEditProfilePt editProfile = _TranslationsEditProfilePt._(_root);
	@override late final _TranslationsNotificationsPt notifications = _TranslationsNotificationsPt._(_root);
	@override late final _TranslationsAuthPt auth = _TranslationsAuthPt._(_root);
	@override String get cancel => 'Cancelar';
	@override String get deleteAccount => 'Excluir Conta';
	@override String get deleteDialogTitle => 'Tem certeza de que deseja excluir sua conta?';
	@override String get deleteDialogDescription => 'Esta ação é irreversível e excluirá permanentemente todo o seu histórico de exercícios e dados.';
	@override String get deleteError => 'Ocorreu um erro ao excluir sua conta. Por favor, tente novamente.';
	@override String get enterInvitationCode => 'Inserir código de convite';
	@override String get inviteFriends => 'Insira o código de convite recebido de um amigo.\nDigite-o no campo designado';
	@override String get twoDaysPremium => '7 dias Premium';
	@override String get advantage => '\npara aproveitar seus benefícios.';
	@override String get send => 'Enviar';
	@override late final _TranslationsReferralCodePt referralCode = _TranslationsReferralCodePt._(_root);
	@override String get deleteNotifications => 'Excluir Notificações';
	@override String get deleteNotificationsDescription => 'Tem certeza de que deseja excluir todas as\nsuas notificações? Esta ação é irreversível.';
	@override String get deleteAll => 'Excluir Tudo';
	@override String get appLanguage => 'Idioma do Aplicativo';
	@override String get selectLanguage => 'Selecione seu idioma preferido';
	@override String get save => 'Salvar';
	@override late final _TranslationsLanguageOptionsPt languageOptions = _TranslationsLanguageOptionsPt._(_root);
}

// Path: termOfService
class _TranslationsTermOfServicePt implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServicePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Ao se inscrever no swipe, você concorda com nossos ';
	@override String get link1 => 'Termos de Serviço';
	@override String get text2 => '. Saiba como processamos seus dados em nossa ';
	@override String get link2 => 'Política de Privacidade';
	@override String get text3 => ' e ';
	@override String get link3 => 'Política de Cookies';
	@override String get text4 => '';
	@override late final _TranslationsTermOfServicePrivacyPolicyPt privacyPolicy = _TranslationsTermOfServicePrivacyPolicyPt._(_root);
	@override late final _TranslationsTermOfServiceTermsOfServicePt termsOfService = _TranslationsTermOfServiceTermsOfServicePt._(_root);
	@override late final _TranslationsTermOfServiceCookiePolicyPt cookiePolicy = _TranslationsTermOfServiceCookiePolicyPt._(_root);
}

// Path: onboarding
class _TranslationsOnboardingPt implements TranslationsOnboardingEn {
	_TranslationsOnboardingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingStep1Pt step1 = _TranslationsOnboardingStep1Pt._(_root);
	@override late final _TranslationsOnboardingStep2Pt step2 = _TranslationsOnboardingStep2Pt._(_root);
	@override late final _TranslationsOnboardingLoadingPt loading = _TranslationsOnboardingLoadingPt._(_root);
}

// Path: faq
class _TranslationsFaqPt implements TranslationsFaqEn {
	_TranslationsFaqPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perguntas Frequentes';
	@override late final _TranslationsFaqQuestionsPt questions = _TranslationsFaqQuestionsPt._(_root);
}

// Path: splash
class _TranslationsSplashPt implements TranslationsSplashEn {
	_TranslationsSplashPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Pt screen1 = _TranslationsSplashScreen1Pt._(_root);
	@override late final _TranslationsSplashScreen2Pt screen2 = _TranslationsSplashScreen2Pt._(_root);
}

// Path: profile
class _TranslationsProfilePt implements TranslationsProfileEn {
	_TranslationsProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get freeVersion => 'Versão Gratuita';
	@override String get error => 'Erro';
	@override String get passive => 'Passivo';
	@override late final _TranslationsProfileSectionsPt sections = _TranslationsProfileSectionsPt._(_root);
	@override late final _TranslationsProfileMenuPt menu = _TranslationsProfileMenuPt._(_root);
	@override String get manage => 'GERENCIAR';
	@override late final _TranslationsProfileLogoutDialogPt logoutDialog = _TranslationsProfileLogoutDialogPt._(_root);
}

// Path: home
class _TranslationsHomePt implements TranslationsHomeEn {
	_TranslationsHomePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get seeMore => 'Ver mais';
	@override String get pickUpWhereYouLeftOff => 'Continue de onde parou';
	@override String get premiumSection => 'Premium';
	@override String get history => 'Histórico';
	@override String get librarySection => 'Biblioteca';
	@override String get libraryDescription => 'As palavras salvas aparecerão aqui.';
	@override String get upgradeToPremium => 'Atualizar para Premium';
	@override String get unlimitedStories => 'Histórias ilimitadas e sem anúncios';
	@override late final _TranslationsHomePremiumPlanPt premiumPlan = _TranslationsHomePremiumPlanPt._(_root);
}

// Path: allStories
class _TranslationsAllStoriesPt implements TranslationsAllStoriesEn {
	_TranslationsAllStoriesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Todas as histórias';
	@override String get noStoriesFound => 'Nenhuma história encontrada';
	@override String get selectFilter => 'Selecionar filtro';
	@override String get category => 'Categoria';
	@override String get categorySubtitle => 'Por favor, selecione a categoria que deseja ler';
	@override String get apply => 'Aplicar';
}

// Path: stories
class _TranslationsStoriesPt implements TranslationsStoriesEn {
	_TranslationsStoriesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Histórias';
	@override String get popularStories => 'Histórias populares';
	@override String get recommendForYou => 'Recomendado para você';
	@override String get allStories => 'Todas as histórias';
	@override String get seeAll => 'Ver tudo';
}

// Path: library
class _TranslationsLibraryPt implements TranslationsLibraryEn {
	_TranslationsLibraryPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biblioteca';
	@override String wordCount({required Object count}) => '${count} Palavras';
	@override String get popularWords => 'Palavras populares';
	@override String get allWords => 'Todas as palavras';
	@override String get searchWord => 'Buscar palavra';
	@override String get searchHint => 'Por favor, digite uma palavra…';
}

// Path: bottomNav
class _TranslationsBottomNavPt implements TranslationsBottomNavEn {
	_TranslationsBottomNavPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Início';
	@override String get stories => 'Histórias';
	@override String get library => 'Biblioteca';
	@override String get profile => 'Perfil';
}

// Path: dayStreak
class _TranslationsDayStreakPt implements TranslationsDayStreakEn {
	_TranslationsDayStreakPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sequência do dia!';
	@override late final _TranslationsDayStreakDaysPt days = _TranslationsDayStreakDaysPt._(_root);
}

// Path: storyDetails
class _TranslationsStoryDetailsPt implements TranslationsStoryDetailsEn {
	_TranslationsStoryDetailsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Introdução';
	@override String get saved => 'Salvo';
	@override String get removed => 'Removido';
	@override String get storyAddedToLibrary => 'A história foi adicionada à sua biblioteca.';
	@override String get storyRemovedFromLibrary => 'A história foi removida da biblioteca.';
	@override String get wordAddedToLibrary => 'A palavra foi adicionada à biblioteca. Desfazer';
	@override String get successfully => 'Com sucesso';
	@override String get ratingSubmitted => 'Sua avaliação foi enviada com sucesso.';
	@override String get warning => 'Aviso';
	@override String get fillAllFields => 'Por favor, preencha todos os campos.';
	@override String get messageSent => 'Sua mensagem foi enviada com sucesso.';
	@override String get translate => 'Traduzir';
	@override String get speak => 'Falar';
	@override String get like => 'Curtir';
	@override String get save => 'Salvar';
	@override String get feedback => 'Feedback';
	@override String get rating => 'Avaliação';
	@override String get stop => 'Parar';
	@override String get start => 'Iniciar';
	@override String get listen => 'Ouvir';
	@override String get translation => 'Tradução';
	@override String get translating => 'Traduzindo...';
	@override String get saveToLibrary => 'Salvar na biblioteca';
	@override String get rateThisStory => 'Avaliar esta história';
	@override String get enjoyStory => 'O quanto você gostou desta história?';
	@override String get send => 'Enviar';
	@override String get subject => 'Assunto';
	@override late final _TranslationsStoryDetailsFeedbackSubjectsPt feedbackSubjects = _TranslationsStoryDetailsFeedbackSubjectsPt._(_root);
}

// Path: share
class _TranslationsSharePt implements TranslationsShareEn {
	_TranslationsSharePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartilhar com Amigos';
	@override String get mainTitle => 'Compartilhe a Paz';
	@override String get descriptionPart1 => 'Convide amigos para respirar juntos.\nPara cada convite, ambos ganham ';
	@override String get descriptionPart2 => '1 semana Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'SEU CÓDIGO DE REFERÊNCIA';
	@override String get codeCopied => 'Código copiado!';
	@override String get copyCode => 'Copiar Código';
	@override String get inviteDescription => 'Convide seus amigos e aprenda\njuntos';
	@override String get linkCopied => 'Copiado';
	@override String get linkCopiedMessage => 'O link foi copiado para a área de transferência.';
}

// Path: editProfile
class _TranslationsEditProfilePt implements TranslationsEditProfileEn {
	_TranslationsEditProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override String get changePhoto => 'Alterar Avatar';
	@override String get learnLanguage => 'Selecionar Idioma de Aprendizado';
	@override String get fullName => 'Nome Completo';
	@override String get email => 'E-mail';
	@override String get age => 'Idade';
	@override String get save => 'Salvar';
	@override String get saving => 'Salvando...';
	@override String get updateSuccess => 'Perfil atualizado com sucesso';
	@override String get updateError => 'Ocorreu um erro ao atualizar o perfil';
	@override String get deleteAccount => 'Excluir Conta';
}

// Path: notifications
class _TranslationsNotificationsPt implements TranslationsNotificationsEn {
	_TranslationsNotificationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificações';
	@override String get emptyTitle => 'Ainda não há notificações';
	@override String get emptyDescription => 'Nós o notificaremos quando houver uma atualização importante sobre sua jornada de aprendizado.';
	@override String get premiumBannerTitle => 'Não perca os\nbenefícios Premium!';
	@override String get premiumBannerDescription => 'Aproveite as oportunidades como assinante Premium.';
}

// Path: auth
class _TranslationsAuthPt implements TranslationsAuthEn {
	_TranslationsAuthPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Continuar como Convidado';
	@override String signInFailed({required Object error}) => 'Falha ao entrar: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodePt implements TranslationsReferralCodeEn {
	_TranslationsReferralCodePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Insira o código de 8 caracteres';
	@override String get applying => 'Aplicando código...';
	@override late final _TranslationsReferralCodeSuccessPt success = _TranslationsReferralCodeSuccessPt._(_root);
	@override late final _TranslationsReferralCodeErrorsPt errors = _TranslationsReferralCodeErrorsPt._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsPt implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get english => 'Inglês';
	@override String get german => 'Alemão';
	@override String get italian => 'Italiano';
	@override String get french => 'Francês';
	@override String get japanese => 'Japonês';
	@override String get spanish => 'Espanhol';
	@override String get russian => 'Russo';
	@override String get turkish => 'Turco';
	@override String get korean => 'Coreano';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Português';
}

// Path: termOfService.privacyPolicy
class _TranslationsTermOfServicePrivacyPolicyPt implements TranslationsTermOfServicePrivacyPolicyEn {
	_TranslationsTermOfServicePrivacyPolicyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Política de Privacidade';
	@override String get lastUpdated => 'Última atualização: 2025';
	@override String get intro => 'Lingola Stories Kids adota a privacidade infantil como princípio fundamental.';
	@override String get section1Title => '1. INFORMAÇÕES COLETADAS';
	@override String get section1sub1Title => '1.1 Dados fornecidos pelo usuário';
	@override String get section1sub1Body => 'Apelido ou nome de perfil.\nEmail (conta dos pais e suporte).\nInformações de idade.\nNível de idioma, histórias lidas e palavras aprendidas.\n\nNota: Nunca usados para análise de saúde.';
	@override String get section1sub2Title => '1.2 Dados coletados automaticamente';
	@override String get section1sub2Body => 'Tipo de dispositivo, OS e desempenho do app. Localização precisa NÃO é coletada.';
	@override String get section2Title => '2. FINALIDADES DO TRATAMENTO';
	@override String get section2Body => 'Seus dados são usados para:\n\n- Fornecer conteúdo seguro por idade.\n- Personalizar o aprendizado.\n- Melhorar o desempenho.\n- Cumprir obrigações legais.';
	@override String get section3Title => '3. RETENÇÃO E EXCLUSÃO';
	@override String get section3Body => 'Dados armazenados enquanto a conta estiver ativa. Registros de suporte por 12 meses. Ao excluir conta, dados são apagados irreversivelmente.';
	@override String get section4Title => '4. DIREITOS DO USUÁRIO';
	@override String get section4Body => 'Sob o RGPD/LGPD, os pais podem solicitar acesso, correção ou exclusão. Envie para: support@fly-work.com.';
	@override String get section5Title => '5. PRIVACIDADE INFANTIL';
	@override String get section5Body => 'Para usuários de 6 anos ou mais. Consentimento parental obrigatório para menores de 13 anos.';
	@override String get section6Title => '6. CONTATO';
	@override String get section6Body => 'Dúvidas: support@fly-work.com';
}

// Path: termOfService.termsOfService
class _TranslationsTermOfServiceTermsOfServicePt implements TranslationsTermOfServiceTermsOfServiceEn {
	_TranslationsTermOfServiceTermsOfServicePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Termos de Serviço';
	@override String get lastUpdated => 'Última atualização: 2025';
	@override String get intro => 'Estes Termos regem o uso do Lingola Stories Kids. Ao usar o app, você aceita estes termos.';
	@override String get disclaimer => 'Aviso: Lingola Stories Kids é uma ferramenta educacional, não fornece certificação acadêmica.';
	@override String get section1Title => '1. ESCOPO DO SERVIÇO';
	@override String get section1Body => 'O app oferece aprendizado baseado em histórias:\n\n- Histórias e recomendações com IA.\n- Leitura por idade e nível.\n- Suporte de vocabulário e pronúncia.';
	@override String get section2Title => '2. CONDIÇÕES DE USO E IDADE';
	@override String get section2Body => 'Mínimo 6 anos.\nMenores de 18 sob supervisão dos pais.\nInformações da conta precisas e atualizadas.';
	@override String get section3Title => '3. USOS PROIBIDOS';
	@override String get section3Body => 'Cópia não autorizada, engenharia reversa e uso comercial são estritamente proibidos.';
	@override String get section4Title => '4. ASSINATURAS E PAGAMENTOS';
	@override String get section4Body => 'Recursos premium seguem as políticas da App Store e Google Play.';
	@override String get section5Title => '5. PROPRIEDADE INTELECTUAL';
	@override String get section5Body => 'Todo conteúdo pertence à Lingola Stories Kids.';
	@override String get section6Title => '6. LIMITAÇÃO DE RESPONSABILIDADE';
	@override String get section6Body => 'O app é fornecido no estado em que se encontra.';
	@override String get section7Title => '7. LEI APLICÁVEL';
	@override String get section7Body => 'Regido pelas leis da República da Turquia. Tribunais de Istanbul têm jurisdição.';
	@override String get section8Title => '8. CONTATO';
	@override String get section8Body => 'Dúvidas: support@fly-work.com';
}

// Path: termOfService.cookiePolicy
class _TranslationsTermOfServiceCookiePolicyPt implements TranslationsTermOfServiceCookiePolicyEn {
	_TranslationsTermOfServiceCookiePolicyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Política de Cookies';
	@override String get lastUpdated => 'Última atualização: 2025';
	@override String get intro => 'Esta política explica as tecnologias digitais usadas no app.';
	@override String get important => 'IMPORTANTE: Privacidade infantil é nosso princípio fundamental. App para usuários de 6 anos ou mais.';
	@override String get section1Title => '1. O QUE SÃO COOKIES?';
	@override String get section1Body => 'Cookies e tecnologias similares são pequenos componentes digitais que ajudam o app. Não identificam você diretamente.';
	@override String get section2Title => '2. QUAIS TECNOLOGIAS USAMOS?';
	@override String get section2Body => 'Necessárias: sessões e segurança.\n\nDesempenho e análise: histórias lidas, dados anônimos.\n\nPersonalização: prefere idioma e nível de leitura.';
	@override String get section3Title => '3. POR QUE AS USAMOS?';
	@override String get section3Body => '- Funcionamento seguro.\n- Leitura mais fluida.\n- Lembrar configurações.\n- Identificar recursos futuros.';
	@override String get section4Title => '4. TECNOLOGIAS DE TERCEIROS';
	@override String get section4Body => 'Aplicamos uso mínimo de dados com parceiros terceiros.';
	@override String get section5Title => '5. CONTROLE E GERENCIAMENTO';
	@override String get section5Body => 'Pais podem limitar essas tecnologias pelas configurações do dispositivo.';
	@override String get section6Title => '6. CONTATO';
	@override String get section6Body => 'Dúvidas: support@fly-work.com';
}

// Path: onboarding.step1
class _TranslationsOnboardingStep1Pt implements TranslationsOnboardingStep1En {
	_TranslationsOnboardingStep1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual idioma você gostaria\nde aprender?';
	@override String get subtitle => 'Por favor, selecione o idioma ou idiomas\nque você deseja aprender.';
}

// Path: onboarding.step2
class _TranslationsOnboardingStep2Pt implements TranslationsOnboardingStep2En {
	_TranslationsOnboardingStep2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Que tipo de histórias\nvocê gosta?';
	@override String get subtitle => 'Por favor, indique sua preferência.';
	@override late final _TranslationsOnboardingStep2CategoriesPt categories = _TranslationsOnboardingStep2CategoriesPt._(_root);
}

// Path: onboarding.loading
class _TranslationsOnboardingLoadingPt implements TranslationsOnboardingLoadingEn {
	_TranslationsOnboardingLoadingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get titlePart1 => 'Sua conta pessoal está\n';
	@override String get titlePart2 => 'sendo criada';
	@override String get subtitle => 'Estamos criando histórias maravilhosas para você';
	@override String get optimization => 'Otimização';
}

// Path: faq.questions
class _TranslationsFaqQuestionsPt implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Pt q1 = _TranslationsFaqQuestionsQ1Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ2Pt q2 = _TranslationsFaqQuestionsQ2Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ3Pt q3 = _TranslationsFaqQuestionsQ3Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ4Pt q4 = _TranslationsFaqQuestionsQ4Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ5Pt q5 = _TranslationsFaqQuestionsQ5Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ6Pt q6 = _TranslationsFaqQuestionsQ6Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ7Pt q7 = _TranslationsFaqQuestionsQ7Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ8Pt q8 = _TranslationsFaqQuestionsQ8Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ9Pt q9 = _TranslationsFaqQuestionsQ9Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ10Pt q10 = _TranslationsFaqQuestionsQ10Pt._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Pt implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aprenda inglês com histórias';
	@override String get description => 'Sem memorização entediante. Descubra palavras em seu fluxo natural por meio de histórias curtas e divertidas.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Pt implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inteligência Artificial Guia Você';
	@override String get description => 'Ela rastreia as palavras com as quais você tem dificuldade, explica seu significado e sugere novas histórias adaptadas ao seu nível.';
}

// Path: profile.sections
class _TranslationsProfileSectionsPt implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'CONFIGURAÇÕES DA CONTA';
	@override String get general => 'GERAL';
}

// Path: profile.menu
class _TranslationsProfileMenuPt implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Editar Perfil';
	@override String get notifications => 'Notificações';
	@override String get premium => 'Premium';
	@override String get appLanguage => 'Idioma do Aplicativo';
	@override String get shareWithFriends => 'Compartilhar com Amigos';
	@override String get enterInviteCode => 'Inserir Código de Convite';
	@override String get rateUs => 'Avalie-nos';
	@override String get faq => 'FAQ';
	@override String get logout => 'Sair';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogPt implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você está prestes a sair';
	@override String get message => 'Nos vemos de novo! Continuaremos rastreando seus exercícios de respiração.';
	@override String get logoutButton => 'Sair';
	@override String get cancelButton => 'Cancelar';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanPt implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plano Premium';
	@override String get description => 'Desbloqueie seu chatbot de IA e\nobtenha todos os recursos premium';
	@override String get button => 'Obter Premium';
	@override late final _TranslationsHomePremiumPlanDialogPt dialog = _TranslationsHomePremiumPlanDialogPt._(_root);
}

// Path: dayStreak.days
class _TranslationsDayStreakDaysPt implements TranslationsDayStreakDaysEn {
	_TranslationsDayStreakDaysPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get su => 'Do';
	@override String get mo => 'Se';
	@override String get tu => 'Te';
	@override String get we => 'Qu';
	@override String get th => 'Qu';
	@override String get fr => 'Se';
	@override String get sa => 'Sá';
}

// Path: storyDetails.feedbackSubjects
class _TranslationsStoryDetailsFeedbackSubjectsPt implements TranslationsStoryDetailsFeedbackSubjectsEn {
	_TranslationsStoryDetailsFeedbackSubjectsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get bugReport => 'Relatório de bug';
	@override String get storyContent => 'Conteúdo da história';
	@override String get audioIssue => 'Problema de áudio';
	@override String get suggestion => 'Sugestão';
	@override String get other => 'Outro';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessPt implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sucesso!';
	@override String get message => 'Código de referência aplicado com sucesso! Você e seu amigo receberam 1 semana de premium.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsPt implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodePt missingCode = _TranslationsReferralCodeErrorsMissingCodePt._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatPt invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatPt._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedPt alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedPt._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralPt selfReferral = _TranslationsReferralCodeErrorsSelfReferralPt._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundPt codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundPt._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorPt genericError = _TranslationsReferralCodeErrorsGenericErrorPt._(_root);
}

// Path: onboarding.step2.categories
class _TranslationsOnboardingStep2CategoriesPt implements TranslationsOnboardingStep2CategoriesEn {
	_TranslationsOnboardingStep2CategoriesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get space => '🚀 Aventuras Espaciais';
	@override String get magic => '🦄 Mundos Mágicos';
	@override String get detectives => '🕵️ Pequenos Detetives';
	@override String get animals => '🐾 Amigos Adoráveis';
	@override String get dinosaurs => '🦖 A Era dos Dinossauros';
	@override String get superhero => '🦸 Super-heróis';
	@override String get underwater => '🌊 Reino Submarino';
	@override String get fairytale => '🏰 Contos de Príncipe e Princesa';
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Pt implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Para que serve este aplicativo?';
	@override String get answer => 'Este aplicativo ajuda crianças a aprender inglês com histórias divertidas. As palavras aparecem em contexto, o significado é apreendido naturalmente e, com repetições, fixa-se na memória.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Pt implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'O que a inteligência artificial faz aqui?';
	@override String get answer => 'Analisa em quais palavras a criança tem dificuldade, fornece explicações simples e sugere novas histórias adequadas ao seu nível. O conteúdo é adaptado ao ritmo de aprendizagem da criança.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Pt implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quanto tempo por dia é suficiente?';
	@override String get answer => '5–10 minutos por dia são suficientes. Mesmo uma história curta é eficaz para uma aprendizagem regular.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Pt implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Para que faixa etária são adequadas as histórias?';
	@override String get answer => 'As histórias são apresentadas conforme a idade e o nível das crianças. O aplicativo determina o nível inicial e ajusta a dificuldade conforme o progresso.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Pt implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Como a criança aprende palavras desconhecidas?';
	@override String get answer => 'Ao tocar em uma palavra desconhecida, é exibido seu significado, uma explicação simples e a pronúncia correta. Assim, a palavra é lida e ouvida.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Pt implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'É necessária conexão com a internet?';
	@override String get answer => 'Histórias previamente baixadas podem ser lidas offline. Novos conteúdos e atualizações exigem conexão com a internet.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Pt implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'O aplicativo é gratuito?';
	@override String get answer => 'Há acesso gratuito às histórias básicas. Mais histórias, personalização avançada e recursos extras estão disponíveis no plano premium.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Pt implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'As histórias podem ser ouvidas em áudio?';
	@override String get answer => 'Sim. As histórias podem ser ouvidas com pronúncia correta, permitindo desenvolver leitura e compreensão auditiva simultaneamente.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Pt implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'As palavras aprendidas podem ser acompanhadas?';
	@override String get answer => 'Sim. As palavras aprendidas são registradas e programadas para revisões em intervalos determinados, ajudando a reduzir o esquecimento.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Pt implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Em quanto tempo se vê progresso?';
	@override String get answer => 'Com uso regular, é possível perceber progresso em pouco tempo. À medida que o hábito de leitura aumenta, o vocabulário e a compreensão melhoram.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogPt implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recurso não disponível';
	@override String get message => 'Este recurso não está disponível no momento.';
	@override String get button => 'OK';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodePt implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código necessário';
	@override String get message => 'Por favor, insira um código de referência para continuar.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatPt implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Formato inválido';
	@override String get message => 'O código de referência deve ter exatamente 8 caracteres.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedPt implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Já utilizado';
	@override String get message => 'Você já usou um código de referência. Cada usuário só pode usar um código.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralPt implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código inválido';
	@override String get message => 'Você não pode usar seu próprio código de convite. Por favor, use um código de um amigo.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundPt implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código não encontrado';
	@override String get message => 'O código de referência inserido não existe. Por favor, verifique e tente novamente.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorPt implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erro';
	@override String get message => 'Ocorreu um erro ao aplicar o código de referência. Por favor, tente novamente.';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Bem-vindo ${name}',
			'welcome2' => ({required Object appName}) => 'Bem-vindo ao ${appName}',
			'get_started' => 'Começar',
			'next' => 'Próximo',
			'back' => 'Voltar',
			'skip' => 'Pular',
			'kContinue' => 'Continuar',
			'logintext' => 'Onde cada palavra é uma nova aventura esperando para ser contada.',
			'termOfService.text1' => 'Ao se inscrever no swipe, você concorda com nossos ',
			'termOfService.link1' => 'Termos de Serviço',
			'termOfService.text2' => '. Saiba como processamos seus dados em nossa ',
			'termOfService.link2' => 'Política de Privacidade',
			'termOfService.text3' => ' e ',
			'termOfService.link3' => 'Política de Cookies',
			'termOfService.text4' => '',
			'termOfService.privacyPolicy.title' => 'Política de Privacidade',
			'termOfService.privacyPolicy.lastUpdated' => 'Última atualização: 2025',
			'termOfService.privacyPolicy.intro' => 'Lingola Stories Kids adota a privacidade infantil como princípio fundamental.',
			'termOfService.privacyPolicy.section1Title' => '1. INFORMAÇÕES COLETADAS',
			'termOfService.privacyPolicy.section1sub1Title' => '1.1 Dados fornecidos pelo usuário',
			'termOfService.privacyPolicy.section1sub1Body' => 'Apelido ou nome de perfil.\nEmail (conta dos pais e suporte).\nInformações de idade.\nNível de idioma, histórias lidas e palavras aprendidas.\n\nNota: Nunca usados para análise de saúde.',
			'termOfService.privacyPolicy.section1sub2Title' => '1.2 Dados coletados automaticamente',
			'termOfService.privacyPolicy.section1sub2Body' => 'Tipo de dispositivo, OS e desempenho do app. Localização precisa NÃO é coletada.',
			'termOfService.privacyPolicy.section2Title' => '2. FINALIDADES DO TRATAMENTO',
			'termOfService.privacyPolicy.section2Body' => 'Seus dados são usados para:\n\n- Fornecer conteúdo seguro por idade.\n- Personalizar o aprendizado.\n- Melhorar o desempenho.\n- Cumprir obrigações legais.',
			'termOfService.privacyPolicy.section3Title' => '3. RETENÇÃO E EXCLUSÃO',
			'termOfService.privacyPolicy.section3Body' => 'Dados armazenados enquanto a conta estiver ativa. Registros de suporte por 12 meses. Ao excluir conta, dados são apagados irreversivelmente.',
			'termOfService.privacyPolicy.section4Title' => '4. DIREITOS DO USUÁRIO',
			'termOfService.privacyPolicy.section4Body' => 'Sob o RGPD/LGPD, os pais podem solicitar acesso, correção ou exclusão. Envie para: support@fly-work.com.',
			'termOfService.privacyPolicy.section5Title' => '5. PRIVACIDADE INFANTIL',
			'termOfService.privacyPolicy.section5Body' => 'Para usuários de 6 anos ou mais. Consentimento parental obrigatório para menores de 13 anos.',
			'termOfService.privacyPolicy.section6Title' => '6. CONTATO',
			'termOfService.privacyPolicy.section6Body' => 'Dúvidas: support@fly-work.com',
			'termOfService.termsOfService.title' => 'Termos de Serviço',
			'termOfService.termsOfService.lastUpdated' => 'Última atualização: 2025',
			'termOfService.termsOfService.intro' => 'Estes Termos regem o uso do Lingola Stories Kids. Ao usar o app, você aceita estes termos.',
			'termOfService.termsOfService.disclaimer' => 'Aviso: Lingola Stories Kids é uma ferramenta educacional, não fornece certificação acadêmica.',
			'termOfService.termsOfService.section1Title' => '1. ESCOPO DO SERVIÇO',
			'termOfService.termsOfService.section1Body' => 'O app oferece aprendizado baseado em histórias:\n\n- Histórias e recomendações com IA.\n- Leitura por idade e nível.\n- Suporte de vocabulário e pronúncia.',
			'termOfService.termsOfService.section2Title' => '2. CONDIÇÕES DE USO E IDADE',
			'termOfService.termsOfService.section2Body' => 'Mínimo 6 anos.\nMenores de 18 sob supervisão dos pais.\nInformações da conta precisas e atualizadas.',
			'termOfService.termsOfService.section3Title' => '3. USOS PROIBIDOS',
			'termOfService.termsOfService.section3Body' => 'Cópia não autorizada, engenharia reversa e uso comercial são estritamente proibidos.',
			'termOfService.termsOfService.section4Title' => '4. ASSINATURAS E PAGAMENTOS',
			'termOfService.termsOfService.section4Body' => 'Recursos premium seguem as políticas da App Store e Google Play.',
			'termOfService.termsOfService.section5Title' => '5. PROPRIEDADE INTELECTUAL',
			'termOfService.termsOfService.section5Body' => 'Todo conteúdo pertence à Lingola Stories Kids.',
			'termOfService.termsOfService.section6Title' => '6. LIMITAÇÃO DE RESPONSABILIDADE',
			'termOfService.termsOfService.section6Body' => 'O app é fornecido no estado em que se encontra.',
			'termOfService.termsOfService.section7Title' => '7. LEI APLICÁVEL',
			'termOfService.termsOfService.section7Body' => 'Regido pelas leis da República da Turquia. Tribunais de Istanbul têm jurisdição.',
			'termOfService.termsOfService.section8Title' => '8. CONTATO',
			'termOfService.termsOfService.section8Body' => 'Dúvidas: support@fly-work.com',
			'termOfService.cookiePolicy.title' => 'Política de Cookies',
			'termOfService.cookiePolicy.lastUpdated' => 'Última atualização: 2025',
			'termOfService.cookiePolicy.intro' => 'Esta política explica as tecnologias digitais usadas no app.',
			'termOfService.cookiePolicy.important' => 'IMPORTANTE: Privacidade infantil é nosso princípio fundamental. App para usuários de 6 anos ou mais.',
			'termOfService.cookiePolicy.section1Title' => '1. O QUE SÃO COOKIES?',
			'termOfService.cookiePolicy.section1Body' => 'Cookies e tecnologias similares são pequenos componentes digitais que ajudam o app. Não identificam você diretamente.',
			'termOfService.cookiePolicy.section2Title' => '2. QUAIS TECNOLOGIAS USAMOS?',
			'termOfService.cookiePolicy.section2Body' => 'Necessárias: sessões e segurança.\n\nDesempenho e análise: histórias lidas, dados anônimos.\n\nPersonalização: prefere idioma e nível de leitura.',
			'termOfService.cookiePolicy.section3Title' => '3. POR QUE AS USAMOS?',
			'termOfService.cookiePolicy.section3Body' => '- Funcionamento seguro.\n- Leitura mais fluida.\n- Lembrar configurações.\n- Identificar recursos futuros.',
			'termOfService.cookiePolicy.section4Title' => '4. TECNOLOGIAS DE TERCEIROS',
			'termOfService.cookiePolicy.section4Body' => 'Aplicamos uso mínimo de dados com parceiros terceiros.',
			'termOfService.cookiePolicy.section5Title' => '5. CONTROLE E GERENCIAMENTO',
			'termOfService.cookiePolicy.section5Body' => 'Pais podem limitar essas tecnologias pelas configurações do dispositivo.',
			'termOfService.cookiePolicy.section6Title' => '6. CONTATO',
			'termOfService.cookiePolicy.section6Body' => 'Dúvidas: support@fly-work.com',
			'cookies' => 'Política de Cookies',
			'privacy' => 'Política de Privacidade',
			'onboarding.step1.title' => 'Qual idioma você gostaria\nde aprender?',
			'onboarding.step1.subtitle' => 'Por favor, selecione o idioma ou idiomas\nque você deseja aprender.',
			'onboarding.step2.title' => 'Que tipo de histórias\nvocê gosta?',
			'onboarding.step2.subtitle' => 'Por favor, indique sua preferência.',
			'onboarding.step2.categories.space' => '🚀 Aventuras Espaciais',
			'onboarding.step2.categories.magic' => '🦄 Mundos Mágicos',
			'onboarding.step2.categories.detectives' => '🕵️ Pequenos Detetives',
			'onboarding.step2.categories.animals' => '🐾 Amigos Adoráveis',
			'onboarding.step2.categories.dinosaurs' => '🦖 A Era dos Dinossauros',
			'onboarding.step2.categories.superhero' => '🦸 Super-heróis',
			'onboarding.step2.categories.underwater' => '🌊 Reino Submarino',
			'onboarding.step2.categories.fairytale' => '🏰 Contos de Príncipe e Princesa',
			'onboarding.loading.titlePart1' => 'Sua conta pessoal está\n',
			'onboarding.loading.titlePart2' => 'sendo criada',
			'onboarding.loading.subtitle' => 'Estamos criando histórias maravilhosas para você',
			'onboarding.loading.optimization' => 'Otimização',
			'pressBackAgainToExit' => 'Pressione voltar novamente para sair',
			'faq.title' => 'Perguntas Frequentes',
			'faq.questions.q1.question' => 'Para que serve este aplicativo?',
			'faq.questions.q1.answer' => 'Este aplicativo ajuda crianças a aprender inglês com histórias divertidas. As palavras aparecem em contexto, o significado é apreendido naturalmente e, com repetições, fixa-se na memória.',
			'faq.questions.q2.question' => 'O que a inteligência artificial faz aqui?',
			'faq.questions.q2.answer' => 'Analisa em quais palavras a criança tem dificuldade, fornece explicações simples e sugere novas histórias adequadas ao seu nível. O conteúdo é adaptado ao ritmo de aprendizagem da criança.',
			'faq.questions.q3.question' => 'Quanto tempo por dia é suficiente?',
			'faq.questions.q3.answer' => '5–10 minutos por dia são suficientes. Mesmo uma história curta é eficaz para uma aprendizagem regular.',
			'faq.questions.q4.question' => 'Para que faixa etária são adequadas as histórias?',
			'faq.questions.q4.answer' => 'As histórias são apresentadas conforme a idade e o nível das crianças. O aplicativo determina o nível inicial e ajusta a dificuldade conforme o progresso.',
			'faq.questions.q5.question' => 'Como a criança aprende palavras desconhecidas?',
			'faq.questions.q5.answer' => 'Ao tocar em uma palavra desconhecida, é exibido seu significado, uma explicação simples e a pronúncia correta. Assim, a palavra é lida e ouvida.',
			'faq.questions.q6.question' => 'É necessária conexão com a internet?',
			'faq.questions.q6.answer' => 'Histórias previamente baixadas podem ser lidas offline. Novos conteúdos e atualizações exigem conexão com a internet.',
			'faq.questions.q7.question' => 'O aplicativo é gratuito?',
			'faq.questions.q7.answer' => 'Há acesso gratuito às histórias básicas. Mais histórias, personalização avançada e recursos extras estão disponíveis no plano premium.',
			'faq.questions.q8.question' => 'As histórias podem ser ouvidas em áudio?',
			'faq.questions.q8.answer' => 'Sim. As histórias podem ser ouvidas com pronúncia correta, permitindo desenvolver leitura e compreensão auditiva simultaneamente.',
			'faq.questions.q9.question' => 'As palavras aprendidas podem ser acompanhadas?',
			'faq.questions.q9.answer' => 'Sim. As palavras aprendidas são registradas e programadas para revisões em intervalos determinados, ajudando a reduzir o esquecimento.',
			'faq.questions.q10.question' => 'Em quanto tempo se vê progresso?',
			'faq.questions.q10.answer' => 'Com uso regular, é possível perceber progresso em pouco tempo. À medida que o hábito de leitura aumenta, o vocabulário e a compreensão melhoram.',
			'good_morning' => 'Bom dia',
			'good_afternoon' => 'Boa tarde',
			'good_evening' => 'Boa noite',
			'splash.screen1.title' => 'Aprenda inglês com histórias',
			'splash.screen1.description' => 'Sem memorização entediante. Descubra palavras em seu fluxo natural por meio de histórias curtas e divertidas.',
			'splash.screen2.title' => 'Inteligência Artificial Guia Você',
			'splash.screen2.description' => 'Ela rastreia as palavras com as quais você tem dificuldade, explica seu significado e sugere novas histórias adaptadas ao seu nível.',
			'profile.title' => 'Perfil',
			'profile.freeVersion' => 'Versão Gratuita',
			'profile.error' => 'Erro',
			'profile.passive' => 'Passivo',
			'profile.sections.accountSettings' => 'CONFIGURAÇÕES DA CONTA',
			'profile.sections.general' => 'GERAL',
			'profile.menu.editProfile' => 'Editar Perfil',
			'profile.menu.notifications' => 'Notificações',
			'profile.menu.premium' => 'Premium',
			'profile.menu.appLanguage' => 'Idioma do Aplicativo',
			'profile.menu.shareWithFriends' => 'Compartilhar com Amigos',
			'profile.menu.enterInviteCode' => 'Inserir Código de Convite',
			'profile.menu.rateUs' => 'Avalie-nos',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Sair',
			'profile.manage' => 'GERENCIAR',
			'profile.logoutDialog.title' => 'Você está prestes a sair',
			'profile.logoutDialog.message' => 'Nos vemos de novo! Continuaremos rastreando seus exercícios de respiração.',
			'profile.logoutDialog.logoutButton' => 'Sair',
			'profile.logoutDialog.cancelButton' => 'Cancelar',
			'home.premium' => 'Premium!',
			'home.seeMore' => 'Ver mais',
			'home.pickUpWhereYouLeftOff' => 'Continue de onde parou',
			'home.premiumSection' => 'Premium',
			'home.history' => 'Histórico',
			'home.librarySection' => 'Biblioteca',
			'home.libraryDescription' => 'As palavras salvas aparecerão aqui.',
			'home.upgradeToPremium' => 'Atualizar para Premium',
			'home.unlimitedStories' => 'Histórias ilimitadas e sem anúncios',
			'home.premiumPlan.title' => 'Plano Premium',
			'home.premiumPlan.description' => 'Desbloqueie seu chatbot de IA e\nobtenha todos os recursos premium',
			'home.premiumPlan.button' => 'Obter Premium',
			'home.premiumPlan.dialog.title' => 'Recurso não disponível',
			'home.premiumPlan.dialog.message' => 'Este recurso não está disponível no momento.',
			'home.premiumPlan.dialog.button' => 'OK',
			'allStories.title' => 'Todas as histórias',
			'allStories.noStoriesFound' => 'Nenhuma história encontrada',
			'allStories.selectFilter' => 'Selecionar filtro',
			'allStories.category' => 'Categoria',
			'allStories.categorySubtitle' => 'Por favor, selecione a categoria que deseja ler',
			'allStories.apply' => 'Aplicar',
			'stories.title' => 'Histórias',
			'stories.popularStories' => 'Histórias populares',
			'stories.recommendForYou' => 'Recomendado para você',
			'stories.allStories' => 'Todas as histórias',
			'stories.seeAll' => 'Ver tudo',
			'library.title' => 'Biblioteca',
			'library.wordCount' => ({required Object count}) => '${count} Palavras',
			'library.popularWords' => 'Palavras populares',
			'library.allWords' => 'Todas as palavras',
			'library.searchWord' => 'Buscar palavra',
			'library.searchHint' => 'Por favor, digite uma palavra…',
			'bottomNav.home' => 'Início',
			'bottomNav.stories' => 'Histórias',
			'bottomNav.library' => 'Biblioteca',
			'bottomNav.profile' => 'Perfil',
			'dayStreak.title' => 'Sequência do dia!',
			'dayStreak.days.su' => 'Do',
			'dayStreak.days.mo' => 'Se',
			'dayStreak.days.tu' => 'Te',
			'dayStreak.days.we' => 'Qu',
			'dayStreak.days.th' => 'Qu',
			'dayStreak.days.fr' => 'Se',
			'dayStreak.days.sa' => 'Sá',
			'storyDetails.introduction' => 'Introdução',
			'storyDetails.saved' => 'Salvo',
			'storyDetails.removed' => 'Removido',
			'storyDetails.storyAddedToLibrary' => 'A história foi adicionada à sua biblioteca.',
			'storyDetails.storyRemovedFromLibrary' => 'A história foi removida da biblioteca.',
			'storyDetails.wordAddedToLibrary' => 'A palavra foi adicionada à biblioteca. Desfazer',
			'storyDetails.successfully' => 'Com sucesso',
			'storyDetails.ratingSubmitted' => 'Sua avaliação foi enviada com sucesso.',
			'storyDetails.warning' => 'Aviso',
			'storyDetails.fillAllFields' => 'Por favor, preencha todos os campos.',
			'storyDetails.messageSent' => 'Sua mensagem foi enviada com sucesso.',
			'storyDetails.translate' => 'Traduzir',
			'storyDetails.speak' => 'Falar',
			'storyDetails.like' => 'Curtir',
			'storyDetails.save' => 'Salvar',
			'storyDetails.feedback' => 'Feedback',
			'storyDetails.rating' => 'Avaliação',
			'storyDetails.stop' => 'Parar',
			'storyDetails.start' => 'Iniciar',
			'storyDetails.listen' => 'Ouvir',
			'storyDetails.translation' => 'Tradução',
			'storyDetails.translating' => 'Traduzindo...',
			'storyDetails.saveToLibrary' => 'Salvar na biblioteca',
			'storyDetails.rateThisStory' => 'Avaliar esta história',
			'storyDetails.enjoyStory' => 'O quanto você gostou desta história?',
			'storyDetails.send' => 'Enviar',
			'storyDetails.subject' => 'Assunto',
			'storyDetails.feedbackSubjects.bugReport' => 'Relatório de bug',
			'storyDetails.feedbackSubjects.storyContent' => 'Conteúdo da história',
			'storyDetails.feedbackSubjects.audioIssue' => 'Problema de áudio',
			'storyDetails.feedbackSubjects.suggestion' => 'Sugestão',
			'storyDetails.feedbackSubjects.other' => 'Outro',
			'share.title' => 'Compartilhar com Amigos',
			'share.mainTitle' => 'Compartilhe a Paz',
			'share.descriptionPart1' => 'Convide amigos para respirar juntos.\nPara cada convite, ambos ganham ',
			'share.descriptionPart2' => '1 semana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'SEU CÓDIGO DE REFERÊNCIA',
			'share.codeCopied' => 'Código copiado!',
			'share.copyCode' => 'Copiar Código',
			'share.inviteDescription' => 'Convide seus amigos e aprenda\njuntos',
			'share.linkCopied' => 'Copiado',
			'share.linkCopiedMessage' => 'O link foi copiado para a área de transferência.',
			'delete' => 'Excluir',
			'editProfile.title' => 'Editar Perfil',
			'editProfile.changePhoto' => 'Alterar Avatar',
			'editProfile.learnLanguage' => 'Selecionar Idioma de Aprendizado',
			'editProfile.fullName' => 'Nome Completo',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Idade',
			'editProfile.save' => 'Salvar',
			'editProfile.saving' => 'Salvando...',
			'editProfile.updateSuccess' => 'Perfil atualizado com sucesso',
			'editProfile.updateError' => 'Ocorreu um erro ao atualizar o perfil',
			'editProfile.deleteAccount' => 'Excluir Conta',
			'notifications.title' => 'Notificações',
			'notifications.emptyTitle' => 'Ainda não há notificações',
			'notifications.emptyDescription' => 'Nós o notificaremos quando houver uma atualização importante sobre sua jornada de aprendizado.',
			'notifications.premiumBannerTitle' => 'Não perca os\nbenefícios Premium!',
			'notifications.premiumBannerDescription' => 'Aproveite as oportunidades como assinante Premium.',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continuar como Convidado',
			'auth.signInFailed' => ({required Object error}) => 'Falha ao entrar: ${error}',
			'cancel' => 'Cancelar',
			'deleteAccount' => 'Excluir Conta',
			'deleteDialogTitle' => 'Tem certeza de que deseja excluir sua conta?',
			'deleteDialogDescription' => 'Esta ação é irreversível e excluirá permanentemente todo o seu histórico de exercícios e dados.',
			'deleteError' => 'Ocorreu um erro ao excluir sua conta. Por favor, tente novamente.',
			'enterInvitationCode' => 'Inserir código de convite',
			'inviteFriends' => 'Insira o código de convite recebido de um amigo.\nDigite-o no campo designado',
			'twoDaysPremium' => '7 dias Premium',
			'advantage' => '\npara aproveitar seus benefícios.',
			'send' => 'Enviar',
			'referralCode.inputPlaceholder' => 'Insira o código de 8 caracteres',
			'referralCode.applying' => 'Aplicando código...',
			'referralCode.success.title' => 'Sucesso!',
			'referralCode.success.message' => 'Código de referência aplicado com sucesso! Você e seu amigo receberam 1 semana de premium.',
			'referralCode.errors.missingCode.title' => 'Código necessário',
			'referralCode.errors.missingCode.message' => 'Por favor, insira um código de referência para continuar.',
			'referralCode.errors.invalidFormat.title' => 'Formato inválido',
			'referralCode.errors.invalidFormat.message' => 'O código de referência deve ter exatamente 8 caracteres.',
			'referralCode.errors.alreadyUsed.title' => 'Já utilizado',
			'referralCode.errors.alreadyUsed.message' => 'Você já usou um código de referência. Cada usuário só pode usar um código.',
			'referralCode.errors.selfReferral.title' => 'Código inválido',
			'referralCode.errors.selfReferral.message' => 'Você não pode usar seu próprio código de convite. Por favor, use um código de um amigo.',
			'referralCode.errors.codeNotFound.title' => 'Código não encontrado',
			'referralCode.errors.codeNotFound.message' => 'O código de referência inserido não existe. Por favor, verifique e tente novamente.',
			'referralCode.errors.genericError.title' => 'Erro',
			'referralCode.errors.genericError.message' => 'Ocorreu um erro ao aplicar o código de referência. Por favor, tente novamente.',
			'deleteNotifications' => 'Excluir Notificações',
			'deleteNotificationsDescription' => 'Tem certeza de que deseja excluir todas as\nsuas notificações? Esta ação é irreversível.',
			'deleteAll' => 'Excluir Tudo',
			'appLanguage' => 'Idioma do Aplicativo',
			'selectLanguage' => 'Selecione seu idioma preferido',
			'save' => 'Salvar',
			'languageOptions.english' => 'Inglês',
			'languageOptions.german' => 'Alemão',
			'languageOptions.italian' => 'Italiano',
			'languageOptions.french' => 'Francês',
			'languageOptions.japanese' => 'Japonês',
			'languageOptions.spanish' => 'Espanhol',
			'languageOptions.russian' => 'Russo',
			'languageOptions.turkish' => 'Turco',
			'languageOptions.korean' => 'Coreano',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Português',
			_ => null,
		};
	}
}
