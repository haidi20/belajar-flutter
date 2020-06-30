import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Image(
            image: AssetImage("images/dice1.png"),
          ),
        ),
        Expanded(
          child: Image(
            image: AssetImage("images/dice2.png"),
          ),
        ),
      ],
    );
  }
}
