import 'dart:math';

import 'package:flutter/material.dart';

import 'meisiki_page3.dart';

class MeisikiChartPage2 extends StatefulWidget {
  final int seinenInt;
  final int seigatuInt;
  final int seinitiInt;
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
    required this.seinenInt,
    required this.seigatuInt,
    required this.seinitiInt,
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
  int seinenIntS = 1990;
  int seigeIntS = 1;
  int seinitiIntS = 1;
  String nichuS = '甲子';
  String gechuS = '甲子';
  String nenchuS = '甲子';
  String tuNenKanS = '比肩';
  String tuNenSiS = '比肩';
  String tuGeKanS = '比肩';
  String tuGeSiS = '比肩';
  String tuNitiKanS = '比肩';
  String tuNitiSiS = '比肩';

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
    seinenIntS = widget.seinenInt; // 生年
    seigeIntS = widget.seigatuInt; // 生月
    seinitiIntS = widget.seinitiInt; // 生日
    nichuS = widget.nichu; // 日柱
    gechuS = widget.gechu; // 月柱
    nenchuS = widget.nenchu; // 年柱
    tuNenKanS = widget.tuuhenbosiNenKan; // 通変星年天
    tuNenSiS = widget.tuuhenbosiNenSi; // 通変星年地
    tuGeKanS = widget.tuuhenbosiGetuKan; // 通変星月天
    tuGeSiS = widget.tuuhenbosiGetuSi; // 通変星月地
    tuNitiKanS = widget.tuuhenbosiNitiKan; // 通変星日天
    tuNitiSiS = widget.tuuhenbosiNitiSi; // 通変星日地

    // このウィジェットで使う変数
    String niKan = '甲'; // 日干
    String niSi = '子'; // 日支
    String geKan = '甲'; // 月干
    String geSi = '子'; // 月支
    String nenKan = '甲'; // 年干
    String nenSi = '子'; // 年支
    int niKanNo = 0; // 日干No.
    int niSiNo = 0; // 日支No.
    int geKanNo = 0; // 月干No.
    int geSiNo = 0; // 月支No.
    int neKanNo = 0; // 年干No.
    int neSiNo = 0; // 年子No.
    String niKG = '木'; // 日干の五行
    String niSG = '木'; // 日支の五行
    String geKG = '木'; // 月干の五行
    String geSG = '木'; // 月支の五行
    String neKG = '木'; // 年干の五行
    String neSG = '木'; // 年支の五行
    String tuG = '比食財官印比食財官印比食財官';
    String tu = '比肩劫敗食神傷官偏財正財偏官正官倒食印綬比肩劫敗食神傷官偏財正財'
        '偏官正官倒食印綬比肩劫敗食神傷官偏財正財偏官正官倒食印綬';
    String kan = '甲乙丙丁戊己庚辛壬癸';
    String kag = '木木火火土土金金水水';
    String shi = '子丑寅卯辰巳午未申酉戌亥';
    String sig = '水土木木土火火土金金土水';
    int tuSS0 = 1; // 比肩の数
    int tuSS1 = 0; // 劫敗の数
    int tuSS2 = 0; // 食神の数
    int tuSS3 = 0; // 傷官の数
    int tuSS4 = 0; // 偏財の数
    int tuSS5 = 0; // 正財の数
    int tuSS6 = 0; // 偏官の数
    int tuSS7 = 0; // 正官の数
    int tuSS8 = 0; // 倒食の数
    int tuSS9 = 0; // 印綬の数
    String tuSSM0 = '1'; // 比肩の数を文字化
    String tuSSM1 = '0'; // 劫敗の数を文字化
    String tuSSM2 = '0'; // 食神の数を文字化
    String tuSSM3 = '0'; // 傷官の数を文字化
    String tuSSM4 = '0'; // 偏財の数を文字化
    String tuSSM5 = '0'; // 正財の数を文字化
    String tuSSM6 = '0'; // 偏官の数を文字化
    String tuSSM7 = '0'; // 正官の数を文字化
    String tuSSM8 = '0'; // 倒食の数を文字化
    String tuSSM9 = '0'; // 印綬の数を文字化
    String tuSSM = '012345678901234567890';

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
    // 通変星の数の表示内容
    int tuS0 = 0; // 木２階数
    int tuS1 = 0; // 木１階数
    int tuS2 = 0; // 火２階数
    int tuS3 = 0; // 火１階数
    int tuS4 = 0; // 土２階数
    int tuS5 = 0; // 土１階数
    int tuS6 = 0; // 金２階数
    int tuS7 = 0; // 金１階数
    int tuS8 = 0; // 水２階数
    int tuS9 = 0; // 水１階数
    // 本体五行の数
    int hoG0 = 0; // 本体木数
    int hoG1 = 0; // 本体火数
    int hoG2 = 0; // 本体土数
    int hoG3 = 0; // 本体金数
    int hoG4 = 0; // 本体水数
    // 本体五行の数の色
    int hoGColor0 = c2; // 本体木数の色
    int hoGColor1 = c2; // 本体火数の色
    int hoGColor2 = c2; // 本体土数の色
    int hoGColor3 = c2; // 本体金数の色
    int hoGColor4 = c2; // 本体水数の色

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
    int tuColor0 = c2; // 木２階色
    int tuColor1 = c2; // 木１階色
    int tuColor2 = c2; // 火２階色
    int tuColor3 = c2; // 火１階色
    int tuColor4 = c2; // 土２階色
    int tuColor5 = c2; // 土１階色
    int tuColor6 = c2; // 金２階色
    int tuColor7 = c2; // 金１階色
    int tuColor8 = c2; // 水２階色
    int tuColor9 = c2; // 水１階色
    // 通変星の数の表示色
    int tuSColor0 = c2; // 木２階数色
    int tuSColor1 = c2; // 木１階数色
    int tuSColor2 = c2; // 火２階数色
    int tuSColor3 = c2; // 火１階数色
    int tuSColor4 = c2; // 土２階数色
    int tuSColor5 = c2; // 土１階数色
    int tuSColor6 = c2; // 金２階数色
    int tuSColor7 = c2; // 金１階数色
    int tuSColor8 = c2; // 水２階数色
    int tuSColor9 = c2; // 水１階数色

