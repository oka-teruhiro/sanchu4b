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
  String nenchu; //年柱
  String gechu; //月柱
  String nichu; //日柱
  int seinen; //生年
  int seigatu; //生月
  int seiniti; //生日
  int setuirinen; //節入り年
  int setuirigatu; //節入り月
  int setuiriniti; //節入り日
  int setuiriji; //節入り時
  int setuirihun; //節入り分
  int setuirinitisuu; //節入り日からの日数（節入り日は第1日目）

  MeisikiPage(
      {Key? key,
      required this.nenchu,
      required this.gechu,
      required this.nichu,
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
  String nenkan = '甲';
  String nensi = '子';
  String gatukan = '甲';
  String gatusi = '子';
  String nitikan = '甲';
  String nitisi = '子';
  //String zouKan = '甲';
  String zouKanNen = '甲';
  String zouKanTuki = '甲';
  String zouKanNiti = '甲';

  @override
  Widget build(BuildContext context) {
    //年柱・月柱・日柱から年干・年支・月干・月支・日干・日支を作成する
    nenkan = nenchu.substring(0, 1);
    nensi = nenchu.substring(1, 2);
    gatukan = gechu.substring(0, 1);
    gatusi = gechu.substring(1, 2);
    nitikan = nichu.substring(0, 1);
    nitisi = nichu.substring(1, 2);
    //蔵干を算出する
    zouKanNen = zouKan(nensi, setuirinitisuu);
    zouKanTuki = zouKan(gatusi, setuirinitisuu);
    zouKanNiti = zouKan(nitisi, setuirinitisuu);

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
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
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
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: Center(
                                  child: Text(
                                zouKanNiti,
                                style: const TextStyle(
                                  fontSize: 32,
                                ),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: Center(
                                  child: Text(
                                zouKanTuki,
                                style: const TextStyle(
                                  fontSize: 32,
                                ),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 1,
                                  )),
                              child: Center(
                                  child: Text(
                                zouKanNen,
                                style: const TextStyle(
                                  fontSize: 32,
                                ),
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
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 70,
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
                                  height: 70,
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
                          SizedBox(
                            width: 90,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 70,
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
                                  height: 70,
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
                          SizedBox(
                            width: 90,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 70,
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
                                  height: 70,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Text(
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

// 関数定義　地支から蔵干を算出する
//  c = zouKan(a, b)
//   a: 地支を表す文字列　（'子','丑','寅',・・・,'戌','亥')
//   b: 節入り日からの日数を表す数字　（1～31）（節入り日は、1　とする）
//   c: 蔵干を表す文字列　（'甲','乙','甲',・・・'壬','癸')
zouKan(String a, int b) {
  //蔵干表
  String zouKanHyou = //蔵干表
      '戊戊戊戊戊戊戊丙丙丙丙丙丙丙甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲・・' //寅
      '甲甲甲甲甲甲甲甲甲甲乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙' //卯
      '乙乙乙乙乙乙乙乙乙癸癸癸戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊・' //辰
      '戊戊戊戊戊庚庚庚庚庚庚庚庚庚庚丙丙丙丙丙丙丙丙丙丙丙丙丙丙丙丙' //巳
      '丙丙丙丙丙丙丙丙丙丙己己己己己己己己己己丁丁丁丁丁丁丁丁丁丁・' //午
      '丁丁丁丁丁丁丁丁丁乙乙乙己己己己己己己己己己己己己己己己己己己' //未
      '己己己己己己己壬壬壬壬壬壬庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚' //申
      '庚庚庚庚庚庚庚庚庚庚辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛・' //酉
      '辛辛辛辛辛辛辛辛辛丁丁丁戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊' //戌
      '戊戊戊戊戊戊戊甲甲甲甲甲壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬・' //亥
      '壬壬壬壬壬壬壬壬壬壬癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸' //子
      '癸癸癸癸癸癸癸癸癸辛辛辛丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁'; //丑
  int d = 12;
  int i = 372;
  String c = '・';
  //地支（文字データ）を地支数（数字）に変換する
  if (a == '子') {
    d = 10;
  } else if (a == '丑') {
    d = 11;
  } else if (a == '寅') {
    d = 0;
  } else if (a == '卯') {
    d = 1;
  } else if (a == '辰') {
    d = 2;
  } else if (a == '巳') {
    d = 3;
  } else if (a == '午') {
    d = 4;
  } else if (a == '未') {
    d = 5;
  } else if (a == '申') {
    d = 6;
  } else if (a == '酉') {
    d = 7;
  } else if (a == '戌') {
    d = 8;
  } else if (a == '亥') {
    d = 9;
  } else {
    print('■■■■■■■■■蔵干算出でエラーが発生しました。十二支以外の文字を検出しました。');
  }
//文字を取り出す場所（index）を算出する
  i = (d * 31) + b - 1;
  print('■■■■a:$a');
  print('■■■■b:$b');
  print('■■■■d:$d');
  print('■■■■i:$i');
  c = zouKanHyou.substring(i, i + 1);

  return c;
}
