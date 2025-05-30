String getRandomEmoji() {
  final emojis = ['😀', '😂', '🥲', '😎', '🔥', '💯', '🤖', '🦄', '🌈', '🚀'];
  emojis.shuffle();
  return emojis.first;
}
