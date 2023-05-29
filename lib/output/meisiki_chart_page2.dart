import 'dart:math';

import 'package:flutter/material.dart';

class MeisikiChartPage2 extends StatefulWidget {
  final String nichu;
  final String gechu;
  final String nenchu;
  final String tuuhenbosiNenKan;
  final String tuuhenbosiNenSi;
  final String tuuhenbosiGetuKan;
  final String tuuhenbosiGetuSi;
  final String tuuhenbosiNitiKan;
  final String tuuhenbosiNitiSi;
  const MeisikiChartPage2({
    Key? key,
    required this.nichu,
    required this.gechu,
    required this.nenchu,
    required this.tuuhenbosiNenKan,
    required this.tuuhenbosiNenSi,
    required this.tuuhenbosiGetuKan,
    required this.tuuhenbosiGetuSi,
    required this.tuuhenbosiNitiKan,
    required this.tuuhenbosiNitiSi,
  }) : super(key: key);

  @override
  State<MeisikiChartPage2> createState() => _MeisikiChartPage2State();
}

class _MeisikiChartPage2State extends State<MeisikiChartPage2> {
  int counter = 0;
  int j = 0; // 受け渡したい変数を定義
  String nichuS = '甲子';
  String gechuS = '甲子';
  String nenchuS = '甲子';
  String tuuhenbosiNenKanS = '比肩';
  String tuuhenbosiNenSiS = '比肩';
  String tuuhenbosiGetuKanS = '比肩';
  String tuuhenbosiGetuSiS = '比肩';
  String tuuhenbosiNitiKanS = '比肩';
  String tuuhenbosiNitiSiS = '比肩';

  void ggCount() {
    setState(() {
      counter++;
      j = counter % 5;
      // print('i=$j');
    });
  }

