import 'package:flutter/material.dart';
//연결까지만 확인 -> routelist으로 연결

class NrequestPage extends StatelessWidget {
  const NrequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/n_1request.png'),
              )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/RoutePage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 55, top: 700),
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
