import 'package:flutter/material.dart';


class RouteListPage extends StatelessWidget {
  const RouteListPage({Key? key}) : super(key: key);

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
