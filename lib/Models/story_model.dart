class StoryModel {
  final String id;
  final String title;
  final List<String> tags;
  final List<String> categories;

  /// Optional local asset path for the cover image (used for palette extraction).
  final String? coverImageAsset;
  final String introduction;
  final List<StorySection> sections;
  final double rating;
  final int totalPages;
  final int currentPage;
  final bool isBookmarked;
  final bool isPopular;

  const StoryModel({
    required this.id,
    required this.title,
    required this.tags,
    required this.categories,
    this.coverImageAsset,
    required this.introduction,
    required this.sections,
    this.rating = 0,
    this.totalPages = 40,
    this.currentPage = 0,
    this.isBookmarked = false,
    this.isPopular = false,
  });

  StoryModel copyWith({
    String? id,
    String? title,
    List<String>? tags,
    List<String>? categories,
    String? coverGradientStart,
    String? coverGradientEnd,
    String? coverImageAsset,
    String? introduction,
    List<StorySection>? sections,
    double? rating,
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

      coverImageAsset: coverImageAsset ?? this.coverImageAsset,
      introduction: introduction ?? this.introduction,
      sections: sections ?? this.sections,
      rating: rating ?? this.rating,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
      isBookmarked: isBookmarked ?? this.isBookmarked,
      isPopular: isPopular ?? this.isPopular,
    );
  }
}

class StorySection {
  final String title;
  final String content;

  const StorySection({required this.title, required this.content});
}

// ─── Dummy Data ────────────────────────────────────────────────────────────────

