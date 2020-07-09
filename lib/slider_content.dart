import "package:flutter/material.dart";

class SliderContent extends StatelessWidget {
  SliderContent({@required this.height, this.onChange});

  final int height;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "HEIGHT",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              "$height",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            Text(
              "cm",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTickMarkColor: Colors.white,
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
          ),
          child: Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            inactiveColor: Color(0xFF8D8E98),
            onChanged: onChange,
          ),
        ),
      ],
    );
  }
}
