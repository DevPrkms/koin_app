import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

// appBar 삭제
// BottomNavigatorBar 추가
// 우측 전체메뉴 추가 ?
// 메인 블록 디자인 추가

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: new Center(
        child: new Text('Welcom to Home!'),
      ),
    );
  }
}