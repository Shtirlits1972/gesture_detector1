import 'package:flutter/material.dart';
import 'Ut.dart';

class skin_one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Align(
      alignment: Alignment.center,
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.all(Radius.circular(20)),

          image: DecorationImage(
            //  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTblkGhJXDu59WrV01v3uq2GrW1f6n5-NhZrQ&usqp=CAU'),
           image: AssetImage(Ut.getWallpaper()),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: 260,
              margin: const EdgeInsets.only(bottom: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: RichText(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Hello Vidmed ",
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(240),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 10.0,
                  ),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image.asset(
                     Ut.getAvatar(),
                  ),
                ),
              ),
            ),
            Container(
              width: 260,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.yellow,
                  width: 5.0,
                ),
                color: Colors.black,
              ),
              child: RichText(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.call,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "      (063)150-00-88       ",
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ),
            Container(
              width: 260,
              margin: const EdgeInsets.only(bottom: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.yellow,
                  width: 5.0,
                ),
                color: Colors.black,
              ),
              child: RichText(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.account_box_rounded,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: " info@sourceit.com.ua ",
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr,
        ),
      ),
    )));
  }
}