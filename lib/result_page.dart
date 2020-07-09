import "package:flutter/material.dart";

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  "RESULT",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.only(bottom: 70.0),
                decoration: BoxDecoration(
                  color: Color(0xff1F152D),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Normal",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "18.3",
                      style: TextStyle(
                        fontSize: 100.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Your BMI result is quite low, you should eat more !",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
