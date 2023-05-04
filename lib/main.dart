import 'package:flutter/material.dart';
import 'package:practice/screens/charge.dart';
import 'package:practice/screens/ing.dart';
import 'package:practice/screens/login.dart';
import 'package:practice/screens/mypage.dart';
import 'package:practice/screens/n_1request.dart';
import 'package:practice/screens/price.dart';
import 'package:practice/screens/record.dart';
import 'package:practice/screens/routelist.dart';
import 'package:practice/screens/createpot.dart';

void main() {
  runApp(MyApp()); // 앱 실행 MyApp에 메인페이지 적어주면 됨
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>LoginPage(),
        '/RoutePage':(context)=> RouteListPage(),
        '/MyPage':(context)=>MyPage(),
        '/IngPage':(context)=>IngPage(),
        '/ChargePage': (context)=>ChargePage(),
        '/RecordPage': (context)=>RecordPage(),
        '/NrequestPage':(context)=>N_1RequestPage(),
        '/PricePage':(context) => PricePage(),
        '/CreatePotPage':(context) => CreatePotPage()
      },
      //  home: Scaffold(
      //    body: SafeArea(
      //        child : LoginPage()
      //    ),
      //  )
    );
  }
}
