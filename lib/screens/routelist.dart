import 'package:flutter/material.dart';
import 'package:practice/screens/ing.dart';
import 'package:practice/screens/mypage.dart';

class RouteListPage extends StatelessWidget {
  const RouteListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/route.png'),
          ),
        ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/RoutePage');
                    }, //충전하기
                    child: Padding(
                      padding: const EdgeInsets.only(top: 700),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.blue)),
                        width: 100,
                        height: 80,
                      ),
                    ),
                  ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/IngPage');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 700),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.blue)),
                      width: 100,
                      height: 80,
                    ),
                  ),
              ),
              GestureDetector(
                onTap: () {
                 Navigator.pushNamed(context, '/MyPage');
                  },
                child: Padding(
                  padding: const EdgeInsets.only(top: 700),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.blue)),
                    width: 100,
                    height: 80,
                  ),
                ),
              ),
            ],
            ),
          )  
        ),
    ));
  }
}