    // 日干を算出する
    niKan = nichuS.substring(0, 1);
    niKanNo = juKanNo(niKan);
    j = niKanNo ~/ 2; // 比肩方向

    // 五行を算出
    niKG = kag.substring(niKanNo, niKanNo + 1); // 日干の五行を算出
    geKan = gechuS.substring(0, 1); // 月柱から月干を取り出す
    geKanNo = juKanNo(geKan); // 月干No.を算出する
    geKG = kag.substring(geKanNo, geKanNo + 1); // 月干の五行を算出
    nenKan = nenchuS.substring(0, 1); // 月柱から月干を取り出す
    neKanNo = juKanNo(nenKan); // 月干No.を算出する
    neKG = kag.substring(neKanNo, neKanNo + 1); // 月干の五行を算出
    niSi = nichuS.substring(1, 2); // 日柱から日支を取り出す
    niSiNo = juuniSiNo(niSi); // 日支No.を算出する
    niSG = sig.substring(niSiNo, niSiNo + 1); // 日支の五行を算出
    geSi = gechuS.substring(1, 2); // 月柱から月支を取り出す
    geSiNo = juuniSiNo(geSi); // 月支No.を算出する
    geSG = sig.substring(geSiNo, geSiNo + 1); // 月支の五行を算出
    nenSi = nenchuS.substring(1, 2); // 年柱から年支を取り出す
    neSiNo = juuniSiNo(nenSi); // 年支No.を算出する
    neSG = sig.substring(neSiNo, neSiNo + 1); // 年支の五行を算出

    print(
      niKG + geKG + neKG + niSG + geSG + neSG,
    );

