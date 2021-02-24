import 'package:flutter/material.dart';
import 'package:gesture_detector1/skin_two.dart';
import 'second_screen.dart';
import 'skin_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gesture detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
        child: skin_one(),
        onHorizontalDragEnd: (DragEndDetails details) {
          setState(() {
            print(details.toString());
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          });
        },
        // onTap: () {
        //   setState(() {
        //     boolTap = !boolTap;
        //     print('On Tap one!');
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => SecondScreen()),
        //     );
        //   });
        // }
        );
  }

  MaterialColor getColor(bool ontopped) {
    MaterialColor colorsafe = Colors.yellow;
    if (ontopped) {
      colorsafe = Colors.yellow;
    }
    return colorsafe;
  }
}
