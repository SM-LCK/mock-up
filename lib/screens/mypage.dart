import 'package:flutter/material.dart';
import 'package:practice/screens/record.dart';
import 'package:practice/screens/charge.dart';
import 'package:practice/widgets/tab_bar_widget.dart';

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
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    children: [
                      SizedBox(height:440),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/ChargePage');
                          },
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 5, color: Colors.blue)
                            ),
                            width: 350,
                            height: 60,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/RecordPage');
                          },
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 5, color: Colors.blue)),
                            width: 370,
                            height: 80,
                          ),
                        ),
                      ),
                    ]
                ),
                tabBar(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
