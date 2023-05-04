import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';

class CreatePotPage extends StatelessWidget {
  const CreatePotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/createpot.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const RouteListPage();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 110, top: 580),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.blue)),
              width: 200,
              height: 80,
            ),
          ),
        ),
      ),
    ));
  }
}
