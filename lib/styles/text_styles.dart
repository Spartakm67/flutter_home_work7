import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    color: Colors.red,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        offset: Offset(3.0, 3.0),
        blurRadius: 5.0,
        color: Colors.black26,
      ),
    ],
  );

  static const TextStyle defaultText = TextStyle(
    fontSize: 20,
    color: Colors.grey,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle greetingsText = TextStyle(
    fontSize: 30,
    color: Colors.redAccent,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle userText = TextStyle(
    fontSize: 18,
    color: Colors.blue,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  static Text styledText(String text, TextStyle style) {
    return Text(
      text,
      style: style,
      softWrap: true,
      overflow: TextOverflow.visible,
    );
  }
}