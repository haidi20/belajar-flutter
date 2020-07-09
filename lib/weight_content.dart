import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightContent extends StatelessWidget {
  WeightContent({@required this.label, this.weight, this.onPressed});

  final int weight;
  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$label",
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          "$weight",
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FloatingActionButton(
                heroTag: "btn1-$label",
                onPressed: () => onPressed("decriment"),
                backgroundColor: Color(0xFF4C4F5E),
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: FloatingActionButton(
                heroTag: "btn2-$label",
                onPressed: () => onPressed("encriment"),
                backgroundColor: Color(0xFF4C4F5E),
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
