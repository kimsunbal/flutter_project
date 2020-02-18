import 'dart:math';

import 'package:flutter/material.dart'; // material Design

void main() {
  runApp(MyApp());
} // MyApp이 실행되고 끝난다.

// 위젯
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftNumber = 1;

  int rightNumber = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:
            Text('Dice', style: TextStyle(color: Colors.white, fontSize: 25.0)),
      ),
      body: SafeArea(child: buildDice()),
    ));
  }

  Center buildDice() {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset("images/dice$leftNumber.png"))),
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset("images/dice$rightNumber.png"))),
        ],
      ),
    );
  }
}
