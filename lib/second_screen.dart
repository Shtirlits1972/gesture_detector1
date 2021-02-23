import 'package:flutter/material.dart';
import 'main.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen> {
  bool boolTap = false;

  Widget build(BuildContext context) {
    return GestureDetector(
        child: SafeArea(
          child: Container(
            color: getColor(boolTap),
            child: Center(
              child: Text('TWO'),
            ),
          ),
        ),
              onHorizontalDragEnd: (DragEndDetails details) {
        setState(() {
          print('onHorizontalDragEnd!');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnTap()),
          );
        });
        // onTap: () {
        //   setState(() {
        //     boolTap = !boolTap;
        //     print('On Tap TWO!');
        //                 Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => OnTap()),
        //     );
        //   });
         }
        );
  }

  MaterialColor getColor(bool ontopped) {
    MaterialColor colorsafe = Colors.green;
    if (ontopped) {
      colorsafe = Colors.blue;
    }
    return colorsafe;
  }
}