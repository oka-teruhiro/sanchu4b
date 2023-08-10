import 'package:flutter/material.dart';

class KyouUnseiModel extends ChangeNotifier {
  String aText = 'こんにちは';
  int tuhen = 0;

  void changeAText() {
    tuhen = (tuhen + 1) % 10;

    if (aText == 'こんにちは') {
      aText = 'こんばんは';
    } else {
      aText = 'こんにちは';
    }
    // aText = 'こんばんは';
    notifyListeners();
  }
}
