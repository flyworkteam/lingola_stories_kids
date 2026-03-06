class WordModel {
  const WordModel({
    this.id,
    required this.word,
    this.translation,
    this.sourceLanguage = 'en',
    this.targetLanguage = 'tr',
    this.isTranslating = false,
    this.createdAt,
  });

  final int? id;
  final String word;
  final String? translation;
  final String sourceLanguage;
  final String targetLanguage;
  final bool isTranslating;
  final DateTime? createdAt;

  factory WordModel.fromJson(Map<String, dynamic> json) {
    return WordModel(
      id: json['id'] as int?,
      word: json['word'] as String? ?? '',
      translation: json['translation'] as String?,
      sourceLanguage: json['source_language'] as String? ?? 'en',
      targetLanguage: json['target_language'] as String? ?? 'tr',
      createdAt: json['created_at'] != null
          ? DateTime.tryParse(json['created_at'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'word': word,
      'translation': translation,
      'source_language': sourceLanguage,
      'target_language': targetLanguage,
    };
  }

  WordModel copyWith({
    int? id,
    String? word,
    String? translation,
    String? sourceLanguage,
    String? targetLanguage,
    bool? isTranslating,
    DateTime? createdAt,
  }) {
    return WordModel(
      id: id ?? this.id,
      word: word ?? this.word,
      translation: translation ?? this.translation,
      sourceLanguage: sourceLanguage ?? this.sourceLanguage,
      targetLanguage: targetLanguage ?? this.targetLanguage,
      isTranslating: isTranslating ?? this.isTranslating,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
