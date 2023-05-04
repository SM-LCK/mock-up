import 'package:flutter/material.dart';
import 'package:practice/widgets/tab_bar_widget.dart';
//정산하기+하단탭바

class IngPage extends StatelessWidget {
  const IngPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold (
            backgroundColor: Colors.transparent,
            body : Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/ing.png'),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/PricePage');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150, top: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.blue)),
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  tabBar(context)
                ],
              ),
            )
        )
    );
  }
}
