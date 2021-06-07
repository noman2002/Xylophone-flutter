// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: XylophonePage(),
      );
}

class XylophonePage extends StatelessWidget {
  // final player = AudioCache();
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(color: Colors.red, keyNumber: 1),
              buildKey(color: Colors.orange, keyNumber: 2),
              
              buildKey(color: Colors.yellow, keyNumber: 3),
              buildKey(color: Colors.green, keyNumber: 4),
              buildKey(color: Colors.blue.shade300, keyNumber: 5),
              buildKey(color: Colors.blue.shade700, keyNumber: 6),
              buildKey(color: Colors.purple, keyNumber: 7),
            ],
          ),
        ),
      );

  Widget buildKey({Color? color, int? keyNumber}) => Expanded(
        child: MaterialButton(
          color: color,
          onPressed: () {
            // player.play("note$keyNumber.wav");
          },
        ),
      );
}
