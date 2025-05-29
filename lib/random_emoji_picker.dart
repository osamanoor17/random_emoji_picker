library random_emoji_picker;

import 'dart:math';

final Map<String, List<String>> _emojiMap = {
  'smileys': ['😀', '😂', '😍', '😎', '😢', '😡'],
  'food': ['🍕', '🍔', '🍟', '🍣', '🍩'],
  'animals': ['🐶', '🐱', '🦁', '🐸', '🐍'],
  'objects': ['📱', '💻', '📷', '📚', '🎧'],
  'flags': ['🇺🇸', '🇬🇧', '🇯🇵', '🇮🇳'],
};

final List<String> _allEmojis = _emojiMap.values.expand((list) => list).toList();

String getRandomEmoji({String? category}) {
  final random = Random();

  if (category != null && _emojiMap.containsKey(category)) {
    final list = _emojiMap[category]!;
    return list[random.nextInt(list.length)];
  }

  return _allEmojis[random.nextInt(_allEmojis.length)];
}

List<String> getAvailableCategories() => _emojiMap.keys.toList();
