import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //expanded is used to fill the whole screen
          Expanded(
            //flex: 2, to scale accordingly - ratio
            child: TextButton(
              onPressed: () {
                //the things which changes ui and need
                //to be build are inside setState() method
                setState(() {
                  changeNumber();
                });
              },
              child: Image.asset(
                "assets/dice$leftDiceNumber.png",
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeNumber();
                });
              },
              child: Image.asset(
                "assets/dice$rightDiceNumber.png",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
}
