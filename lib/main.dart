import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyDicee());
}

class MyDicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("dicee"),
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
  var random = new Random();
  int leftDecidedNumber = 1;
  int rightDecidedNumber = 1;

  void handleDiceNumber(String position) {
    setState(() {
      if (position == "left") {
        leftDecidedNumber = random.nextInt(6) + 1;
      } else if (position == "right") {
        rightDecidedNumber = random.nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  handleDiceNumber("left");
                },
                child: Image.asset("images/dice$leftDecidedNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () => handleDiceNumber("right"),
                child: Image.asset("images/dice$rightDecidedNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
