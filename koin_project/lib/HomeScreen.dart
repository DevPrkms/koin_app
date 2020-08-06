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
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onBackPressed,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset('images/coin.png'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
