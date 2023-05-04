import 'package:flutter/material.dart';

import 'mypage.dart';


class ChargePage extends StatelessWidget {
  const ChargePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/charge.png'),
              )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 55, top: 530),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 5,
                          color: Colors.blue
                      )
                  ),
                  width: 250,
                  height: 80,
                ),
              ),
            ),
          ),
        )
    );
  }
}
