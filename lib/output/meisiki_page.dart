import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeisikiPage extends StatelessWidget {
  const MeisikiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'あなたの命式は',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SizedBox(
          height: 660,
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Container(
              height: 44,
              child: Center(
                child: Column(
                  children: [
                    //■■■■■■■■■生年月日の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              //color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: const Center(
                                child: Text(
                                  '生年'
                                  '月日',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //■■■■■■■■■天干の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 5,
                                  )),
                              //color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: const Center(
                                child: Text(
                                  '干',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■地支の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              //color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: const Center(
                                child: Text(
                                  '支',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■外面内面の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              //color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■蔵干の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              //color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: const Center(
                                child: Text(
                                  '蔵干',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■通変星の行■■■■■■■■■
                    SizedBox(
                      height: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              //color: Colors.black,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              //color: Colors.black,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              //color: Colors.black,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '通',
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      '変',
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      '星',
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■12運の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              //color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: const Center(
                                child: Text(
                                  '十二運',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■取説の行■■■■■■■■■
                    SizedBox(
                      height: 90,
                      child: Container(
                        color: Colors.black54,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '太ワクのところは、タップすると、さらに詳しい説明をみることができます。',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
