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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playNote(1);
                  },
                  child: Text('1')),
              FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playNote(2);
                  },
                  child: Text('2')),
              FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playNote(3);
                  },
                  child: Text('3')),
              FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playNote(4);
                  },
                  child: Text('4')),
              FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playNote(5);
                  },
                  child: Text('5')),
              FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playNote(6);
                  },
                  child: Text('6')),
              FlatButton(
                  color: Colors.pink,
                  onPressed: () {
                    playNote(7);
                  },
                  child: Text('7')),
              FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playNote(8);
                  },
                  child: Text('8')),
            ],
          ),
        ),
      ),
    );
  }
}
