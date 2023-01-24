import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class KeyXilophone extends StatelessWidget {
  Color color;
  String numberNote;

  KeyXilophone({required this.color, required this.numberNote});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource("note$numberNote.wav"));
    print("okey");
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: playSound,
          child: Text(""),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyXilophone(color: Colors.red, numberNote: "1"),
              KeyXilophone(color: Colors.orange, numberNote: "2"),
              KeyXilophone(color: Colors.yellow, numberNote: "3"),
              KeyXilophone(color: Colors.green, numberNote: "4"),
              KeyXilophone(color: Colors.teal, numberNote: "5"),
              KeyXilophone(color: Colors.blue, numberNote: "6"),
              KeyXilophone(color: Colors.purple, numberNote: "7"),
            ],
          ),
        ),
      ),
    );
  }
}
