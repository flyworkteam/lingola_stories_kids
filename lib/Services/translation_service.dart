import 'dart:ui';

import 'package:dio/dio.dart';

/// Translates words/phrases using the public Google Translate endpoint.
/// No API key required for small, occasional requests.
class TranslationService {
  TranslationService._();
  static final TranslationService instance = TranslationService._();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://translate.googleapis.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  /// Returns the BCP-47 language tag of the current device locale
  /// (e.g. "tr", "de", "fr").  Falls back to "en" if undetermined.
  String get deviceLanguageCode {
    final locale = PlatformDispatcher.instance.locale;
    final lang = locale.languageCode;
    // Don't translate to English – source is already English.
    if (lang.isEmpty || lang == 'und' || lang == 'en') return 'en';
    return lang;
  }

  /// Translate [text] from [sourceLang] into the device language.
  /// Returns the original [text] on any error.
  Future<String> translate(
    String text, {
    String sourceLang = 'en',
    String? targetLang,
  }) async {
    final target = targetLang ?? deviceLanguageCode;

    // If source == target, no need to call the API.
    if (sourceLang == target) return text;

    try {
      final response = await _dio.get(
        '/translate_a/single',
        queryParameters: {
          'client': 'gtx',
          'sl': sourceLang,
          'tl': target,
          'dt': 't',
          'q': text,
        },
      );

      // Response shape: [ [ ["translated", "original", ...], ...], ...]
      final data = response.data;
      if (data is List && data.isNotEmpty) {
        final parts = data[0] as List?;
        if (parts != null && parts.isNotEmpty) {
          final sb = StringBuffer();
          for (final part in parts) {
            if (part is List && part.isNotEmpty && part[0] is String) {
              sb.write(part[0] as String);
            }
          }
          return sb.toString().trim();
        }
      }
    } catch (_) {
      // Fail silently – return original text.
    }
    return text;
  }
}
