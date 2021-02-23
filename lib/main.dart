import 'package:flutter/material.dart';
import 'second_screen.dart';

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

  Widget build(BuildContext context) {
    return GestureDetector(
      child: SafeArea(
        child: Container(
          color: getColor(boolTap),
          child: Center(
            child: Text('ONE'),
          ),
        ),
      ),
      onHorizontalDragEnd: (DragEndDetails details) {
        setState(() {
          print(details.toString());
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        });
      },
      onTap: () {
        setState(() {
          boolTap = !boolTap;
          print('On Tap one!');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        });
      }
    );
  }

  MaterialColor getColor(bool ontopped) {
    MaterialColor colorsafe = Colors.deepPurple;
    if (ontopped) {
      colorsafe = Colors.yellow;
    }
    return colorsafe;
  }
}
