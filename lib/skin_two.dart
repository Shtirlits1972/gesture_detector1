import 'package:flutter/material.dart';
import 'Ut.dart';

class skin_two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 800,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Ut.getWallpaper()),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 250,
                    height: 50,
                    color: Colors.transparent,
                    child: Text(
                      'Dark Side Of The Moon',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.transparent,
                    child: null,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.yellow,
                          width: 10.0,
                        ),
                        color: Colors.black,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          Ut.getQR(),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.transparent,
                    child: null,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 260,
                    height: 20,
                    margin: const EdgeInsets.only(bottom: 7, top: 3),
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
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 260,
                    padding: const EdgeInsets.only(bottom: 6, top: 2),
                    // margin: const EdgeInsets.only(bottom: 200),
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
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.transparent,
                    child: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
