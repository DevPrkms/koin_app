import 'package:flutter/material.dart';

import 'Account/LoginPage.dart';
import 'Account/RegisterPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("앱을 종료합니다"),
            actions: <Widget>[
              FlatButton(
                child: Text("네"),
                onPressed: () => Navigator.pop(context, true),
              ),
              FlatButton(
                child: Text("아니요"),
                onPressed: () => Navigator.pop(context, false),
              ),
            ],
          ),
        ) ??
        false;
  } // 메인에서 뒤로가기 눌렀을 때 종료 alert 출력

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onBackPressed, // 메인에서 뒤로가기 눌렀을 때 이벤트
      child: Scaffold(
        backgroundColor: Color(0xff7f8fa6),
        body: Container(
//          alignment: Alignment.center,
          child: Container(
//            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // 주축 기준 가운데 정렬
                    children: <Widget>[
                      new Image.asset('images/coin.png'),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly, // 요소들 margin 일정하게
                        children: <Widget>[
                          RaisedButton(
                            child: Text('로그인'),
                            onPressed: () {
                              print('LoginPage');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            textColor: Colors.black,
                            color: Colors.white,
                          ),
                          RaisedButton(
                            child: Text('회원가입'),
                            onPressed: () {
                              print('RegisterPage');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
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
