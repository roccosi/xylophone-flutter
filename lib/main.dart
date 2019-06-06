import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  int noteNumber = 1;

  void playNote(int noteNumber) {
    player.play('note$noteNumber.wav');
    print('$noteNumber');
  }

  Expanded buildKey({Color color, int noteNumber, String noteName}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
        child: Text('$noteName'),
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
            children: <Widget>[
              buildKey(color: Colors.red, noteNumber: 1, noteName: 'DO'),
              buildKey(color: Colors.orange, noteNumber: 2, noteName: 'RE'),
              buildKey(color: Colors.yellow, noteNumber: 3, noteName: 'MI'),
              buildKey(color: Colors.green, noteNumber: 4, noteName: 'FA'),
              buildKey(color: Colors.teal, noteNumber: 5, noteName: 'SO'),
              buildKey(color: Colors.blue, noteNumber: 6, noteName: 'LA'),
              buildKey(color: Colors.pink, noteNumber: 7, noteName: 'SI'),
              buildKey(color: Colors.purple, noteNumber: 8, noteName: 'DO'),
            ],
          ),
        ),
      ),
    );
  }
}
