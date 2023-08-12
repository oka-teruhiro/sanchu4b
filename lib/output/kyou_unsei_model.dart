import 'package:flutter/material.dart';

class KyouUnseiModel extends ChangeNotifier {
  String aText = 'こんにちは';
  int tuhen = 0;
  String kei = "001001001001";

  void changeAText() {
    tuhen = (tuhen + 1) % 10;

    if (aText == 'こんにちは') {
      aText = 'こんばんは';
      kei = "001001001001";
    } else {
      aText = 'こんにちは';
      kei = "010010010010";
    }
    // aText = 'こんばんは';
    notifyListeners();
  }
}
