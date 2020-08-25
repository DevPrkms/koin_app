import 'dart:async';

import 'package:flutter/material.dart';
import 'package:koin_project/HomeScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext) => new HomeScreen() // HomeScreen 라우트
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState(); // State 정의?
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  } // Timer 함수

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  } // route(페이지 이동)

  @override
  void initState() {
    super.initState();
    startTime(); // 페이지 로딩 후 startTime 실행
  } // 상태 정의

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff7f8fa6),
      body: new Center(
        child: new Image.asset('images/coin.png'),
      ),
    );
  } // 페이지 직접적인 생성 부분
}
