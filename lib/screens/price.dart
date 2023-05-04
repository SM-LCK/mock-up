import 'package:flutter/material.dart';

class PricePage extends StatelessWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/price.png'),
              )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/NrequestPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 55, top: 520),
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