    // 五行の数を数える
    if (niKG == '木') {
      hoG0++;
    } else if (niKG == '火') {
      hoG1++;
    } else if (niKG == '土') {
      hoG2++;
    } else if (niKG == '金') {
      hoG3++;
    } else if (niKG == '水') {
      hoG4++;
    } else {}
    if (niSG == '木') {
      hoG0++;
    } else if (niSG == '火') {
      hoG1++;
    } else if (niSG == '土') {
      hoG2++;
    } else if (niSG == '金') {
      hoG3++;
    } else if (niSG == '水') {
      hoG4++;
    } else {}
    if (geKG == '木') {
      hoG0++;
    } else if (geKG == '火') {
      hoG1++;
    } else if (geKG == '土') {
      hoG2++;
    } else if (geKG == '金') {
      hoG3++;
    } else if (geKG == '水') {
      hoG4++;
    } else {}
    if (geSG == '木') {
      hoG0++;
    } else if (geSG == '火') {
      hoG1++;
    } else if (geSG == '土') {
      hoG2++;
    } else if (geSG == '金') {
      hoG3++;
    } else if (geSG == '水') {
      hoG4++;
    } else {}
    if (neKG == '木') {
      hoG0++;
    } else if (neKG == '火') {
      hoG1++;
    } else if (neKG == '土') {
      hoG2++;
    } else if (neKG == '金') {
      hoG3++;
    } else if (neKG == '水') {
      hoG4++;
    } else {}
    if (neSG == '木') {
      hoG0++;
    } else if (neSG == '火') {
      hoG1++;
    } else if (neSG == '土') {
      hoG2++;
    } else if (neSG == '金') {
      hoG3++;
    } else if (neSG == '水') {
      hoG4++;
    } else {}

    // 本体五行の数が０のとき、色を薄くする
    if (hoG0 == 0) {
      hoGColor0 = c1;
    } else {
      hoGColor0 = c2;
    }
    if (hoG1 == 0) {
      hoGColor1 = c1;
    } else {
      hoGColor1 = c2;
    }
    if (hoG2 == 0) {
      hoGColor2 = c1;
    } else {
      hoGColor2 = c2;
    }
    if (hoG3 == 0) {
      hoGColor3 = c1;
    } else {
      hoGColor3 = c2;
    }
    if (hoG4 == 0) {
      hoGColor4 = c1;
    } else {
      hoGColor4 = c2;
    }

