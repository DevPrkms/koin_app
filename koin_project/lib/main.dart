import 'dart:async';

import 'package:flutter/material.dart';
import 'package:koin_project/HomeScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext) => new HomeScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff7f8fa6),
      body: new Center(
        child: new Image.asset('images/coin.png'),
      ),
    );
  }
}
