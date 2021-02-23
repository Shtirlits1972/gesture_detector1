import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gesture detector',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: OnTap(),
    );
  }
}

class OnTap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OnTapState();
  }
}

class OnTapState extends State<OnTap> {
  bool boolTap = false;
  //MaterialColor colorsafe = Colors.red;

  Widget build(BuildContext context) {
    return GestureDetector(
        child: SafeArea(
          child: Container(
            color: getColor(boolTap),
            child: null,
          ),
        ),
        onTap: () {
          setState(() {
            boolTap = !boolTap;
            print('On Tap!');
          });
        });
  }

  MaterialColor getColor(bool ontopped) {
    MaterialColor colorsafe = Colors.deepPurple;
    if (ontopped) {
      colorsafe = Colors.yellow;
    }
    return colorsafe;
  }
}
