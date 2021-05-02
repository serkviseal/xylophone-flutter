import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int keyNote, Color color}) => Expanded(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
          onPressed: () {
            playSound(keyNote);
          },
          child: SizedBox(height: 25.0),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.redAccent[400], keyNote: 1),
              buildKey(color: Colors.amber[900], keyNote: 2),
              buildKey(color: Colors.yellow[700], keyNote: 3),
              buildKey(color: Colors.teal[700], keyNote: 4),
              buildKey(color: Colors.blue[900], keyNote: 5),
              buildKey(color: Colors.lightBlue[700], keyNote: 6),
              buildKey(color: Colors.purple[400], keyNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
