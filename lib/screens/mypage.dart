import 'package:flutter/material.dart';
import 'package:practice/screens/record.dart';
import 'package:practice/screens/charge.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/mypage.png'),
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              children: [
                  Column(
                children: [
                  SizedBox(height:400),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/ChargePage');
                  }, //충전하기
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.blue)),
                      width: 350,
                      height: 80,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/RecordPage');
                    },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.blue)),
                      width: 350,
                      height: 80,
                    ),
                  ),
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/RoutePage');
                    }, //충전하기
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120),
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
                    padding: const EdgeInsets.only(top: 120),
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
                  padding: const EdgeInsets.only(top: 120),
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
          ],
          ),
        ),
      ),
    ),
    );
  }
}
