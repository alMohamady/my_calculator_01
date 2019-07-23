import 'package:flutter/material.dart';

void main() => runApp(MyCalculator());


class MyCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Calculator();
  }
}

class _Calculator extends State<Calculator> {

  String text = '0';
  double numOne = 0;
  double numTwo = 0;

  String result = '0';
  String finalResult = '0';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("C", Color(0xffa5a5a5), 1),
                button("+/-", Color.fromRGBO(165,165,165, 1), 1),
                button("%", Color(0xffa5a5a5), 1),
                button("/", Color(0xffff9800), 1
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("7", Color(0xff323232), 1),
                button("8", Color(0xff323232), 1),
                button("9", Color(0xff323232), 1),
                button("X", Color(0xffff9800), 1
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("4", Color(0xff323232), 1),
                button("5", Color(0xff323232), 1),
                button("6", Color(0xff323232), 1),
                button("-", Color(0xffff9800), 1
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("1", Color(0xff323232), 1),
                button("2", Color(0xff323232), 1),
                button("3", Color(0xff323232), 1),
                button("+", Color(0xffff9800), 1
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("0", Color(0xff323232), 0),
                button(".", Color(0xff323232), 1),
                button("=", Color(0xffff9800), 1
                )
              ],
            )
          ],
        ),

      ),


    );
  }

  Widget button(String btnTxt, Color color, int num) {
    Container container;

    if(num == 0) {
      container = Container(
          padding: EdgeInsets.only(bottom: 10),
          child: RaisedButton(
            onPressed: () {

            },
            child: Text(btnTxt,
                style: TextStyle(
                    fontSize: 30
                )
            ),
            color: color,
            padding: EdgeInsets.only(left:81, top:20, right: 81, bottom: 20),
            shape: StadiumBorder(),
          )
      );
    } else {
      container = Container(
          padding: EdgeInsets.only(bottom: 10),
          child: RaisedButton(
            onPressed: () {

            },
            child: Text(btnTxt,
                style: TextStyle(
                    fontSize: 30
                )
            ),
            color: color,
            padding: EdgeInsets.all(20),
            shape: CircleBorder(),
          )
      );
    }
    return container;
  }
}

