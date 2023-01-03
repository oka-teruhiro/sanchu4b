import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../nikkan/nikkan_hinoe.dart';
import '../nikkan/nikkan_hinoto.dart';
import '../nikkan/nikkan_kanoe.dart';
import '../nikkan/nikkan_kanoto.dart';
import '../nikkan/nikkan_kinoe.dart';
import '../nikkan/nikkan_kinoto.dart';
import '../nikkan/nikkan_mizunoe.dart';
import '../nikkan/nikkan_mizzunoto.dart';
import '../nikkan/nikkan_tutinoe.dart';
import '../nikkan/nikkan_tutinoto.dart';

class MeisikiPage extends StatelessWidget {
  late String titleSeinengappi;
  late String nenchu;
  late String gechu;
  late String nichu;
  //late DateTime setuiribi;
  late int seinen;
  late int seigatu;
  late int seiniti;
  late int setuirinen;
  late int setuirigatu;
  late int setuiriniti;
  late int setuiriji;
  late int setuirihun;
  late int setuirinitisuu;

  MeisikiPage(
      {Key? key,
      required this.titleSeinengappi,
      required this.nenchu,
      required this.gechu,
      required this.nichu,
      //required this.setuiribi,
      required this.seinen,
      required this.seigatu,
      required this.seiniti,
      required this.setuirinen,
      required this.setuirigatu,
      required this.setuiriniti,
      required this.setuiriji,
      required this.setuirihun,
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
    nensi = nenchu.substring(1, 2);
    gatukan = gechu.substring(0, 1);
    gatusi = gechu.substring(1, 2);
    nitikan = nichu.substring(0, 1);
    nitisi = nichu.substring(1, 2);

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
          height: 668,
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
                                      '$seiniti',
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
                                      '$seigatu',
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
                                      '$seinen',
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
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    nitikan,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                    ),
                                  ),
                                  onPressed: () {
                                    if (nitikan == '甲') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanKinoe(),
                                          ));
                                    } else if (nitikan == '乙') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanKinoto(),
                                          ));
                                    } else if (nitikan == '丙') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanHinoe(),
                                          ));
                                    } else if (nitikan == '丁') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanHinoto(),
                                          ));
                                    } else if (nitikan == '戊') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanTutinoe(),
                                          ));
                                    } else if (nitikan == '己') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanTutinoto(),
                                          ));
                                    } else if (nitikan == '庚') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanKanoe(),
                                          ));
                                    } else if (nitikan == '辛') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanKanoto(),
                                          ));
                                    } else if (nitikan == '壬') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanMizunoe(),
                                          ));
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NikkanMizunoto(),
                                          ));
                                    }
                                  },
                                ),
                              ),
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
                              child: Center(
                                child: Text(
                                  gatukan,
                                  style: const TextStyle(
                                    fontSize: 32,
                                  ),
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
                                child: Text(
                                  nenkan,
                                  style: const TextStyle(
                                    fontSize: 32,
                                  ),
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
                              child: Center(
                                child: Text(
                                  nitisi,
                                  style: const TextStyle(
                                    fontSize: 32,
                                  ),
                                ),
                              ),
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
                              child: Center(
                                child: Text(
                                  gatusi,
                                  style: const TextStyle(
                                    fontSize: 32,
                                  ),
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
                                child: Text(
                                  nensi,
                                  style: const TextStyle(
                                    fontSize: 32,
                                  ),
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
                                        const SizedBox(
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
                    SizedBox(
                      height: 30,
                      width: 350,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 1,
                            )),
                        child: Center(
                          child: Text(
                            '節入り日（ $setuirinen-$setuirigatu-$setuiriniti $setuiriji:$setuirihun ）から$setuirinitisuu日目',
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
                    //■■■■■■■■■取説の行■■■■■■■■■
                    SizedBox(
                      height: 70,
                      child: Container(
                        color: Colors.black54,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text(
                                '太ワクのところは、タップすると、さらに詳しい説明をみることができます。',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
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
            ),
          ),
        ),
      ),
    );
  }
}
