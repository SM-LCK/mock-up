import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';

class NoIngPage extends StatelessWidget {
  const NoIngPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/noing.png'),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/RoutePage');
            }, //충전하기
            child: Padding(
              padding: const EdgeInsets.only(top: 580),
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
              padding: const EdgeInsets.only(top: 580),
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
              padding: const EdgeInsets.only(top: 580),
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
    ));
  }
}
