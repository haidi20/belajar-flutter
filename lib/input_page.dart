import "./icon_content.dart";
import "./reuseable_card.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

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
                    child: ReuseableCard(
                      onPressed: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      color: selectGender == Gender.male
                          ? inactiveCardColor
                          : activeCardColor,
                      cardChild: ReuseableIcon(
                        label: "Male",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      onPressed: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      color: selectGender == Gender.female
                          ? inactiveCardColor
                          : activeCardColor,
                      cardChild: ReuseableIcon(
                        label: "Female",
                        icon: FontAwesomeIcons.venus,
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
