import 'package:flutter/material.dart';
import 'package:sanchu4b/juuniun/juni_c_siou.dart';
import 'package:sanchu4b/juuniun/juni_d_sihei.dart';
import 'package:sanchu4b/juuniun/juni_e_sisui.dart';
import 'package:sanchu4b/juuniun/juni_f_juuniun.dart';

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

class MeisikiPage2 extends StatelessWidget {
  String nenchu; //年柱
  String gechu; //月柱
  String nichu; //日柱
  int seinen; //生年
  int seigatu; //生月
  int seiniti; //生日
  int setuirinen; //節入り年
  int setuirigatu; //節入り月
  int setuiriniti; //節入り日
  //String setuiriJikokuS;
  int setuiriji; //節入り時
  int setuirihun; //節入り分
  int setuirinitisuu; //節入り日からの日数（節入り日は第1日目）
  //int nenKanNo = 0;
  //int  = 0;

  MeisikiPage2(
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
  String nenkanM = '癸'; //節入り前の年干
  String nensiM = '亥'; //節入り前の年支
  String gatukanM = '癸'; //節入り前の月干
  String gatusiM = '亥'; //節入り前の月支
  int nenKanNo = 0;
  int nenSiNo = 0;
  int gatuKanNo = 0;
  int gatuSiNo = 0;
  int nitiKanNo = 0;
  int nitiSiNo = 0;
  String zouKanNen = '甲';
  String zouKanTuki = '甲';
  String zouKanNiti = '甲';
  int zouKanNenNo = 0;
  int zouKanGatuNo = 0;
  int zouKanNitiNo = 0;
  String tuuhenbosi = //通変星
      "比肩劫敗食神傷官偏財正財偏官正官倒食印綬" //甲
      "劫敗比肩傷官食神正財偏財正官偏官印綬倒食" //乙
      "倒食印綬比肩劫敗食神傷官偏財正財偏官正官" //丙
      "印綬倒食劫敗比肩傷官食神正財偏財正官偏官" //丁
      "偏官正官倒食印綬比肩劫敗食神傷官偏財正財" //戊
      "正官偏官印綬倒食劫敗比肩傷官食神正財偏財" //己
      "偏財正財偏官正官倒食印綬比肩劫敗食神傷官" //庚
      "正財偏財正官偏官印綬倒食劫敗比肩傷官食神" //辛
      "食神傷官偏財正財偏官正官倒食印綬比肩劫敗" //壬
      "傷官食神正財偏財正官偏官印綬倒食劫敗比肩"; //癸
  String tuuhenbosiNenKan = '比肩';
  String tuuhenbosiNenSi = '比肩';
  String tuuhenbosiGetuKan = '比肩';
  String tuuhenbosiGetuSi = '比肩';
  String tuuhenbosiNitiKan = '比肩';
  String tuuhenbosiNitiSi = '比肩';
  String juuniUn = //12運
      '沐冠建帝衰病死墓絶胎養長' //甲
      '病衰帝建冠沐長養胎絶墓死' //乙
      '胎養長沐冠建帝衰病死墓絶' //丙
      '絶墓死病衰帝建冠沐長養胎' //丁
      '胎養長沐冠建帝衰病死墓絶' //戊
      '絶墓死病衰帝建冠沐長養胎' //己
      '死墓絶胎養長沐冠建帝衰病' //庚
      '長養胎絶墓死病衰帝建冠沐' //辛
      '帝衰病死墓絶胎養長沐冠建' //壬
      '建冠沐長養胎絶墓死病衰帝'; //癸
  String juuniUnNiti = '胎';
  String juuniUnGetu = '胎';
  String juuniUnNen = '胎';
  double fs = 20; //フォントサイズ
  double hi = 45.0;
  String color1 = 'pinkAccent';
  double setuiriButtonWidth = 80;
  int iroPink = 0xFFEC407A;
  int iroWhite = 0xFFFFFFFF;
  int iroTeal = 0xFF80CBC4;
  int iroSetuiri = -1;

  @override
  Widget build(BuildContext context) {
    //節入り日の時節入り時刻前ボタンを表示する
    if (setuirinitisuu == 1) {
      setuiriButtonWidth = 80;
      iroSetuiri = iroPink;
    } else {
      setuiriButtonWidth = 0;
      iroSetuiri = iroTeal;
    }
    //年柱・月柱・日柱から年干・年支・月干・月支・日干・日支を作成する
    nenkan = nenchu.substring(0, 1);
    nensi = nenchu.substring(1, 2);
    nenkanM = nenkan;
    nensiM = nensi;
    if (seigatu == 2) {
      if (nenkanM == '甲') {
        nenkan = '癸';
      } else if (nenkanM == '乙') {
        nenkan = '甲';
      } else if (nenkanM == '丙') {
        nenkan = '乙';
      } else if (nenkanM == '丁') {
        nenkan = '丙';
      } else if (nenkanM == '戊') {
        nenkan = '丁';
      } else if (nenkanM == '己') {
        nenkan = '戊';
      } else if (nenkanM == '庚') {
        nenkan = '己';
      } else if (nenkanM == '辛') {
        nenkan = '庚';
      } else if (nenkanM == '壬') {
        nenkan = '辛';
      } else if (nenkanM == '癸') {
        nenkan = '壬';
      } else {}
      if (nensiM == '子') {
        nensi = '亥';
      } else if (nensiM == '丑') {
        nensi = '子';
      } else if (nensiM == '寅') {
        nensi = '丑';
      } else if (nensiM == '卯') {
        nensi = '寅';
      } else if (nensiM == '辰') {
        nensi = '卯';
      } else if (nensiM == '巳') {
        nensi = '辰';
      } else if (nensiM == '午') {
        nensi = '巳';
      } else if (nensiM == '未') {
        nensi = '午';
      } else if (nensiM == '申') {
        nensi = '未';
      } else if (nensiM == '酉') {
        nensi = '申';
      } else if (nensiM == '戌') {
        nensi = '酉';
      } else if (nensiM == '亥') {
        nensi = '戌';
      } else {}
    } else {}

    gatukan = gechu.substring(0, 1);
    gatusi = gechu.substring(1, 2);
    gatukanM = gatukan;
    gatusiM = gatusi;
    if (gatukanM == '甲') {
      gatukan = '癸';
    } else if (gatukanM == '乙') {
      gatukan = '甲';
    } else if (gatukanM == '丙') {
      gatukan = '乙';
    } else if (gatukanM == '丁') {
      gatukan = '丙';
    } else if (gatukanM == '戊') {
      gatukan = '丁';
    } else if (gatukanM == '己') {
      gatukan = '戊';
    } else if (gatukanM == '庚') {
      gatukan = '己';
    } else if (gatukanM == '辛') {
      gatukan = '庚';
    } else if (gatukanM == '壬') {
      gatukan = '辛';
    } else if (gatukanM == '癸') {
      gatukan = '壬';
    } else {}
    if (gatusiM == '子') {
      gatusi = '亥';
    } else if (gatusiM == '丑') {
      gatusi = '子';
    } else if (gatusiM == '寅') {
      gatusi = '丑';
    } else if (gatusiM == '卯') {
      gatusi = '寅';
    } else if (gatusiM == '辰') {
      gatusi = '卯';
    } else if (gatusiM == '巳') {
      gatusi = '辰';
    } else if (gatusiM == '午') {
      gatusi = '巳';
    } else if (gatusiM == '未') {
      gatusi = '午';
    } else if (gatusiM == '申') {
      gatusi = '未';
    } else if (gatusiM == '酉') {
      gatusi = '申';
    } else if (gatusiM == '戌') {
      gatusi = '酉';
    } else if (gatusiM == '亥') {
      gatusi = '戌';
    } else {}

    nitikan = nichu.substring(0, 1);
    nitisi = nichu.substring(1, 2);
    //蔵干を算出する
    zouKanNen = zouKan(nensi, setuirinitisuu);
    zouKanTuki = zouKan(gatusi, setuirinitisuu);
    zouKanNiti = zouKan(nitisi, setuirinitisuu);
    //通変星を算出する
    nitiKanNo = juKanNo(nitikan);
    gatuKanNo = juKanNo(gatukan);
    nenKanNo = juKanNo(nenkan);
    zouKanNitiNo = juKanNo(zouKanNiti);
    zouKanGatuNo = juKanNo(zouKanTuki);
    zouKanNenNo = juKanNo(zouKanNen);
    tuuhenbosiGetuKan = tuuhenbosi.substring(
        nitiKanNo * 20 + gatuKanNo * 2, nitiKanNo * 20 + gatuKanNo * 2 + 2);
    tuuhenbosiNenKan = tuuhenbosi.substring(
        nitiKanNo * 20 + nenKanNo * 2, nitiKanNo * 20 + nenKanNo * 2 + 2);
    tuuhenbosiNitiSi = tuuhenbosi.substring(nitiKanNo * 20 + zouKanNitiNo * 2,
        nitiKanNo * 20 + zouKanNitiNo * 2 + 2);
    tuuhenbosiGetuSi = tuuhenbosi.substring(nitiKanNo * 20 + zouKanGatuNo * 2,
        nitiKanNo * 20 + zouKanGatuNo * 2 + 2);
    tuuhenbosiNenSi = tuuhenbosi.substring(
        nitiKanNo * 20 + zouKanNenNo * 2, nitiKanNo * 20 + zouKanNenNo * 2 + 2);
    //十二運を算出する
    nitiSiNo = juuniSiNo(nitisi);
    gatuSiNo = juuniSiNo(gatusi);
    nenSiNo = juuniSiNo(nensi);
    juuniUnNiti = juuniUn.substring(
        nitiKanNo * 12 + nitiSiNo, nitiKanNo * 12 + nitiSiNo + 1);
    juuniUnGetu = juuniUn.substring(
        nitiKanNo * 12 + gatuSiNo, nitiKanNo * 12 + gatuSiNo + 1);
    juuniUnNen = juuniUn.substring(
        nitiKanNo * 12 + nenSiNo, nitiKanNo * 12 + nenSiNo + 1);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '節入り時刻前の命式は',
            style: TextStyle(
              fontSize: 18,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: setuiriButtonWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    elevation: 0,
                    shadowColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('節入り時刻後'),
                ),
              ),
            )
          ],
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
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              child: Container(
                                //color: Colors.black45,
                                decoration: BoxDecoration(
                                    color: Colors.white24,
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
                                        style: TextStyle(
                                          fontSize: fs,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '日',
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                          color: Colors.cyanAccent,
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
                                    color: Colors.white24,
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
                                        style: TextStyle(
                                          fontSize: fs,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '月',
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                          color: Colors.cyanAccent,
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
                                    color: Colors.white24,
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
                                        style: TextStyle(
                                          fontSize: fs,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '年',
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                          color: Colors.cyanAccent,
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
                                    color: Colors.white24,
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
                                        '生年',
                                        style: TextStyle(
                                          fontSize: fs - 6,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '月日',
                                        style: TextStyle(
                                          fontSize: fs - 6,
                                          color: Colors.cyanAccent,
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
                        height: hi,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.pinkAccent,
                                      width: 2,
                                    )),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      nitikan,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fs,
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
                                    style: TextStyle(
                                      fontSize: fs,
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
                                    style: TextStyle(
                                      fontSize: fs,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              //height: 70,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 1,
                                    )),
                                child: Center(
                                  child: Text(
                                    '干',
                                    style: TextStyle(
                                      fontSize: fs - 2,
                                      color: Colors.cyanAccent,
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
                        height: hi,
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
                                    style: TextStyle(
                                      fontSize: fs,
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
                                    style: TextStyle(
                                      fontSize: fs,
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
                                    style: TextStyle(
                                      fontSize: fs,
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
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 1,
                                    )),
                                child: Center(
                                  child: Text(
                                    '支',
                                    style: TextStyle(
                                      fontSize: fs - 2,
                                      color: Colors.cyanAccent,
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
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 270,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
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
                                    height: 30,
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
                                    color: Colors.white24,
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
                                        '支合',
                                        style: TextStyle(
                                          fontSize: fs - 4,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '支冲',
                                        style: TextStyle(
                                          fontSize: fs - 4,
                                          color: Colors.cyanAccent,
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
                        height: hi,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              //height: 70,
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
                                  style: TextStyle(
                                    fontSize: fs,
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 90,
                              //height: 70,
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
                                  style: TextStyle(
                                    fontSize: fs,
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 90,
                              //height: 70,
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
                                  style: TextStyle(
                                    fontSize: fs,
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              height: 70,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.tealAccent,
                                      width: 1,
                                    )),
                                child: Center(
                                  child: Text(
                                    '蔵干',
                                    style: TextStyle(
                                      fontSize: fs - 2,
                                      color: Colors.cyanAccent,
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
                        height: hi * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: hi,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                      child: Center(
                                          child: Text(
                                        '', //日天
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                        ),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: hi,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                      child: Center(
                                          child: Text(
                                        tuuhenbosiNitiSi, //日地
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                        ),
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
                                    height: hi,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                      child: Center(
                                          child: Text(
                                        tuuhenbosiGetuKan, //月天
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                        ),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: hi,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                      child: Center(
                                          child: Text(
                                        tuuhenbosiGetuSi, //月地
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                        ),
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
                                    height: hi,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                      child: Center(
                                          child: Text(
                                        tuuhenbosiNenKan, //年天
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                        ),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: hi,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.tealAccent,
                                            width: 1,
                                          )),
                                      child: Center(
                                          child: Text(
                                        tuuhenbosiNenSi, //年地
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                        ),
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
                                    color: Colors.white24,
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
                                        '通',
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '変',
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                      Text(
                                        '星',
                                        style: TextStyle(
                                          fontSize: fs - 2,
                                          color: Colors.cyanAccent,
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
                        height: hi,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.pinkAccent,
                                      width: 2,
                                    )),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      juuniUnNiti, //12運日
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fs,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (juuniUnNiti == '胎') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '養') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '長') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '沐') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '冠') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '建') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '帝') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '衰') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '病') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '死') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNiti == '墓') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '日',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
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
                                      color: Colors.pinkAccent,
                                      width: 2,
                                    )),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      juuniUnGetu, //12運月
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fs,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (juuniUnGetu == '胎') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '養') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '長') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '沐') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '冠') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '建') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '帝') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '衰') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '病') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '死') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnGetu == '墓') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '月',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
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
                                      color: Colors.pinkAccent,
                                      width: 2,
                                    )),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      juuniUnNen, //12運年
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fs,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (juuniUnNen == '胎') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '養') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '長') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '沐') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '冠') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '建') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '帝') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Siou(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '衰') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '病') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '死') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else if (juuniUnNen == '墓') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sihei(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Sisui(
                                                hasira: '年',
                                                juuniUnNiti: juuniUnNiti,
                                                juuniUnGatu: juuniUnGetu,
                                                juuniUnNen: juuniUnNen,
                                              ),
                                            ));
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              //height: 70,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.pinkAccent,
                                      width: 2,
                                    )),
                                child: Center(
                                  child: TextButton(
                                    child: Text(
                                      '十二運', //12運年
                                      style: TextStyle(
                                        color: Colors.cyanAccent,
                                        fontSize: fs - 4,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const JuuniUn(),
                                          ));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 36,
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(iroSetuiri),
                                width: 2,
                              )),
                          child: Center(
                            child: TextButton(
                              child: Text(
                                '節入り日（ $setuirinen-$setuirigatu-$setuiriniti $setuiriji:$setuirihun ）から$setuirinitisuu日目',
                                //'太ワクのところは、タップすると、さらに詳しい説明をみることができます。',
                                style: TextStyle(
                                  fontSize: fs - 6,
                                  color: Color(iroWhite),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                if (setuirinitisuu == 1) {
                                  _showSetuiri(context);
                                } else {}
                                /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Setuiribi(),
                                    ));*/
                              },
                            ),
                          ),
                        ),
                      ),
                      //■■■■■■■■■取説の行■■■■■■■■■
                      SizedBox(
                        height: 60,
                        child: Container(
                          color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '赤ワクのところを、タップすると、さらに詳しい説明をみることができます。',
                                  style: TextStyle(
                                    fontSize: fs - 6,
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
      ),
    );
  }

  _showSetuiri(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Container(
              color: Colors.blue,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      '節入り日に誕生しています。',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      '誕生時刻がわからない方は、「節入り時刻前」ボタンも押して2種類の命式表で鑑定し比べ、しっくりくる命式表を用いる必要があります。',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
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
      '戊戊戊戊戊戊戊丙丙丙丙丙丙丙甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲' //寅
      '甲甲甲甲甲甲甲甲甲甲乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙' //卯
      '乙乙乙乙乙乙乙乙乙癸癸癸戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊' //辰
      '戊戊戊戊戊庚庚庚庚庚庚庚庚庚庚丙丙丙丙丙丙丙丙丙丙丙丙丙丙丙丙' //巳
      '丙丙丙丙丙丙丙丙丙丙己己己己己己己己己己丁丁丁丁丁丁丁丁丁丁丁' //午
      '丁丁丁丁丁丁丁丁丁乙乙乙己己己己己己己己己己己己己己己己己己己' //未
      '己己己己己己己壬壬壬壬壬壬庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚' //申
      '庚庚庚庚庚庚庚庚庚庚辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛' //酉
      '辛辛辛辛辛辛辛辛辛丁丁丁戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊' //戌
      '戊戊戊戊戊戊戊甲甲甲甲甲壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬' //亥
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
    //print('■■■■■■■■■蔵干算出でエラーが発生しました。十二支以外の文字を検出しました。');
  }
//文字を取り出す場所（index）を算出する
  i = (d * 31) + b - 1;
  //print('■■■■a:$a');
  //print('■■■■b:$b');
  //print('■■■■d:$d');
  //print('■■■■i:$i');
  c = zouKanHyou.substring(i, i + 1);

  return c;
}