    // 表面３階を算出する
    String tuG0 = tuG.substring(5 - j, 6 - j);
    String tuG1 = tuG.substring(6 - j, 7 - j);
    String tuG2 = tuG.substring(7 - j, 8 - j);
    String tuG3 = tuG.substring(8 - j, 9 - j);
    String tuG4 = tuG.substring(9 - j, 10 - j);
    // 表面２階１階を算出する
    String tu0 = tu.substring(20 - j * 4, 22 - j * 4);
    String tu1 = tu.substring(22 - j * 4, 24 - j * 4);
    String tu2 = tu.substring(24 - j * 4, 26 - j * 4);
    String tu3 = tu.substring(26 - j * 4, 28 - j * 4);
    String tu4 = tu.substring(28 - j * 4, 30 - j * 4);
    String tu5 = tu.substring(30 - j * 4, 32 - j * 4);
    String tu6 = tu.substring(32 - j * 4, 34 - j * 4);
    String tu7 = tu.substring(34 - j * 4, 36 - j * 4);
    String tu8 = tu.substring(36 - j * 4, 38 - j * 4);
    String tu9 = tu.substring(38 - j * 4, 40 - j * 4);
    // 通変星の数を数える
    if (tuNitiSiS == '比肩') {
      tuSS0++;
    } else if (tuNitiSiS == '劫敗') {
      tuSS1++;
    } else if (tuNitiSiS == '食神') {
      tuSS2++;
    } else if (tuNitiSiS == '傷官') {
      tuSS3++;
    } else if (tuNitiSiS == '偏財') {
      tuSS4++;
    } else if (tuNitiSiS == '正財') {
      tuSS5++;
    } else if (tuNitiSiS == '偏官') {
      tuSS6++;
    } else if (tuNitiSiS == '正官') {
      tuSS7++;
    } else if (tuNitiSiS == '倒食') {
      tuSS8++;
    } else if (tuNitiSiS == '印綬') {
      tuSS9++;
    } else {}
    if (tuGeKanS == '比肩') {
      tuSS0++;
    } else if (tuGeKanS == '劫敗') {
      tuSS1++;
    } else if (tuGeKanS == '食神') {
      tuSS2++;
    } else if (tuGeKanS == '傷官') {
      tuSS3++;
    } else if (tuGeKanS == '偏財') {
      tuSS4++;
    } else if (tuGeKanS == '正財') {
      tuSS5++;
    } else if (tuGeKanS == '偏官') {
      tuSS6++;
    } else if (tuGeKanS == '正官') {
      tuSS7++;
    } else if (tuGeKanS == '倒食') {
      tuSS8++;
    } else if (tuGeKanS == '印綬') {
      tuSS9++;
    } else {}
    if (tuGeSiS == '比肩') {
      tuSS0++;
    } else if (tuGeSiS == '劫敗') {
      tuSS1++;
    } else if (tuGeSiS == '食神') {
      tuSS2++;
    } else if (tuGeSiS == '傷官') {
      tuSS3++;
    } else if (tuGeSiS == '偏財') {
      tuSS4++;
    } else if (tuGeSiS == '正財') {
      tuSS5++;
    } else if (tuGeSiS == '偏官') {
      tuSS6++;
    } else if (tuGeSiS == '正官') {
      tuSS7++;
    } else if (tuGeSiS == '倒食') {
      tuSS8++;
    } else if (tuGeSiS == '印綬') {
      tuSS9++;
    } else {}
    if (tuNenKanS == '比肩') {
      tuSS0++;
    } else if (tuNenKanS == '劫敗') {
      tuSS1++;
    } else if (tuNenKanS == '食神') {
      tuSS2++;
    } else if (tuNenKanS == '傷官') {
      tuSS3++;
    } else if (tuNenKanS == '偏財') {
      tuSS4++;
    } else if (tuNenKanS == '正財') {
      tuSS5++;
    } else if (tuNenKanS == '偏官') {
      tuSS6++;
    } else if (tuNenKanS == '正官') {
      tuSS7++;
    } else if (tuNenKanS == '倒食') {
      tuSS8++;
    } else if (tuNenKanS == '印綬') {
      tuSS9++;
    } else {}
    if (tuNenSiS == '比肩') {
      tuSS0++;
    } else if (tuNenSiS == '劫敗') {
      tuSS1++;
    } else if (tuNenSiS == '食神') {
      tuSS2++;
    } else if (tuNenSiS == '傷官') {
      tuSS3++;
    } else if (tuNenSiS == '偏財') {
      tuSS4++;
    } else if (tuNenSiS == '正財') {
      tuSS5++;
    } else if (tuNenSiS == '偏官') {
      tuSS6++;
    } else if (tuNenSiS == '正官') {
      tuSS7++;
    } else if (tuNenSiS == '倒食') {
      tuSS8++;
    } else if (tuNenSiS == '印綬') {
      tuSS9++;
    } else {}
    // 通変星の数をそれぞれの位置に配置する
    tuSSM0 = tuSS0.toString();
    tuSSM1 = tuSS1.toString();
    tuSSM2 = tuSS2.toString();
    tuSSM3 = tuSS3.toString();
    tuSSM4 = tuSS4.toString();
    tuSSM5 = tuSS5.toString();
    tuSSM6 = tuSS6.toString();
    tuSSM7 = tuSS7.toString();
    tuSSM8 = tuSS8.toString();
    tuSSM9 = tuSS9.toString();
    tuSSM = tuSSM0 +
        tuSSM1 +
        tuSSM2 +
        tuSSM3 +
        tuSSM4 +
        tuSSM5 +
        tuSSM6 +
        tuSSM7 +
        tuSSM8 +
        tuSSM9 +
        tuSSM0 +
        tuSSM1 +
        tuSSM2 +
        tuSSM3 +
        tuSSM4 +
        tuSSM5 +
        tuSSM6 +
        tuSSM7 +
        tuSSM8 +
        tuSSM9;

