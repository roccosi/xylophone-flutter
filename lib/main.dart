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
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.red,
                child: FlatButton(
                    onPressed: () {
                      playNote(1);
                    },
                    child: Text('1')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.orange,
                child: FlatButton(
                    onPressed: () {
                      playNote(2);
                    },
                    child: Text('2')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.yellow,
                child: FlatButton(
                    onPressed: () {
                      playNote(3);
                    },
                    child: Text('3')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.green,
                child: FlatButton(
                    onPressed: () {
                      playNote(4);
                    },
                    child: Text('4')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.teal,
                child: FlatButton(
                    onPressed: () {
                      playNote(5);
                    },
                    child: Text('5')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.blue,
                child: FlatButton(
                    onPressed: () {
                      playNote(6);
                    },
                    child: Text('6')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.pink,
                child: FlatButton(
                    onPressed: () {
                      playNote(7);
                    },
                    child: Text('7')),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsetsDirectional.only(bottom: 10.0),
                color: Colors.purple,
                child: FlatButton(
                    onPressed: () {
                      playNote(8);
                    },
                    child: Text('8')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
