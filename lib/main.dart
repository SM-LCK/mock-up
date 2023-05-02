import 'package:flutter/material.dart';
import 'package:practice/screens/login.dart';

void main() {
  runApp(const MyApp()); // 앱 실행 MyApp에 메인페이지 적어주면 됨
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child : LoginPage()
        ),
      )
    );
  }
}
