class WordModel {
  const WordModel({
    required this.word,
    this.translation,
    this.isTranslating = false,
  });

  final String word;
  final String? translation;
  final bool isTranslating;

  WordModel copyWith({String? translation, bool? isTranslating}) {
    return WordModel(
      word: word,
      translation: translation ?? this.translation,
      isTranslating: isTranslating ?? this.isTranslating,
    );
  }
}
