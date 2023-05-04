import 'package:flutter/material.dart';


class RecordPage extends StatelessWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/record.png'),
              )
          ),
          child: Container(
            alignment: Alignment.topLeft,
            height: 100,
            margin: const EdgeInsets.only(top: 40, left: 25),
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
        )
    );
  }
}
