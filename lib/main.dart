import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        body: PianoKeys(),
      ),
    );
  }
}
class PianoKeys extends StatefulWidget {
  @override
  _PianoKeysState createState() => _PianoKeysState();
}

class _PianoKeysState extends State<PianoKeys> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        }, child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.green, soundNumber: 1),
            buildKey(color: Colors.blue, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.red, soundNumber: 4),
            buildKey(color: Colors.deepOrange, soundNumber: 5),
            buildKey(color: Colors.lightGreenAccent[400], soundNumber: 6),
            buildKey(color: Colors.pink, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
