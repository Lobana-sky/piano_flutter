// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('piano'),
        ),
        body: Play(),
      ),
    ),
  );
}

class Play extends StatefulWidget {
  const Play({Key? key}) : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(int soundNumber, Color color, String soundName) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          soundName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(1, Colors.red, 'DO'),
        buildKey(2, Colors.orange, 'RI'),
        buildKey(3, Colors.yellow, "MI"),
        buildKey(4, Colors.green, 'FA'),
        buildKey(5, Colors.teal, 'SOL'),
        buildKey(6, Colors.blue, 'LA'),
        buildKey(7, Colors.purple, 'SI'),
      ],
    );
  }
}