  @override
  Widget build(BuildContext context) {
    // 命式ページから受け取った変数でこのウィジェットで使える変数
    nichuS = widget.nichu;
    gechuS = widget.gechu;
    nenchuS = widget.nenchu;
    tuuhenbosiNenKanS = widget.tuuhenbosiNenKan;
    tuuhenbosiNenSiS = widget.tuuhenbosiNenSi;
    tuuhenbosiGetuKanS = widget.tuuhenbosiGetuKan;
    tuuhenbosiGetuSiS = widget.tuuhenbosiGetuSi;
    tuuhenbosiNitiKanS = widget.tuuhenbosiNitiKan;
    tuuhenbosiNitiSiS = widget.tuuhenbosiNitiSi;

    //以下画像生成のための変数
    // const double w1 = 40;
    const double h1 = 25;
    // const double h2 = 90;
    const double f1 = 20;
    const int c1 = -200000000; //暗い緑
    const int c2 = -1; // 白
    const int c4 = -1294214; // ピンク
    const int c3 = -1407770; // ピンク
    // 天が与える運勢
    const int godU0 = 0; // 木地下１階
    const int godU1 = 1; // 火地下１階
    const int godU2 = 2; // 土地下１階
    const int godU3 = 3; // 金地下１階
    const int godU4 = 4; // 水地下１階
    // 通変5運の表示
    const String tuG0 = '比'; // 木３階
    const String tuG1 = '食'; // 火３階
    const String tuG2 = '財'; // 土３階
    const String tuG3 = '官'; // 金３階
    const String tuG4 = '印'; // 水３階
    // 通変星の表示内容
    const String tu0 = '比肩'; // 木２階
    const String tu1 = '劫敗'; // 木１階
    const String tu2 = '食神'; // 火２階
    const String tu3 = '傷官'; // 火１階
    const String tu4 = '偏財'; // 土２階
    const String tu5 = '正財'; // 土１階
    const String tu6 = '偏官'; // 金２階
    const String tu7 = '正官'; // 金１階
    const String tu8 = '倒食'; // 水２階
    const String tu9 = '印綬'; // 水１階
    // 通変星の数の表示内容
    const int tuS0 = 0; // 木２階数
    const int tuS1 = 1; // 木１階数
    const int tuS2 = 2; // 火２階数
    const int tuS3 = 3; // 火１階数
    const int tuS4 = 4; // 土２階数
    const int tuS5 = 5; // 土１階数
    const int tuS6 = 6; // 金２階数
    const int tuS7 = 7; // 金１階数
    const int tuS8 = 8; // 水２階数
    const int tuS9 = 9; // 水１階数
    // 天が与える運勢の数の表示色
    const int godUColor0 = c2; // 木地下１階色
    const int godUColor1 = c2; // 火地下1階色
    const int godUColor2 = c2; // 土地下1階色
    const int godUColor3 = c2; // 金地下1階色
    const int godUColor4 = c2; // 水地下1階色
    // 天が与える運勢の数の表示色
    const int tuGColor0 = c2; // 木3階色
    const int tuGColor1 = c2; // 火3階色
    const int tuGColor2 = c2; // 土3階色
    const int tuGColor3 = c2; // 金3階色
    const int tuGColor4 = c2; // 水3階色
    // 通変星の数の表示色
    const int tuColor0 = c2; // 木２階色
    const int tuColor1 = c2; // 木１階色
    const int tuColor2 = c2; // 火２階色
    const int tuColor3 = c2; // 火１階色
    const int tuColor4 = c2; // 土２階色
    const int tuColor5 = c2; // 土１階色
    const int tuColor6 = c2; // 金２階色
    const int tuColor7 = c2; // 金１階色
    const int tuColor8 = c2; // 水２階色
    const int tuColor9 = c2; // 水１階色
    // 通変星の数の表示色
    const int tuSColor0 = c2; // 木２階数色
    const int tuSColor1 = c2; // 木１階数色
    const int tuSColor2 = c2; // 火２階数色
    const int tuSColor3 = c2; // 火１階数色
    const int tuSColor4 = c2; // 土２階数色
    const int tuSColor5 = c2; // 土１階数色
    const int tuSColor6 = c2; // 金２階数色
    const int tuSColor7 = c2; // 金１階数色
    const int tuSColor8 = c2; // 水２階数色
    const int tuSColor9 = c2; // 水１階数色

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text('命式チャート（工事中）$nichuS'),
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                CustomPaint(
                  painter: ShapePainter1(), // 渡したい変数を引数に指定する
                  // size: const Size(400, 400), // この行を入れると図形と文字を重ねることができない
                ),
                // ■■■■■■■■■ 1行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 20,
                      height: 4,
                    ),
                  ],
                ),

                // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 130,
                      height: 25,
                      child: Center(
                        child: Text(
                          '表面　　　　　',
                          style: TextStyle(
                            color: Color(c3),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      // height: h1,
                    ),
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tuG0, // ■■■■■■■■■ 木3階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuGColor0),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 25,
                    ),
                    SizedBox(
                      width: 130,
                      height: 25,
                    ),
                  ],
                ),
                // ■■■■■■■■■ 3行目 ■■■■■■■■■ スペース調整 ■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                  ],
                ),
                // ■■■■■■■■■ 4行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tu0, // ■■■■■■■■■ 木2階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuColor0),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 5行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 10,
                      height: 25,
                      child: Center(
                        child: Text(
                          '$tuS0', // ■■■■■■■■■ 木2階数 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuSColor0),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 6行目 ■■■■■■■■■ スペース調整 ■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 20,
                      height: 4,
                    ),
                  ],
                ),
                // ■■■■■■■■■ 7行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tu1, //■■■■■■■■■ 木１階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuColor1),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 8段目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                SizedBox(
                  width: 386,
                  height: 84,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ■■■■■■■■■ 左3列目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 25,
                        height: 84,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            // ■■■■■■■■■ 1行目 スペース調整 ■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: 0,
                            ),
                            // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: 24,
                              child: Text(
                                tuG4,
                                style: TextStyle(
                                  color: Color(tuGColor4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: f1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ■■■■■■■■■ 左2列目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 52,
                        height: 84,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            // ■■■■■■■■■ 1行目 スペース調整 ■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: 0,
                            ),
                            // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  tu8, // ■■■■■■■■■ 水2階 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuColor8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                            // ■■■■■■■■■ 3行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  '$tuS8', // ■■■■■■■■■ 水2階数 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuSColor8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ■■■■■■■■■ 左1列目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 52,
                        height: 84,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            // ■■■■■■■■■ 1行目 スペース調整 ■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: 16,
                            ),
                            // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  tu9, // ■■■■■■■■■ 水1階 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuColor9),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                            // ■■■■■■■■■ 3行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  '$tuS9', // ■■■■■■■■■ 水1階数 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuSColor9),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ■■■■■■■■■ 8段目中央 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 62, //94 初期値
                        height: 84,
                        child: Column(
                          children: [
                            // ■■■■■■■■■ 1行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            const SizedBox(
                              width: 18,
                              height: 25,
                              child: Center(
                                child: Text(
                                  '$tuS1', // ■■■■■■■■■ 木１階数 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuSColor1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                            // ■■■■■■■■■ 2行目 スペース調整 ■■■■■■■■■■■■■■■■■■■■
                            const SizedBox(
                              width: 20,
                              height: 0,
                            ),
                            // ■■■■■■■■■ 3行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            const SizedBox(
                              width: 12,
                              height: 19,
                              child: Center(
                                child: Text(
                                  '$godU0', // ■■■■■■■■■ 木地下１階数 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(godUColor0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                            // ■■■■■■■■■ 4行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              width: 62,
                              height: 19,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 12,
                                    child: Center(
                                      child: Text(
                                        '$godU4',
                                        style: TextStyle(
                                          color: Color(godUColor4),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 34,
                                    child: Container(
                                        // color: Colors.cyanAccent,
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                    child: Center(
                                      child: Text(
                                        '$godU1',
                                        style: TextStyle(
                                          color: Color(godUColor1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ■■■■■■■■■ 5行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            const SizedBox(
                              width: 62,
                              height: 0,
                            ),
                            // ■■■■■■■■■ 6行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              width: 62,
                              height: 19,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 12,
                                    child: Center(
                                      child: Text(
                                        '$godU3',
                                        style: TextStyle(
                                          color: Color(godUColor3),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 14,
                                    child: Container(
                                        // color: Colors.cyanAccent,
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                    child: Center(
                                      child: Text(
                                        '$godU2',
                                        style: TextStyle(
                                          color: Color(godUColor2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ■■■■■■■■■ 右1列目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 52,
                        height: 84,
                        child: Column(
                          children: const [
                            // ■■■■■■■■■ 1行目 スペース調整 ■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: 16,
                            ),
                            // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  tu3, // ■■■■■■■■■ 火1階 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuColor3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                            // ■■■■■■■■■ 3行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  '$tuS3', // ■■■■■■■■■ 火1階数 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuSColor3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ■■■■■■■■■ 右2列目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 52,
                        height: 84,
                        child: Column(
                          children: const [
                            // ■■■■■■■■■ 1行目 スペース調整 ■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: 0,
                            ),
                            // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  tu2, // ■■■■■■■■■ 火2階 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuColor2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                            // ■■■■■■■■■ 3行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                            SizedBox(
                              height: h1,
                              child: Center(
                                child: Text(
                                  '$tuS2', // ■■■■■■■■■ 火2階数 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuSColor2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ■■■■■■■■■ 右3列目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                      SizedBox(
                        width: 25,
                        height: 84,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              // ■■■■■■■■■ 1行目 スペース調整 ■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                height: 0,
                              ),
                              // ■■■■■■■■■ 2行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                height: 25,
                                child: Text(
                                  tuG1, // ■■■■■■■■■ 火3階 ■■■■■■■■■
                                  style: TextStyle(
                                    color: Color(tuGColor1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ■■■■■■■■■ 9行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tu7, // ■■■■■■■■■ 金1階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuColor7),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 25,
                    ),
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tu5, // ■■■■■■■■■ 土1階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuColor5),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 10行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 19,
                      child: Center(
                        child: Text(
                          '$tuS7', // ■■■■■■■■■ 金1階数 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuSColor7),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 19,
                    ),
                    SizedBox(
                      width: 40,
                      height: 19,
                      child: Center(
                        child: Text(
                          '$tuS5', // ■■■■■■■■■ 土1階数 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuSColor5),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 11行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 24,
                      child: Center(
                        child: Text(
                          tu6, // ■■■■■■■■■ 金２階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuColor6),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 19,
                    ),
                    SizedBox(
                      width: 40,
                      height: 24,
                      child: Center(
                        child: Text(
                          tu4, // ■■■■■■■■■ 土２階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuColor4),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 12行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          '$tuS6', // ■■■■■■■■■ 金２階数 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuSColor6),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 94,
                      height: 20,
                    ),
                    SizedBox(
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          '$tuS4', // ■■■■■■■■■ 土２階数 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuSColor4),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 13行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tuG3, // ■■■■■■■■■ 金３階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuGColor3),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      height: 25,
                    ),
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tuG2, // ■■■■■■■■■ 土３階 ■■■■■■■■■
                          style: TextStyle(
                            color: Color(tuGColor2),
                            fontWeight: FontWeight.bold,
                            fontSize: f1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ■■■■■■■■■ 15行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 194,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 19,
                          ),
                          // ■■■■■■■■■ 15行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 40,
                                height: 25,
                                child: Text(
                                  '本質',
                                  style: TextStyle(
                                    color: Color(c3),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 25,
                              ),
                              SizedBox(
                                width: 20,
                                height: 25,
                                child: Text(
                                  '木',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                height: 25,
                              ),
                            ],
                          ),
                          // ■■■■■■■■■ 16行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          const SizedBox(
                            height: 8,
                          ),
                          // ■■■■■■■■■ 17行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          const Text(
                            '0',
                            style: TextStyle(
                              color: Color(c2),
                              fontWeight: FontWeight.bold,
                              fontSize: f1,
                            ),
                          ),
                          // ■■■■■■■■■ 18行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ■■■■■■■■■ -3列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                width: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Center(
                                      child: Text(
                                        '水',
                                        style: TextStyle(
                                          color: Colors.white38,
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ■■■■■■■■■ -2列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                width: 28,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Center(
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                          color: Color(c2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ■■■■■■■■■ -1列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                width: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Center(
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                          color: Color(c2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ■■■■■■■■■ 0列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                width: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                          color: Color(c2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ■■■■■■■■■ +1列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                width: 20,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Center(
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                          color: Color(c2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ■■■■■■■■■ +2列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              SizedBox(
                                width: 28,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Center(
                                      child: Text(
                                        '6',
                                        style: TextStyle(
                                          color: Color(c2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: f1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ■■■■■■■■■ +3列 ■■■■■■■■■■■■■■■■■■■■■■■■■■■
                              const SizedBox(
                                width: 20,
                                child: Center(
                                  child: Text('火',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: f1,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                            height: 1,
                          ),
                          // ■■■■■■■■■ 19行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 14,
                                height: 20,
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 20,
                              ),
                              SizedBox(
                                width: 14,
                                height: 20,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // ■■■■■■■■■ 21行 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          const SizedBox(
                            width: 25,
                            height: 1,
                          ),
                          // ■■■■■■■■■ 22行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 12,
                                height: 20,
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 20,
                              ),
                              SizedBox(
                                width: 12,
                                height: 20,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: f1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // ■■■■■■■■■ 23行 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          const SizedBox(
                            width: 25,
                            height: 1,
                          ),
                          // ■■■■■■■■■ 24行目 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 20,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    '金',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: f1,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 70,
                                height: 25,
                              ),
                              SizedBox(
                                width: 20,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    '土',
                                    style: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: f1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      height: 194,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 18,
                            child: Text(
                              '　　　　　　生年月日',
                              style: TextStyle(
                                color: Color(c3),
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 21,
                            child: Text(
                              '1957.03.31　',
                              style: TextStyle(
                                color: Color(c2),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                            child: Text(
                              '　　　　　　　鑑定日',
                              style: TextStyle(
                                color: Color(c3),
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                            child: Text(
                              '2023.05.25　',
                              style: TextStyle(
                                color: Color(c2),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                            child: Text(
                              '年　　月　　日',
                              style: TextStyle(
                                color: Color(c3),
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 92,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 20,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '−',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 0,
                                            // shadowColor: Colors.red,
                                          ),
                                          onPressed: () {},
                                          child: const Text(' '),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 16,
                                            // shadowColor: Colors.red,
                                          ),
                                          onPressed: () {},
                                          child: const Text(''),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '−',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 0,
                                            // shadowColor: Colors.red,
                                          ),
                                          onPressed: () {},
                                          child: const Text(' '),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 16,
                                            // shadowColor: Colors.red,
                                          ),
                                          onPressed: () {},
                                          child: const Text(''),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '−',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                          child: const Text(' '),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 16,
                                          ),
                                          onPressed: () {},
                                          child: const Text(''),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '−',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                          child: const Text(' '),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 16,
                                          ),
                                          onPressed: () {},
                                          child: const Text(''),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '−',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                          child: const Text(' '),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.yellow,
                                            elevation: 0,
                                          ),
                                          onPressed: () {
                                            ggCount();
                                          },
                                          child: const Text(''),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: Color(c2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: f1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomPaint(
                  painter: ShapePainter2(gogyou: j), // 渡したい変数を引数に指定する
                  // size: const Size(400, 500), // この行を入れると図形と文字を重ねることができない
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShapePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(0, 220 - 30 - 14); // 表面の中心座標
    var center2 = const Offset(-70, 500 - 60 - 14 - 0); // 本質の中心座標

    final penWhite = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0;

    final penBlue = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;

    double angleMoku = 72 * 0 - 90;
    double angleKa = 72 * 1 - 90;
    double angleDo = 72 * 2 - 90;
    double angleKin = 72 * 3 - 90;
    double angleSui = 72 * 4 - 90;
    double radianMoku = angleMoku / 180 * pi;
    double radianKa = angleKa / 180 * pi;
    double radianDo = angleDo / 180 * pi;
    double radianKin = angleKin / 180 * pi;
    double radianSui = angleSui / 180 * pi;
    final centerMoku1 =
        center1 + Offset(113 * cos(radianMoku), 113 * sin(radianMoku));
    final centerMoku2 =
        center1 + Offset(59 * cos(radianMoku), 59 * sin(radianMoku));
    final centerKa1 =
        center1 + Offset(113 * cos(radianKa), 113 * sin(radianKa));
    final centerKa2 = center1 + Offset(59 * cos(radianKa), 59 * sin(radianKa));
    final centerDo1 =
        center1 + Offset(113 * cos(radianDo), 113 * sin(radianDo));
    final centerDo2 = center1 + Offset(59 * cos(radianDo), 59 * sin(radianDo));
    final centerKin1 =
        center1 + Offset(113 * cos(radianKin), 113 * sin(radianKin));
    final centerKin2 =
        center1 + Offset(59 * cos(radianKin), 59 * sin(radianKin));
    final centerSui1 =
        center1 + Offset(113 * cos(radianSui), 113 * sin(radianSui));
    final centerSui2 =
        center1 + Offset(59 * cos(radianSui), 59 * sin(radianSui));

    canvas.drawCircle(center1, 32, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerMoku1, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerMoku2, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKa1, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKa2, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerDo1, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerDo2, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKin1, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKin2, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSui1, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSui2, 27, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(center1, 140, penWhite..style = PaintingStyle.stroke);

    // 本質チャートの描画
    canvas.drawCircle(center2, 32, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(center2, 60, penWhite..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ShapePainter2 extends CustomPainter {
  int gogyou = 1; // 五行　0:木 1:火 2:土 3:金 4:水  // ■■■■■■受け取る値を代入する変数を定義
  ShapePainter2({required this.gogyou}); // ■■■■■■■■■受け取る値を上記変数に代入
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(0, 220 - 30 - 14 - 509); // 表面の中心座標
    var center2 = const Offset(-70, 500 - 60 - 14 - 0 - 509); // 本質の中心座標
    const lineLength1 = 170.0;
    const lineLength2 = 84.0;

    final penWhite = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0;

    double radian1 = ((72 * gogyou) - 90 - 36) / 180 * pi;
    double radian2 = ((72 * gogyou) - 90 + 36) / 180 * pi;

    final line1 = center1 +
        Offset(lineLength1 * cos(radian1), lineLength1 * sin(radian1));
    final line2 = center1 +
        Offset(lineLength1 * cos(radian2), lineLength1 * sin(radian2));
    final line21 = center2 +
        Offset(lineLength2 * cos(radian1), lineLength2 * sin(radian1));
    final line22 = center2 +
        Offset(lineLength2 * cos(radian2), lineLength2 * sin(radian2));

    // canvas.drawLine(center1, line0, penRed); // 赤い中心線
    canvas.drawLine(center1, line1, penWhite);
    canvas.drawLine(center1, line2, penWhite);

    // 本質チャートの描画
    canvas.drawLine(center2, line21, penWhite);
    canvas.drawLine(center2, line22, penWhite);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