// 関数定義　十干から十干数を算出する
//  b = juKanNo( a )
//   a: 十干を表す文字（'甲','乙',・・・,'癸'）
//   b: 十干を表す数字（'0','1',・・・,'9' ）
juKanNo(String a) {
  int b = 9;
  if (a == '甲') {
    b = 0;
  } else if (a == '乙') {
    b = 1;
  } else if (a == '丙') {
    b = 2;
  } else if (a == '丁') {
    b = 3;
  } else if (a == '戊') {
    b = 4;
  } else if (a == '己') {
    b = 5;
  } else if (a == '庚') {
    b = 6;
  } else if (a == '辛') {
    b = 7;
  } else if (a == '壬') {
    b = 8;
  } else if (a == '癸') {
    b = 9;
  } else {}
  return b;
}

// 関数定義　十二支から十二支数を算出する
//  b = juuniSiNo( a )
//   a: 十二支を表す文字（'子','丑',・・・,'亥'）
//   b: 十二支を表す数字（'0','1',・・・,'11' ）
juuniSiNo(String a) {
  int b = 11;
  if (a == '子') {
    b = 0;
  } else if (a == '丑') {
    b = 1;
  } else if (a == '寅') {
    b = 2;
  } else if (a == '卯') {
    b = 3;
  } else if (a == '辰') {
    b = 4;
  } else if (a == '巳') {
    b = 5;
  } else if (a == '午') {
    b = 6;
  } else if (a == '未') {
    b = 7;
  } else if (a == '申') {
    b = 8;
  } else if (a == '酉') {
    b = 9;
  } else if (a == '戌') {
    b = 10;
  } else if (a == '亥') {
    b = 11;
  } else {}
  return b;
}
