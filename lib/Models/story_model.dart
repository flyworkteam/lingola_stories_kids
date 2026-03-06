import 'dart:convert';

// ─── Word Timestamp Data ──────────────────────────────────────────────────────

class WordTimestampData {
  final List<String> words;
  final List<double> startTimes;
  final List<double> endTimes;

  const WordTimestampData({
    required this.words,
    required this.startTimes,
    required this.endTimes,
  });

  factory WordTimestampData.fromJson(Map<String, dynamic> json) {
    return WordTimestampData(
      words: List<String>.from(json['words'] ?? []),
      startTimes:
          (json['start_times'] as List?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
      endTimes:
          (json['end_times'] as List?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
    );
  }

  bool get isEmpty => words.isEmpty;
}

// ─── Story Section ────────────────────────────────────────────────────────────

class StorySection {
  final String title;
  final String content;
  final int pageNumber;
  final String? audioUrl;
  final WordTimestampData? wordTimestamps;

  const StorySection({
    required this.title,
    required this.content,
    this.pageNumber = 0,
    this.audioUrl,
    this.wordTimestamps,
  });

  factory StorySection.fromJson(Map<String, dynamic> json) {
    WordTimestampData? timestamps;
    final rawTimestamps = json['word_timestamps'];
    if (rawTimestamps != null) {
      if (rawTimestamps is String && rawTimestamps.isNotEmpty) {
        try {
          timestamps = WordTimestampData.fromJson(
            jsonDecode(rawTimestamps) as Map<String, dynamic>,
          );
        } catch (_) {}
      } else if (rawTimestamps is Map<String, dynamic>) {
        timestamps = WordTimestampData.fromJson(rawTimestamps);
      }
    }

    return StorySection(
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      pageNumber: json['page_number'] ?? 0,
      audioUrl: json['elevenlabs_audio_url'],
      wordTimestamps: timestamps,
    );
  }
}

// ─── Story Model ──────────────────────────────────────────────────────────────

class StoryModel {
  final String id;
  final String title;
  final List<String> tags;
  final List<String> categories;

  /// Network URL for the cover image (from CDN).
  final String? coverImageUrl;

  /// Optional local asset path for the cover image (legacy / fallback).
  final String? coverImageAsset;

  final String introduction;
  final List<StorySection> sections;
  final double rating;
  final int readCount;
  final int ratingCount;
  final int totalPages;
  final int currentPage;
  final bool isBookmarked;
  final bool isPopular;

  const StoryModel({
    required this.id,
    required this.title,
    required this.tags,
    required this.categories,
    this.coverImageUrl,
    this.coverImageAsset,
    required this.introduction,
    required this.sections,
    this.rating = 0,
    this.readCount = 0,
    this.ratingCount = 0,
    this.totalPages = 0,
    this.currentPage = 0,
    this.isBookmarked = false,
    this.isPopular = false,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    // categories and tags can come as comma-separated strings or lists
    List<String> parseList(dynamic value) {
      if (value == null) return [];
      if (value is List) return value.map((e) => e.toString()).toList();
      if (value is String && value.isNotEmpty) return value.split(',');
      return [];
    }

    return StoryModel(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      tags: parseList(json['tags']),
      categories: parseList(json['categories']),
      coverImageUrl: json['cover_image_url'],
      introduction: json['introduction'] ?? '',
      sections: [], // sections are loaded separately via /sections endpoint
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      readCount: json['read_count'] ?? 0,
      ratingCount: json['rating_count'] ?? 0,
      totalPages: json['total_pages'] ?? 0,
      isPopular: json['is_popular'] == true || json['is_popular'] == 1,
    );
  }

  StoryModel copyWith({
    String? id,
    String? title,
    List<String>? tags,
    List<String>? categories,
    String? coverImageUrl,
    String? coverImageAsset,
    String? introduction,
    List<StorySection>? sections,
    double? rating,
    int? readCount,
    int? ratingCount,
    int? totalPages,
    int? currentPage,
    bool? isBookmarked,
    bool? isPopular,
  }) {
    return StoryModel(
      id: id ?? this.id,
      title: title ?? this.title,
      tags: tags ?? this.tags,
      categories: categories ?? this.categories,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      coverImageAsset: coverImageAsset ?? this.coverImageAsset,
      introduction: introduction ?? this.introduction,
      sections: sections ?? this.sections,
      rating: rating ?? this.rating,
      readCount: readCount ?? this.readCount,
      ratingCount: ratingCount ?? this.ratingCount,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
      isBookmarked: isBookmarked ?? this.isBookmarked,
      isPopular: isPopular ?? this.isPopular,
    );
  }

  /// Returns the effective image source — prefers network URL over asset.
  String? get coverImage => coverImageUrl ?? coverImageAsset;
}
