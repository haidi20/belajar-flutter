import "./result_page.dart";
import "./icon_content.dart";
import "./reuseable_card.dart";
import "./slider_content.dart";
import "./weight_content.dart";
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
  int age = 20;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                cardChild: SliderContent(
                  height: height,
                  onChange: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      color: activeCardColor,
                      cardChild: WeightContent(
                        label: "WEIGHT",
                        weight: weight,
                        onPressed: (String type) {
                          setState(() {
                            if (type == "encriment") {
                              weight++;
                            } else if (type == "decriment") {
                              weight--;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      color: activeCardColor,
                      cardChild: WeightContent(
                        label: "AGE",
                        weight: age,
                        onPressed: (String type) {
                          setState(() {
                            if (type == "encriment") {
                              age++;
                            } else if (type == "decriment") {
                              age--;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage()),
                );
              },
              child: Text("CALCULATE"),
              color: Color(0xFFEB1555),
            ),
          ],
        ),
      ),
    );
  }
}
