import "./icon_content.dart";
import "./reuseable_card.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = activeCardColor;
  Color femaleColor = activeCardColor;

  void updateColor(int gender) {
    print(gender);
    setState(() {
      if (gender == 1) {
        if (maleColor == activeCardColor) {
          femaleColor = activeCardColor;
          maleColor = inactiveCardColor;
        }
      }
      if (gender == 2) {
        if (femaleColor == activeCardColor) {
          femaleColor = inactiveCardColor;
          maleColor = activeCardColor;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColor(1);
                      },
                      child: ReuseableCard(
                        color: maleColor,
                        cardChild: ReuseableIcon(
                          label: "Male",
                          icon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColor(2);
                      },
                      child: ReuseableCard(
                        color: femaleColor,
                        cardChild: ReuseableIcon(
                          label: "Female",
                          icon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      color: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
