import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';

class NoPotPage extends StatelessWidget {
  const NoPotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/nopot.png'),
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 100,
                margin: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: Colors.blue
                        )
                    ),
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}