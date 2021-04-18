import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildkey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, note: 1),
              buildkey(color: Colors.orange, note: 2),
              buildkey(color: Colors.yellow, note: 3),
              buildkey(color: Colors.green, note: 4),
              buildkey(color: Colors.teal, note: 5),
              buildkey(color: Colors.blue, note: 6),
              buildkey(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
