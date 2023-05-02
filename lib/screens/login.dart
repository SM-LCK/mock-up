import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/login.png'),
              )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const RouteListPage();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 55, top: 560),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 5,
                          color: Colors.blue
                      )
                  ),
                  width: 300,
                  height: 80,
                ),
              ),
            ),
          ),
        )
    );
  }
}
