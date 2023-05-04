import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';

class PotListPage0 extends StatelessWidget {
  const PotListPage0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/potlist.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                        height: 300,
                        child: Image(
                          image: AssetImage('assets/joinmodal.png'),
                        ));
                  },
                );
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
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                        height: 300,
                        child: Image(
                          image: AssetImage('assets/outmodal.png'),
                        ));
                  },
                );
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
}