    tuS0 = int.parse(tuSSM.substring(10 - j * 2, 11 - j * 2));
    tuS1 = int.parse(tuSSM.substring(11 - j * 2, 12 - j * 2));
    tuS2 = int.parse(tuSSM.substring(12 - j * 2, 13 - j * 2));
    tuS3 = int.parse(tuSSM.substring(13 - j * 2, 14 - j * 2));
    tuS4 = int.parse(tuSSM.substring(14 - j * 2, 15 - j * 2));
    tuS5 = int.parse(tuSSM.substring(15 - j * 2, 16 - j * 2));
    tuS6 = int.parse(tuSSM.substring(16 - j * 2, 17 - j * 2));
    tuS7 = int.parse(tuSSM.substring(17 - j * 2, 18 - j * 2));
    tuS8 = int.parse(tuSSM.substring(18 - j * 2, 19 - j * 2));
    tuS9 = int.parse(tuSSM.substring(19 - j * 2, 20 - j * 2));
    // 通変星の数が0のところの色を暗くする
    if (tuS0 == 0) {
      tuColor0 = c1;
      tuSColor0 = c1;
    } else {}
    if (tuS1 == 0) {
      tuColor1 = c1;
      tuSColor1 = c1;
    } else {}
    if (tuS2 == 0) {
      tuColor2 = c1;
      tuSColor2 = c1;
    } else {}
    if (tuS3 == 0) {
      tuColor3 = c1;
      tuSColor3 = c1;
    } else {}
    if (tuS4 == 0) {
      tuColor4 = c1;
      tuSColor4 = c1;
    } else {}
    if (tuS5 == 0) {
      tuColor5 = c1;
      tuSColor5 = c1;
    } else {}
    if (tuS6 == 0) {
      tuColor6 = c1;
      tuSColor6 = c1;
    } else {}
    if (tuS7 == 0) {
      tuColor7 = c1;
      tuSColor7 = c1;
    } else {}
    if (tuS8 == 0) {
      tuColor8 = c1;
      tuSColor8 = c1;
    } else {}
    if (tuS9 == 0) {
      tuColor9 = c1;
      tuSColor9 = c1;
    } else {}
    // 本質の計算

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text('（工事中）$hoG0$hoG1$hoG2$hoG3$hoG4'),
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
                  children: [
                    const SizedBox(
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
                    const SizedBox(
                      width: 20,
                      // height: h1,
                    ),
                    SizedBox(
                      width: 40,
                      height: 25,
                      child: Center(
                        child: Text(
                          tuG0, // ■■■■■■■■■ 木3階 ■■■■■■■■■
                          style: const TextStyle(
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
                  children: [
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
                  children: [
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
                  children: [
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
                          children: [
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
                          children: [
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
                          children: [
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
                            SizedBox(
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
                          children: [
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
                          children: [
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
                            children: [
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
                  children: [
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
                  children: [
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
                  children: [
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
                  children: [
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
                  children: [
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
                          Text(
                            '$hoG0',
                            style: TextStyle(
                              color: Color(hoGColor0),
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
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Center(
                                      child: Text(
                                        '$hoG4',
                                        style: TextStyle(
                                          color: Color(hoGColor4),
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
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Center(
                                      child: Text(
                                        '$hoG1',
                                        style: TextStyle(
                                          color: Color(hoGColor1),
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
                            children: [
                              SizedBox(
                                width: 12,
                                height: 20,
                                child: Text(
                                  '$hoG3',
                                  style: TextStyle(
                                    color: Color(hoGColor3),
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
                                  '$hoG2',
                                  style: TextStyle(
                                    color: Color(hoGColor2),
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
                          SizedBox(
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
                          SizedBox(
                            height: 21,
                            child: Text(
                              '$seinenIntS.$seigeIntS.$seinitiIntS',
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
