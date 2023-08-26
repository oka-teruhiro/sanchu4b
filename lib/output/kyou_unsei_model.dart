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

  void init() {
    now1 = now;
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
