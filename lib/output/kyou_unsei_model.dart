import 'package:flutter/material.dart';

class KyouUnseiModel extends ChangeNotifier {
  //String dateNow = '2023.08.14';
  int tuhen = 0;
  int sigo = 0;
  int nowNen = 2023;
  int nowGatu = 8;
  int nowNiti = 15;
  String nowMoji = '2023.8.14';
  int nowNitiKan = 0;
  int nowNitiSi = 0;
  DateTime now = DateTime.now();
  DateTime now1 = DateTime(2023, 8, 14);

  //int nowNen =2023;
  //　今日の日付を取得する

  //今日の年・月・日を算出する
  //now1 = now;

  //今日の日干・日支を算出する
  //nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
  //nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
  //tuhen = nowNitiKan;
  //sigo = nowNitiSi;

  //notifyListeners();

  void nitiPlus() {
    now1 = now1.add(const Duration(days: 1));
    nowNen = now1.year;
    nowGatu = now1.month;
    nowNiti = now1.day;
    nowMoji = '$nowNen.$nowGatu.$nowNiti';
    print(nowMoji);
    tuhen = (tuhen + 1) % 10;
    sigo = (sigo + 1) % 12;

    notifyListeners();
  }

  void nitiMinus() {
    tuhen = (tuhen - 1) % 10;
    sigo = (sigo - 1) % 12;

    notifyListeners();
  }
}
