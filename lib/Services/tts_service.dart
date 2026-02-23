import 'package:flutter_tts/flutter_tts.dart';

/// Global TTS service for speaking single words/phrases.
/// Reuses a single [FlutterTts] instance across the app.
class TtsService {
  TtsService._();
  static final TtsService instance = TtsService._();

  final FlutterTts _tts = FlutterTts();

  bool _initialised = false;

  Future<void> _init() async {
    if (_initialised) return;
    _initialised = true;
    await _tts.setSpeechRate(0.45);
    await _tts.setPitch(1.0);
    await _tts.setVolume(1.0);
  }

  /// Speak [text] in [languageCode] (e.g. "en-US").
  Future<void> speak(String text, {String languageCode = 'en-US'}) async {
    await _init();
    await _tts.setLanguage(languageCode);
    await _tts.stop();
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
  }
}
