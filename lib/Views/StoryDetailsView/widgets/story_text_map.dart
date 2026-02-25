import 'package:lingolakidstories/Models/story_model.dart';

/// Builds the full story text that will be fed to TTS, and calculates
/// the global character offset where each section starts.
class StoryTextMap {
  final String fullText;
  final int introOffset;
  final Map<int, int> sectionOffsets;

  const StoryTextMap({
    required this.fullText,
    required this.introOffset,
    required this.sectionOffsets,
  });

  factory StoryTextMap.from(StoryModel story) {
    final buf = StringBuffer();
    final Map<int, int> offsets = {};

    buf.write(story.introduction);
    buf.write(' ');

    for (var i = 0; i < story.sections.length; i++) {
      offsets[i] = buf.length;
      buf.write(story.sections[i].content);
      buf.write(' ');
    }

    return StoryTextMap(
      fullText: buf.toString(),
      introOffset: 0,
      sectionOffsets: offsets,
    );
  }
}
