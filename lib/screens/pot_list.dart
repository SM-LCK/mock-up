import 'package:flutter/material.dart';
import 'package:practice/screens/createpot.dart';
import 'package:practice/widgets/tab_bar_widget.dart';

class PotListPage extends StatelessWidget {
  const PotListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/potlist.png'),
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: deviceHeight*(1/8),
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
                Container(
                  alignment: Alignment.bottomRight,
                  height: deviceHeight*(3/8),
                  margin: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/CreatePotPage');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Colors.blue
                          )
                      ),
                      width: 100,
                      height: 80,
                      child: Icon(
                        Icons.library_add,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: deviceHeight*(1/7),
                  margin: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300, // 모달 높이 크기
                            decoration: const BoxDecoration(
                              color: Colors.white, // 모달 배경색
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0), // 모달 좌상단 라운딩 처리
                                topRight: Radius.circular(0), // 모달 우상단 라운딩 처리
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "참여하시겠습니까?",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 3,
                                                color: Colors.black
                                            )
                                        ),
                                        width: 100,
                                        height: 60,
                                        child: Text(
                                          "취소",
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/IngPage');
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 3,
                                                color: Colors.black
                                            )
                                        ),
                                        width: 100,
                                        height: 60,
                                        child: Text(
                                          "확인",
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      );
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
                      height: 60,
                      child: Text(
                        "참여하기",
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: deviceHeight*(1/7),
                  margin: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/IngPage');
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
                      height: 60,
                      child: Text(
                        "참여중",
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                tabBar(context),
              ],
            ),
          ),
        )
    );
  }
}

