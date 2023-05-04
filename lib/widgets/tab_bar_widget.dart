import 'package:flutter/material.dart';
import 'package:practice/screens/routelist.dart';
import 'package:practice/screens/ing.dart';
import 'package:practice/screens/mypage.dart';

Widget tabBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const RouteListPage();
          }));
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
            return const IngPage();
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
            return const MyPage();
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
  );
}