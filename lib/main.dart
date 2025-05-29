import 'package:flutter/material.dart';
import 'package:random_emoji_picker/random_emoji_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emoji = getRandomEmoji(category: 'animals');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Emoji Picker Example")),
        body: Center(child: Text(emoji, style: TextStyle(fontSize: 50))),
      ),
    );
  }
}
