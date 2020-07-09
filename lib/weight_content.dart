import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightContent extends StatelessWidget {
  WeightContent({@required this.weight, this.onPressed});

  final int weight;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "WEIGHT",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Text(
          "$weight",
          style: TextStyle(
            fontSize: 58.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FloatingActionButton(
                onPressed: () => onPressed("decriment"),
                backgroundColor: Color(0xFF1F132F),
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: FloatingActionButton(
                onPressed: () => onPressed("encriment"),
                backgroundColor: Color(0xFF1F132F),
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
