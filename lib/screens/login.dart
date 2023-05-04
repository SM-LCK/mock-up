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
                            Navigator.pushNamed(context, '/RoutePage');
                            // Navigator.push(context, MaterialPageRoute(builder: (context){
                            //   return const RouteListPage();
                            },
    
                          child: Padding(
                            padding: const EdgeInsets.only(left:30,top: 580),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 5,
                                      color: Colors.blue
                                  )
                              ),
                              width: 350,
                              height: 80,
                            ),
                          ),
                    ),
                  ),
          )
    );
  }
}
