import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeisikiPage extends StatelessWidget {
  late String titleSeinengappi;
  late String nenchu;
  late String gechu;
  late String nichu;
  late DateTime setuiribi;
  late int setuirinitisuu;

  MeisikiPage(
      {Key? key,
      required this.titleSeinengappi,
      required this.nenchu,
      required this.gechu,
      required this.nichu,
      required this.setuiribi,
      required this.setuirinitisuu})
      : super(key: key);

  //このページで使う変数を定義する
  String seinenMoji = '1900';
  String seigatuMoji = '01';
  String seinitiMoji = '01';
  String nenkan = '甲';
  String nensi = '子';
  String gatukan = '甲';
  String gatusi = '子';
  String nitikan = '甲';
  String nitisi = '子';

  @override
  Widget build(BuildContext context) {
    //生年月日から生年・生月・生日を取り出す。
    seinenMoji = titleSeinengappi.substring(0, 4);
    seigatuMoji = titleSeinengappi.substring(5, 7);
    seinitiMoji = titleSeinengappi.substring(8, 10);
    //年柱・月柱・日柱から年干・年支・月干・月支・日干・日支を作成する
    nenkan = nenchu.substring(0, 1);
    nenkan = nenchu.substring(1, 2);
    nenkan = gechu.substring(0, 1);
    nenkan = gechu.substring(1, 2);
    nenkan = nichu.substring(0, 1);
    nenkan = nichu.substring(1, 2);

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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      seinitiMoji,
                                      style: const TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const Text(
                                      '日',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      seigatuMoji,
                                      style: const TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const Text(
                                      '月',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      seinenMoji,
                                      style: const TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const Text(
                                      '年',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '生年',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '月日',
                                      style: TextStyle(
                                        fontSize: 20,
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
                                    fontSize: 20,
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
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //■■■■■■■■■支合支冲の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 270,
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 30,
                                          child: Container(),
                                        ),
                                        SizedBox(
                                          width: 90,
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
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 90,
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
                                        const SizedBox(
                                          width: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 60,
                                        ),
                                        SizedBox(
                                          width: 150,
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
                                        const SizedBox(
                                          width: 60,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              //color: Colors.black,
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
                                      '支合',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '支冲',
                                      style: TextStyle(
                                        fontSize: 20,
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
                                    fontSize: 20,
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
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '変',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '星',
                                      style: TextStyle(
                                        fontSize: 20,
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
                                    fontSize: 18,
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
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '生年月日：$titleSeinengappi・年柱：$nenchu・月柱：$gechu・日柱：$nichu・節入り日：$setuiribi・節入り日数：$setuirinitisuu',
                            //'太ワクのところは、タップすると、さらに詳しい説明をみることができます。',
                            style: const TextStyle(
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
