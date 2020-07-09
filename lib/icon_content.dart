import "package:flutter/material.dart";

class ReuseableIcon extends StatelessWidget {
  ReuseableIcon({@required this.label, this.icon});

  final String label;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
