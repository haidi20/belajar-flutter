import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatefulWidget {
  @override
  _DestiniState createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  int index = 0;

  List names = [
    "nata",
    "keren",
    "mantab",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: FlatButton(
        color: Colors.red,
        onPressed: () => index++,
        child: Text(
          names[index],
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
