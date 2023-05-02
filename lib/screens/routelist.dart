import 'package:flutter/material.dart';
import 'package:practice/screens/no_pot.dart';


class RouteListPage extends StatelessWidget {
  const RouteListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/route.png'),
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 370,
                  padding: const EdgeInsets.only(top: 150),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const NoPotPage();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Colors.blue
                          )
                      ),
                      width: 360,
                      height: 170,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 270,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const NoPotPage();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Colors.blue
                          )
                      ),
                      width: 360,
                      height: 170,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5,
                                color: Colors.blue
                            )
                        ),
                        width: 100,
                        height: 100,
                        child: Icon(
                            Icons.alt_route,
                            color: Colors.black,
                            size : 40
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const NoPotPage();
                        }));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: Colors.blue
                              )
                          ),
                          width: 100,
                          height: 100,
                          child: Text(
                            "참여중",
                            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          )
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const NoPotPage();
                        }));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: Colors.blue
                              )
                          ),
                          width: 100,
                          height: 100,
                          child:
                          Text(
                            "MY",
                            style: const TextStyle(fontSize: 40),
                          )
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
