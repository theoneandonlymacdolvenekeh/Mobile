import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Expanded keys(int key, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$key.wav');
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
            children: <Widget>[
              keys(1, Colors.green),
              keys(2, Colors.red),
              keys(3, Colors.blue),
              keys(4, Colors.orange),
              keys(5, Colors.purple),
              keys(6, Colors.white),
              keys(7, Colors.yellow),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
