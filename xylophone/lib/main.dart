import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play("Piano1.mp3");
                },
                child: Text("Click Me"))),
      ),
    );
  }
}
