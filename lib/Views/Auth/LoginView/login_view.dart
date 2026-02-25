import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lingolakidstories/Riverpod/Providers/all_providers.dart';
import 'package:lingolakidstories/Services/social_auth_service.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/custom_blur.dart';
import 'package:lingolakidstories/shared/custom_button.dart';
import 'package:lingolakidstories/shared/policy_bottom_sheet.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';
import 'package:lingolakidstories/utils/constants.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  Future<void> _handleGoogleSignIn(BuildContext context, WidgetRef ref) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      final socialAuthService = ref.read(socialAuthServiceProvider);
      final idToken = await socialAuthService.signInWithGoogle();

      if (idToken == null) {
        if (context.mounted) Navigator.pop(context);
        return;
      }

      final storageService = ref.read(
        AllProviders.secureStorageServiceProvider,
      );
      await storageService.savePendingAuthMethod('google');
      await storageService.savePendingGoogleIdToken(idToken);

      if (context.mounted) {
        Navigator.pop(context);

        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.t.auth.signInFailed(error: e.toString())),
          ),
        );
      }
    }
  }

  Future<void> _handleAppleSignIn(BuildContext context, WidgetRef ref) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      final socialAuthService = ref.read(socialAuthServiceProvider);
      final appleCredential = await socialAuthService.signInWithApple();

      if (appleCredential == null) {
        if (context.mounted) Navigator.pop(context);
        return;
      }

      final storageService = ref.read(
        AllProviders.secureStorageServiceProvider,
      );
      await storageService.savePendingAuthMethod('apple');
      await storageService.savePendingAppleIdToken(
        appleCredential['identityToken'] as String,
      );

      if (appleCredential['user'] != null) {
        final userInfo = appleCredential['user'] as Map<String, dynamic>;
        await storageService.savePendingAppleUserInfo(jsonEncode(userInfo));
      }

      if (context.mounted) {
        Navigator.pop(context);

        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.t.auth.signInFailed(error: e.toString())),
          ),
        );
      }
    }
  }

  Future<void> _handleGuestLogin(BuildContext context, WidgetRef ref) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      final storageService = ref.read(
        AllProviders.secureStorageServiceProvider,
      );
      await storageService.savePendingAuthMethod('guest');

      if (context.mounted) {
        Navigator.pop(context);

        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.t.auth.signInFailed(error: e.toString())),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Positioned(
            top: -250,
            left: -200,
            child: CustomBlur(color: Color(0xFFFFB256)),
          ),
          Positioned(bottom: -250, right: -200, child: CustomBlur()),
          Padding(
            padding: AppPaddings.horizontalPage,
            child: Column(
              children: [
                Spacer(flex: 4),
                Image.asset(AppAssets.logo, width: 102, height: 102),
                const SizedBox(height: 60),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: context.t.welcome2(appName: '\n'),
                        style: AppTextStyles.body(
                          36,
                          weight: FontWeight.bold,
                          height: 35,
                          letterSpacing: -0.05,

                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: Constants.appName,
                        style: AppTextStyles.body(
                          36,
                          weight: FontWeight.bold,
                          height: 35,
                          letterSpacing: -0.05,
                          color: const Color(0xFF6ED0CF),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 13),
                Text(
                  context.t.logintext,
                  style: AppTextStyles.body(
                    20,
                    weight: FontWeight.w300,
                    color: Colors.black,
                    height: 25,
                    letterSpacing: -0.05,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 42),
                if (Platform.isAndroid) ...[
                  CustomButton(
                    label: context.t.auth.google,
                    fullWidth: true,
                    type: CustomButtonType.outlined,
                    icon: SvgPicture.asset(AppIcons.google),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    borderColor: const Color(0xFFD9D9D9),
                    iconPadding: 8,
                    borderWidth: 1.0,
                    borderRadius: 50.0,
                    labelStyle: AppTextStyles.body(15, weight: FontWeight.w400),
                    onPressed: () => _handleGoogleSignIn(context, ref),
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    label: context.t.auth.apple,
                    type: CustomButtonType.filled,
                    icon: SvgPicture.asset(AppIcons.apple),
                    fullWidth: true,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    borderWidth: 1.0,
                    iconPadding: 8,
                    borderRadius: 50.0,
                    labelStyle: AppTextStyles.body(
                      15,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    onPressed: () => _handleAppleSignIn(context, ref),
                  ),
                ] else ...[
                  CustomButton(
                    label: context.t.auth.apple,
                    type: CustomButtonType.filled,
                    icon: SvgPicture.asset(AppIcons.apple),
                    fullWidth: true,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    borderWidth: 1.0,
                    iconPadding: 8,
                    borderRadius: 50.0,
                    labelStyle: AppTextStyles.body(
                      15,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    onPressed: () => _handleAppleSignIn(context, ref),
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    label: context.t.auth.google,
                    type: CustomButtonType.outlined,
                    icon: SvgPicture.asset(AppIcons.google),
                    fullWidth: true,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    borderColor: const Color(0xFFD9D9D9),
                    borderWidth: 1.0,
                    iconPadding: 8,
                    borderRadius: 50.0,
                    labelStyle: AppTextStyles.body(
                      15,
                      weight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    onPressed: () => _handleGoogleSignIn(context, ref),
                  ),
                ],
                const SizedBox(height: 16),
                CustomButton(
                  label: context.t.auth.guest,
                  onPressed: () => _handleGuestLogin(context, ref),
                  size: CustomButtonSize.large,
                  type: CustomButtonType.text,
                  borderRadius: 50,
                  fullWidth: true,
                  foregroundColor: const Color(0xFF6ED0CF),
                  labelStyle: AppTextStyles.body(
                    16,
                    weight: FontWeight.w400,
                    color: const Color(0xFF6ED0CF),
                  ),
                ),
                Spacer(),
                SafeArea(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        color: Color(0xff2B2B2B),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: context.t.termOfService.text1),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () =>
                                showPolicySheet(context, PolicyType.terms),
                            child: Text(
                              context.t.termOfService.link1,
                              style: GoogleFonts.poppins(
                                color: Color(0xff1D1D1D),
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: context.t.termOfService.text2),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () =>
                                showPolicySheet(context, PolicyType.privacy),
                            child: Text(
                              context.t.termOfService.link2,
                              style: GoogleFonts.poppins(
                                color: Color(0xff1D1D1D),
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: context.t.termOfService.text3),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () =>
                                showPolicySheet(context, PolicyType.cookies),
                            child: Text(
                              context.t.termOfService.link3,
                              style: GoogleFonts.poppins(
                                color: Color(0xff1D1D1D),
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        if (TranslationProvider.of(
                              context,
                            ).locale.languageCode ==
                            'tr')
                          TextSpan(text: context.t.termOfService.text4),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
