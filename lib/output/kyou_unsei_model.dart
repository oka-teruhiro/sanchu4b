import 'package:flutter/material.dart';

import 'kansuu.dart';

class KyouUnseiModel extends ChangeNotifier {
  int seinenInt;
  int seigatuInt;
  int seinitiInt;

  KyouUnseiModel({
    Key? key,
    required this.seinenInt,
    required this.seigatuInt,
    required this.seinitiInt,
  });

  final String kangou = // ■■■■■■■■■干合表■■■■■■■■■
      "　　　　　合　　　　" // 甲
      "　　　　　　合　　　" // 乙
      "　　　　　　　合　　" // 丙
      "　　　　　　　　合　" // 丁
      "　　　　　　　　　合" // 戊
      "合　　　　　　　　　" // 己
      "　合　　　　　　　　" // 庚
      "　　合　　　　　　　" // 辛
      "　　　合　　　　　　" // 壬
      "　　　　合　　　　　"; // 癸
  final String sigoL = // ■■■■■■■■■支合リスト■■■■■■■■■
      "　合　刑三　冲害三　　　" // 子
      "合　　　　三害冲　三刑　" // 丑
      "　　　　　害三　冲　三合" // 寅
      "刑　　　害　　三　冲合三" // 卯
      "三　　害　　　　三合冲　" // 辰
      "　三害　　　　　合三　冲" // 巳
      "冲害三　　　　合　　三　" // 午
      "害冲　三　　合　　　刑三" // 未
      "三　冲　三合　　　　　害" // 申
      "　三　冲合三　　　　害　" // 酉
      "　刑三合冲　三刑　害　　" // 戌
      "　　合三　冲　三害　　　"; // 亥
  final String keiL = // ■■■■■■■■■刑リスト■■■■■■■■■
      "　　　　　　　　　　　　" // 子
      "　　　　　　　刑　　　　" // 丑
      "　　　　　刑　　刑　　　" // 寅
      "　　　　　　　　　　　　" // 卯
      "　　　　　　　　　　　　" // 辰
      "　　刑　　　　　刑　　　" // 巳
      "　　　　　　　　　　　　" // 午
      "　刑　　　　　　　　　　" // 未
      "　　刑　　刑　　　　　　" // 申
      "　　　　　　　　　　　　" // 酉
      "　　　　　　　　　　　　" // 戌
      "　　　　　　　　　　　　"; // 亥

  int tuhen = 0;
  // int sigo = 0;
  int nowNen = 2023;
  int nowGatu = 8;
  int nowNiti = 15;
  String nowMoji = '2023.8.14';
  int nowNitiKan = 0;
  int nowNitiSi = 0;
  DateTime now = DateTime.now(); // 今日の日付
  DateTime now1 = DateTime(2023, 8, 14); // 鑑定年月日
  String nowTuhen = '比肩'; // 鑑定日の通変星
  int nitiKanNo = 0; // 生年月日の日干No.(0〜9)
  int nitiSi = 0; // 生年月日の日支No.(0〜11)
  int gogyou = 0; // 生年月日の日干の属する五行No.(0〜4)
  String go0 = '0';
  String go1 = '1';
  String go2 = '2';
  String go3 = '3';
  String go4 = '4';
  String go5 = '5';
  String go6 = '6';
  String go7 = '7';
  String go8 = '8';
  String go9 = '9';
  String sigo = "平三刑和害天冲宙三統家合";
  String kei = "平三刑和害天冲宙三統家合";
  List<String> go = [
    'images/tuuhenbosi/t0.png',
    'images/tuuhenbosi/t1.png',
    'images/tuuhenbosi/t2.png',
    'images/tuuhenbosi/t3.png',
    'images/tuuhenbosi/t4.png',
    'images/tuuhenbosi/t5.png',
    'images/tuuhenbosi/t6.png',
    'images/tuuhenbosi/t7.png',
    'images/tuuhenbosi/t8.png',
    'images/tuuhenbosi/t9.png',
  ];

  void init() {
    now1 = now; // 鑑定日として今日の日付を設定する
    //  生年月日から日干と日支と五行を算出する
    nitiKanNo =
        juKanNo(meisikiA(seinenInt, seigatuInt, seinitiInt).substring(4, 5));
    nitiSi =
        juuniSiNo(meisikiA(seinenInt, seigatuInt, seinitiInt).substring(5, 6));
    gogyou = nitiKanNo ~/ 2;
    // 通変星の木２階の文字を算出
    go0 = ((gogyou * -2 + 0) % 10).toString();
    go1 = ((gogyou * -2 + 1) % 10).toString();
    go2 = ((gogyou * -2 + 2) % 10).toString();
    go3 = ((gogyou * -2 + 3) % 10).toString();
    go4 = ((gogyou * -2 + 4) % 10).toString();
    go5 = ((gogyou * -2 + 5) % 10).toString();
    go6 = ((gogyou * -2 + 6) % 10).toString();
    go7 = ((gogyou * -2 + 7) % 10).toString();
    go8 = ((gogyou * -2 + 8) % 10).toString();
    go9 = ((gogyou * -2 + 9) % 10).toString();
    go = [
      'images/tuuhenbosi/t$go0.png',
      'images/tuuhenbosi/t$go1.png',
      'images/tuuhenbosi/t$go2.png',
      'images/tuuhenbosi/t$go3.png',
      'images/tuuhenbosi/t$go4.png',
      'images/tuuhenbosi/t$go5.png',
      'images/tuuhenbosi/t$go6.png',
      'images/tuuhenbosi/t$go7.png',
      'images/tuuhenbosi/t$go8.png',
      'images/tuuhenbosi/t$go9.png',
    ];
    // go = goA;
    //日支の２階支合等の文字を算出
    sigo = sigoL.substring(nitiSi * 12, (nitiSi + 1) * 12);
    //日支の１階刑の文字を算出
    kei = keiL.substring(nitiSi * 12, (nitiSi + 1) * 12);

    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }

  void inc() {
    now1 = now1.add(const Duration(days: 1));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }

  void dec() {
    now1 = now1.add(const Duration(days: -1));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }

  void inc30() {
    now1 = now1.add(const Duration(days: 30));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }

  void dec30() {
    now1 = now1.add(const Duration(days: -30));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }

  void inc365() {
    now1 = now1.add(const Duration(days: 365));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }

  void dec365() {
    now1 = now1.add(const Duration(days: -365));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);

    notifyListeners();
  }
}
