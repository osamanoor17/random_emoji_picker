import 'package:flutter/material.dart';
import 'package:random_emoji_picker/random_emoji_picker.dart';

void main() {
  runApp(RandomEmojiApp());
}

class RandomEmojiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Emoji Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home: EmojiScreen(),
    );
  }
}

class EmojiScreen extends StatefulWidget {
  @override
  _EmojiScreenState createState() => _EmojiScreenState();
}

class _EmojiScreenState extends State<EmojiScreen> {
  String _emoji = getRandomEmoji();

  void _getNewEmoji() {
    setState(() {
      _emoji = getRandomEmoji();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Emoji Picker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _emoji,
              style: TextStyle(fontSize: 100),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _getNewEmoji,
              child: Text('Get New Emoji'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
