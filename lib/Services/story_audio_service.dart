import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lingolakidstories/Models/story_model.dart';
import 'package:lingolakidstories/utils/print.dart';

/// Holds the current word-level playback state.
class WordHighlightState {
  /// Index of the current section being played.
  final int sectionIndex;

  /// Index of the currently active word within the section.
  final int wordIndex;

  /// The word string itself.
  final String word;

  const WordHighlightState({
    required this.sectionIndex,
    required this.wordIndex,
    required this.word,
  });
}

/// Service that plays ElevenLabs pre-recorded audio for story sections
/// and emits word-level highlight states based on timestamps.
class StoryAudioService {
  StoryAudioService();

  final AudioPlayer _player = AudioPlayer();

  List<StorySection> _sections = [];
  int _currentSectionIndex = 0;
  bool _isPlaying = false;
  bool _disposed = false;

  StreamSubscription<Duration>? _positionSub;
  StreamSubscription<PlayerState>? _playerStateSub;

  /// Notifies listeners of the current word being spoken.
  final ValueNotifier<WordHighlightState?> currentWord =
      ValueNotifier<WordHighlightState?>(null);

  /// Notifies listeners of the current section index.
  final ValueNotifier<int> currentSectionIndex = ValueNotifier<int>(0);

  /// Whether audio is currently playing.
  final ValueNotifier<bool> isPlaying = ValueNotifier<bool>(false);

  /// Load sections for playback.
  void loadSections(List<StorySection> sections) {
    _sections = sections;
    _currentSectionIndex = 0;
    currentSectionIndex.value = 0;
  }

  /// Start playing from the beginning or continue playing.
  Future<void> play({int fromSection = 0, Duration? position}) async {
    if (_sections.isEmpty) return;
    _currentSectionIndex = fromSection.clamp(0, _sections.length - 1);
    currentSectionIndex.value = _currentSectionIndex;
    await _playCurrentSection(startPosition: position);
  }

  /// Get current audio position
  Duration get audioPosition => _player.position;

  /// Pause playback.
  Future<void> pause() async {
    _isPlaying = false;
    isPlaying.value = false;
    await _player.pause();
  }

  /// Stop playback and reset.
  Future<void> stop() async {
    _isPlaying = false;
    isPlaying.value = false;
    currentWord.value = null;
    _positionSub?.cancel();
    _playerStateSub?.cancel();
    await _player.stop();
  }

  /// Resume from current position.
  Future<void> resume() async {
    _isPlaying = true;
    isPlaying.value = true;
    await _player.play();
  }

  Future<void> _playCurrentSection({Duration? startPosition}) async {
    if (_disposed) return;
    if (_currentSectionIndex >= _sections.length) {
      // All sections finished
      await stop();
      return;
    }

    final section = _sections[_currentSectionIndex];
    final audioUrl = section.audioUrl;

    if (audioUrl == null || audioUrl.isEmpty) {
      // No audio for this section, skip to next
      _currentSectionIndex++;
      currentSectionIndex.value = _currentSectionIndex;
      await _playCurrentSection();
      return;
    }

    try {
      await _player.setUrl(audioUrl);
      if (startPosition != null) {
        await _player.seek(startPosition);
      }
    } catch (e) {
      Print.error('Error loading audio URL: $e');
      // Skip to next section on error
      _currentSectionIndex++;
      currentSectionIndex.value = _currentSectionIndex;
      await _playCurrentSection();
      return;
    }

    _isPlaying = true;
    isPlaying.value = true;

    // Setup word timestamp tracking
    _positionSub?.cancel();
    final timestamps = section.wordTimestamps;
    if (timestamps != null && !timestamps.isEmpty) {
      _positionSub = _player.positionStream.listen((position) {
        if (!_isPlaying) return;
        final seconds = position.inMilliseconds / 1000.0;
        _updateWordHighlight(seconds, timestamps);
      });
    }

    // Listen for playback completion
    _playerStateSub?.cancel();
    _playerStateSub = _player.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        _onSectionComplete();
      }
    });

    await _player.play();
  }

  void _updateWordHighlight(double seconds, WordTimestampData timestamps) {
    // Find the word whose start_time <= seconds < end_time
    // or the last word whose start_time <= seconds
    int? activeIndex;
    for (int i = 0; i < timestamps.words.length; i++) {
      if (i < timestamps.startTimes.length &&
          seconds >= timestamps.startTimes[i]) {
        activeIndex = i;
      }
    }

    if (activeIndex != null && activeIndex < timestamps.words.length) {
      final newState = WordHighlightState(
        sectionIndex: _currentSectionIndex,
        wordIndex: activeIndex,
        word: timestamps.words[activeIndex],
      );

      // Only notify if the word changed
      if (currentWord.value?.wordIndex != activeIndex ||
          currentWord.value?.sectionIndex != _currentSectionIndex) {
        currentWord.value = newState;
      }
    }
  }

  void _onSectionComplete() {
    if (_disposed) return;
    currentWord.value = null;
    _currentSectionIndex++;
    currentSectionIndex.value = _currentSectionIndex;
    _playCurrentSection();
  }

  void dispose() {
    _disposed = true;
    _positionSub?.cancel();
    _playerStateSub?.cancel();
    _player.dispose();
    currentWord.dispose();
    currentSectionIndex.dispose();
    isPlaying.dispose();
  }
}
