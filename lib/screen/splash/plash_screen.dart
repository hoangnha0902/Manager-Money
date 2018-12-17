import 'dart:async';
import 'package:flutter/material.dart';
import 'package:manager_money_wedding/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  SplashScreenState() {
    _timer = new Timer(const Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, MAIN_ROUTE);
      _timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Stack(
        alignment: const Alignment(0.5, 0.5),
        children: <Widget>[
          Center(
              child: Image.asset(
            'images/icon_launch.jpg',
            fit: BoxFit.fill,
          ))
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }
}
