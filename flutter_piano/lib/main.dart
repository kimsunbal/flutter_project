import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AudioCache player = AudioCache();

  List<String> text = ['','도','레','미','파','솔','라','시'];
  // This widget is the root of your application.

  void playSound({int number}) {
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1,Colors.red),
              buildKey(2,Colors.orange),
              buildKey(3,Colors.yellow),
              buildKey(4,Colors.green),
              buildKey(5,Colors.teal),
              buildKey(6,Colors.blue),
              buildKey(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        child: Text(
          text[num],
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        color: color,
        onPressed: () {
          print(text[num]);
          playSound(number: num);
        },
      ),
    );
  }
}
