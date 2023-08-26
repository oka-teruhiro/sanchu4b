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
  //super;
  //(key: key);

  //String dateNow = '2023.08.14';
  int tuhen = 0;
  int sigo = 0;
  int nowNen = 2023;
  int nowGatu = 8;
  int nowNiti = 15;
  String nowMoji = '2023.8.14';
  int nowNitiKan = 0;
  int nowNitiSi = 0;
  DateTime now = DateTime.now(); // 今日の日付
  DateTime now1 = DateTime(2023, 8, 14); // 鑑定年月日
  String nowTuhen = '比肩'; // 鑑定日の通変星

  void nitiPlus() {
    now1 = now1.add(const Duration(days: 1));
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日

    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    print('今日の日干：$nowNitiKan・日支：$nowNitiSi');
    print('$seinenInt.$seigatuInt.$seinitiInt生');
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);
    print('鑑定日の通変星：$nowTuhen・$tuhen');

    notifyListeners();
  }

  void init() {
    //今日の年・月・日を算出する
    now1 = now; // 鑑定年月日を今日に設定する
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日

    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    print('今日の日干：$nowNitiKan・日支：$nowNitiSi');
    print('$seinenInt.$seigatuInt.$seinitiInt生');
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);
    print('鑑定日の通変星：$nowTuhen・$tuhen');

    notifyListeners();
  }

  void nitiMinus() {
    tuhen = (tuhen - 1) % 10;
    sigo = (sigo - 1) % 12;
    print('鑑定日の通変星：$nowTuhen・$tuhen');
    notifyListeners();
  }
}
