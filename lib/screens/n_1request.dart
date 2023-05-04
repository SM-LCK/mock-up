import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';

class N_1RequestPage extends StatelessWidget {
  const N_1RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/n_1request.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                ShowComplete(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 300, top: 400),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.blue)),
                  width: 90,
                  height: 50,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                ShowNoMoney(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 300, top: 140),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.blue)),
                  width: 90,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void ShowComplete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text("정산이 완료되었습니다."),
            actions: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('확인'),
                ),
              )
            ],
          );
        });
  }

  void ShowNoMoney(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text("잔액 부족"),
            actions: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const N_1RequestPage();
                    }));
                  },
                  child: Text('충전하러가기'),
                ),
              )
            ],
          );
        });
  }
}
