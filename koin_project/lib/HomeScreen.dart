import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xff7f8fa6),
        body: Center(
            child: Column(children: <Widget>[
          Text("로그인"),
          Text("회원가입"),
        ])));
  }
}