class StoryData {
  static const List<StoryModel> all = [
    StoryModel(
      id: '1',
      title: 'Little Astronaut and\nMeteor Hunt',
      tags: ['Adventure', 'Space'],
      categories: ['Space', 'Adventure'],
      coverImageAsset: 'assets/images/ic_dummybook1.png',
      isPopular: true,
      rating: 4.8,
      introduction:
          'Young Zara, a six-year-old with a heart full of stars, discovers a fallen meteor in her backyard that glows with the colors of the aurora. When she touches it, she\'s whisked away on the most dazzling space adventure imaginable.',
      sections: [
        StorySection(
          title: 'The Glowing Rock',
          content:
              'It started on a Tuesday morning when Zara found the strange, glowing rock in her backyard. It pulsed with soft blue and purple light, warm to the touch. Her dog, Cosmo, sniffed at it and sneezed, sending sparkles into the air.\n\nShe carefully picked it up and whispered, "Where do you come from?"',
        ),
        StorySection(
          title: 'Among the Stars',
          content:
              'The meteor lifted her gently off the ground. Before she knew it, Zara was floating above the clouds, wrapped in a bubble of warm starlight. Below her, the Earth looked like a giant blue marble.\n\nAhead of her was a field of shooting stars, each one leaving a rainbow trail across the velvet sky.',
        ),
        StorySection(
          title: 'The Meteor Garden',
          content:
              'The meteor led Zara to a hidden garden between two galaxies. Flowers made of ice and light bloomed in every direction. Tiny star-creatures, no bigger than butterflies, fluttered around her, humming a gentle song.\n\nA tall being made entirely of starlight bowed to her. "Welcome, finder of the lost meteor. You have a kind heart — we have been waiting for you."',
        ),
      ],
    ),
    StoryModel(
      id: '2',
      title: 'Mysterious City\nExploration',
      tags: ['Adventure', 'Fairy tale'],
      categories: ['Detectives', 'Adventure'],
      coverImageAsset: 'assets/images/ic_dummybook2.png',
      isPopular: true,
      rating: 4.5,
      introduction:
          'Once upon a time, tucked away beneath a blanket of soft, purple clouds, lay the City of Silver Wings. This wasn\'t an ordinary city; its buildings were made of giant, ancient books, and the streets were paved with glowing piano keys that played a soft note with every step.',
      sections: [
        StorySection(
          title: 'The Wonders of the City',
          content:
              'As Leo ventured deeper into the mysterious city, he discovered things he had only seen in dreams:\n\n• The Whispering Walls: These walls would only open their gates if Leo spoke a kind word or shared a friendly smile.\n\n• Colorful Shadows: In this city, shadows weren\'t black. They glowed in pink, blue, or green, depending on how happy the person was.\n\n• The Flying Library: Books didn\'t stay on shelves, they fluttered their pages like wings and landed softly in the laps of children who wanted to hear a story.',
        ),
        StorySection(
          title: 'The Great Discovery',
          content:
              'In the very heart of the city stood the Great Clock of Dreams, which had stopped ticking long ago. Leo realized that his silver key was the exact shape of the clock\'s heart. He stepped forward, inserted the key, and gave it a gentle turn.\n\nTick-tock, tick-tock!\n\nSuddenly, a rain of rainbows fell over the city. The colors made everyone feel brave, kind, and creative. Leo realized that the City of Silver Wings was powered by imagination. As long as children kept dreaming, the city would keep growing, and new streets would appear overnight.',
        ),
      ],
    ),
    StoryModel(
      id: '3',
      title: 'The Key To The\nLost City',
      tags: ['Adventure', 'Magic'],
      categories: ['Magic', 'Adventure'],
      coverImageAsset: 'assets/images/ic_dummybook3.png',
      rating: 4.2,
      introduction:
          'Deep beneath the ancient forest, where the roots of the oldest trees twisted into secret doorways, Maya discovered a golden key. But this wasn\'t any ordinary key — it hummed with magic and pointed the way to a city that had been lost for a thousand years.',
      sections: [
        StorySection(
          title: 'The Forest Door',
          content:
              'Maya had been playing among the mossy stones when she spotted it — a tiny golden key half-buried beneath a fern. As soon as she picked it up, it began to glow and tug gently toward the biggest oak tree she had ever seen.\n\nIn the bark of the oak, there was a tiny keyhole that she had never noticed before.',
        ),
        StorySection(
          title: 'The Lost City',
          content:
              'Beyond the door was a city of crystal towers that caught every beam of sunlight and scattered it into a thousand colors. Friendly creatures with long ears and soft fur greeted Maya with tiny bows.\n\n"You found the key!" said the eldest creature. "Without it, our city was fading. Thank you for bringing the light back."',
        ),
      ],
    ),
    StoryModel(
      id: '4',
      title: 'Mysterious Traces',
      tags: ['Adventure', 'Detectives'],
      categories: ['Detectives', 'Adventure'],
      coverImageAsset: 'assets/images/ic_dummybook4.png',
      rating: 4.0,
      introduction:
          'Two best friends, Sam and Lily, spot strange footprints leading through their neighborhood. Armed with a magnifying glass and a notebook, they follow the clues on the greatest detective adventure their street has ever seen.',
      sections: [
        StorySection(
          title: 'The First Clue',
          content:
              'It was a rainy Saturday morning when Sam noticed the footprints. They were large, three-toed, and led from the garden gate all the way to the old storage shed at the back of Lily\'s yard.\n\n"These are definitely not human footprints," Sam whispered, his eyes wide.\n\nLily opened her detective notebook. "We need to document everything."',
        ),
        StorySection(
          title: 'The Big Reveal',
          content:
              'Behind the shed\'s creaky door, they found not a monster or a beast, but a very small, very frightened baby bird with enormous feet. A note was tied to its leg:\n\n"Lost: Baby Roadrunner. Answers to Rocket. Very friendly. Please call if found. — The Bird Sanctuary"\n\nSam and Lily looked at each other and burst out laughing.',
        ),
      ],
    ),
    StoryModel(
      id: '5',
      title: 'The Dancing Turtle',
      tags: ['Animal', 'Underwater'],
      categories: ['Animals', 'Underwater'],
      coverImageAsset: 'assets/images/ic_dummybook5.png',
      rating: 4.7,
      introduction:
          'Deep beneath the sparkling waves of Coral Bay, Shelly the sea turtle had a secret. Every night, when the moon reflected on the ocean floor, she would dance. But no one had ever seen her — until a curious little fish named Finn swam by at exactly the wrong moment.',
      sections: [
        StorySection(
          title: 'The Midnight Dance',
          content:
              'The coral reef was quiet and still at midnight. All the fish were sleeping in their cozy hiding spots, except Finn, who could never seem to fall asleep.\n\nThat\'s when he saw it — a gentle glow on the sandy ocean floor, and in the middle of it, Shelly the turtle was spinning and swaying in a dance so beautiful it made the sea anemones sway along.',
        ),
        StorySection(
          title: 'Sharing the Joy',
          content:
              '"Please don\'t tell anyone," Shelly whispered, suddenly embarrassed.\n\nBut Finn had a better idea. The next night, he woke all his friends gently. When they gathered at the reef, Shelly began to dance again — and one by one, every creature in Coral Bay joined in.\n\nFrom that night on, the midnight dance became the most magical event in all the ocean.',
        ),
      ],
    ),
    StoryModel(
      id: '6',
      title: 'Dinosaur Detective',
      tags: ['Adventure', 'Dinosaurs'],
      categories: ['Dinosaurs', 'Adventure'],
      coverImageAsset: 'assets/images/ic_dummybook1.png',
      rating: 4.3,
      introduction:
          'When six-year-old Dino-Dan finds a fossil in his sandbox, he begins to suspect that the park next door might be sitting on top of the greatest dinosaur discovery in history. Time to put on his explorer hat!',
      sections: [
        StorySection(
          title: 'The Fossil',
          content:
              'Dan was building a sandcastle when his shovel hit something hard. He brushed the sand away carefully, just like the paleontologists he\'d seen on TV, and revealed a small, perfectly preserved fossil of a tiny claw.\n\nHis heart nearly burst with excitement.',
        ),
        StorySection(
          title: 'The Discovery',
          content:
              'Dan called the museum, and within an hour, a team of real paleontologists arrived with brushes and tools. By afternoon, they had uncovered something incredible — the complete skeleton of a baby Velociraptor.\n\nThe head paleontologist knelt down to Dan\'s level. "You have the best eyes I\'ve ever seen, young man. How would you like to name it?"',
        ),
      ],
    ),
    StoryModel(
      id: '7',
      title: 'The Superhero\nNeighborhood',
      tags: ['Adventure', 'Superhero'],
      categories: ['Superhero', 'Adventure'],
      coverImageAsset: 'assets/images/ic_dummybook2.png',
      rating: 4.6,
      introduction:
          'Emma always dreamed of having a superpower. One morning she woke up and discovered she could understand every animal in the world — and they all had something very important to tell her.',
      sections: [
        StorySection(
          title: 'The First Morning',
          content:
              'Emma woke up to the sound of her cat, Whiskers, saying very clearly: "Your alarm has been going off for twenty minutes and I am very displeased."\n\nEmma sat up and stared. "Did you just... talk?"\n\n"I have always talked," Whiskers said, with great dignity. "You have only now begun to listen."',
        ),
        StorySection(
          title: 'Helping Out',
          content:
              'Within a week, Emma had helped reunite a lost puppy with its family (the puppy had been trying to explain the way home for days), warned her neighbor about a broken gutter (a sparrow had been complaining loudly), and discovered where her little brother\'s missing toy had been hidden (a very apologetic hamster).\n\nBeing a superhero, Emma decided, wasn\'t about flying or shooting lasers. It was about listening.',
        ),
      ],
    ),
    StoryModel(
      id: '8',
      title: 'The Fairy Tale\nKingdom',
      tags: ['Fairy tale', 'Magic'],
      categories: ['Fairy tale', 'Magic'],
      coverImageAsset: 'assets/images/ic_dummybook3.png',
      isPopular: true,
      rating: 4.9,
      introduction:
          'In the kingdom where stories come alive, Princess Aria discovers that the Book of Tales has gone blank. Every story has vanished, and with them, all the magic in the land. She must journey to the Story Weaver and fill the pages once more.',
      sections: [
        StorySection(
          title: 'The Blank Book',
          content:
              'The morning the kingdom woke up to find the Great Book of Tales had gone blank was the most frightening morning anyone could remember.\n\nThe enchanted forest had become plain, ordinary woods. The talking animals had gone silent. Even the castle\'s singing doors had stopped their cheerful melody.\n\nPrincess Aria held the blank book to her chest. "I will fix this," she promised.',
        ),
        StorySection(
          title: 'New Stories',
          content:
              'The Story Weaver was old and tired. "The book doesn\'t need old stories," she told Aria with a gentle smile. "It needs new ones. Your stories, child."\n\nAria thought about every adventure she\'d had, every friend she\'d made, every problem she\'d solved with kindness. She began to speak, and with every word, the pages of the Great Book filled with color and life.\n\nBy the time she finished, the whole kingdom was dancing.',
        ),
      ],
    ),
  ];

  static List<String> get categories => [
    'Popular',
    'Space',
    'Magic',
    'Animals',
    'Detectives',
    'Dinosaurs',
    'Superhero',
    'Underwater',
    'Fairy tale',
  ];

  static List<StoryModel> getByCategory(String category) {
    if (category == 'Popular') return all.where((s) => s.isPopular).toList();
    return all
        .where(
          (s) => s.categories.any(
            (c) => c.toLowerCase() == category.toLowerCase(),
          ),
        )
        .toList();
  }

  static List<StoryModel> get popular => all.where((s) => s.isPopular).toList();
}
