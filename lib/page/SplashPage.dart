import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashPage> {
  int _jumpTimes = 0;
  Timer timer;

  @override
  Widget build(BuildContext context) {
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _jumpTimes++;
      setState(() {

      });
    });
    return MaterialApp(
      title: 'Splash界面',
      home: Scaffold(
        body: Stack(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Image.asset(
                "images/bg_splash.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                right: 30,
                top: 30,
                child: RaisedButton(
                  child: Text(
                    '跳过$_jumpTimes',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "跳过Splash界面",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
