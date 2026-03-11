import 'package:flutter/widgets.dart';
import 'package:lingolakidstories/gen/strings.g.dart';

class StoryLocalization {
  const StoryLocalization._();

  static String localizedCategory(BuildContext context, String category) {
    final key = normalizeCategoryKey(category);
    switch (key) {
      case 'popular':
        return context.t.stories.categories.popular;
      case 'space':
        return context.t.stories.categories.space;
      case 'magic':
        return context.t.stories.categories.magic;
      case 'animals':
        return context.t.stories.categories.animals;
      case 'detectives':
        return context.t.stories.categories.detectives;
      case 'dinosaurs':
        return context.t.stories.categories.dinosaurs;
      case 'superhero':
        return context.t.stories.categories.superhero;
      case 'underwater':
        return context.t.stories.categories.underwater;
      case 'fairytale':
        return context.t.stories.categories.fairytale;
      default:
        return category.trim();
    }
  }

  static String normalizeCategoryKey(String category) {
    switch (category.trim().toLowerCase()) {
      case 'popular':
        return 'popular';
      case 'space':
        return 'space';
      case 'magic':
        return 'magic';
      case 'animals':
        return 'animals';
      case 'detectives':
        return 'detectives';
      case 'dinosaurs':
        return 'dinosaurs';
      case 'superhero':
        return 'superhero';
      case 'underwater':
        return 'underwater';
      case 'fairy tale':
      case 'fairytale':
        return 'fairytale';
      default:
        return category.trim().toLowerCase();
    }
  }
}
