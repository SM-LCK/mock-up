import 'package:flutter/material.dart';
import 'package:practice/screens/pot_list.dart';
import 'package:practice/screens/routelist.dart';

class CreatePotPage extends StatelessWidget {
  const CreatePotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body : Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/createpot.png'),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const PotListPage();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.blue)
                      ),
                      width: 200,
                      height: 80,
                    ),
                  ),
                ),
              ],
            )
          )
        )
    );
  }
}
