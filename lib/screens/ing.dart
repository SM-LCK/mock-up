import 'package:flutter/material.dart';
//정산하기+하단탭바

class IngPage extends StatelessWidget {
  const IngPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/ing.png'),
                    )
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Container(
                    child: Column(
                      children: [
                        GestureDetector(
                    onTap: () {
                       Navigator.pushNamed(context, '/PricePage');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150, top: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: Colors.blue
                            )
                        ),
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/RoutePage');
                    }, //충전하기
                    child: Padding(
                      padding: const EdgeInsets.only(top: 580),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.blue)),
                        width: 100,
                        height: 80,
                      ),
                    ),
                  ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/IngPage');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 580),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.blue)),
                      width: 100,
                      height: 80,
                    ),
                  ),
              ),
              GestureDetector(
                onTap: () {
                 Navigator.pushNamed(context, '/MyPage');
                  },
                child: Padding(
                  padding: const EdgeInsets.only(top: 580),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.blue)),
                    width: 100,
                    height: 80,
                  ),
                ),
              ),
            ],
            ),


                      ],
                    ),

                  ),
                  
                  
                ),
        )
    );
  }
}
