import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'kyou_unsei_model.dart';

class KyouUnseiPage extends StatelessWidget {
  final int seinenInt;
  final int seigatuInt;
  final int seinitiInt;

  const KyouUnseiPage({
    Key? key,
    required this.seinenInt,
    required this.seigatuInt,
    required this.seinitiInt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double h1 = 25;
    const double h2 = 530; // 図の部分の高さ
    const double h3 = h2 - 150; // 説明の部分の高さ
    const int c2 = -1; // 白
    const int c3 = -1407770; // ピンク

    double r1 = 36; // 日干の１階の円の中心の半径
    double r2 = 72; // 日干の２階の円の中心の半径
    double r3 = 108; // 日干の３階の円の中心の半径
    double r4 = 112; // 日支の３階の円の中心の半径
    double r5 = 74; // 日支の２階の円の中心の半径
    double r6 = 36; // 日支の１階の円の中心の半径
    // double rr1 = 18; // 小さい円の半径
    // double rr2 = 90; // 日干の大きい円の半径
    // double rr3 = 93; // 日支の大きな円の半径
    // double rrr = rr1 * 2; //小さい円の直系
    double rrM = 24; //文字の大きさ
    double rrM1 = 24; //日支１階２階のフォントサイズ
    double rrM2 = 8; //日支１階２階の文字位置調整

    // 文字のセンター位置
    // var centa1 = Offset((150 - rrr / 2), (130 - rrr / 2)); // 日干図形の中心座標
    var centa2 = Offset((150 - rrM / 2), (130 - rrM / 2)); // 日干文字の中心座標
    // var centa3 = Offset((150 - rrr / 2), (384 - rrr / 2)); // 日支図形の中心座標
    var centa4 = Offset((150 - rrM / 2), (384 - rrM / 2)); // 日支文字の中心座標

    // 角度の定数
    double radiG0 = (72 * 0 - 90) / 180 * pi; // 木の角度
    double tadiG1 = (72 * 1 - 90) / 180 * pi; // 火の角度
    double radiG2 = (72 * 2 - 90) / 180 * pi; // 土の角度
    double radiG3 = (72 * 3 - 90) / 180 * pi; // 金の角度
    double radiG4 = (72 * 4 - 90) / 180 * pi; // 水の角度
    double radiS0 = (30 * 0 + 90) / 180 * pi; // 子の角度
    double radiS1 = (30 * 1 + 90) / 180 * pi; // 丑の角度
    double radiS2 = (30 * 2 + 90) / 180 * pi; // 寅の角度
    double radiS3 = (30 * 3 + 90) / 180 * pi; // 卯の角度
    double radiS4 = (30 * 4 + 90) / 180 * pi; // 辰の角度
    double radiS5 = (30 * 5 + 90) / 180 * pi; // 巳の角度
    double radiS6 = (30 * 6 + 90) / 180 * pi; // 午の角度
    double radiS7 = (30 * 7 + 90) / 180 * pi; // 未の角度
    double radiS8 = (30 * 8 + 90) / 180 * pi; // 申の角度
    double radiS9 = (30 * 9 + 90) / 180 * pi; // 酉の角度
    double radiS10 = (30 * 10 + 90) / 180 * pi; // 戌の角度
    double radiS11 = (30 * 11 + 90) / 180 * pi; // 亥の角度
    // 日干の小さい円の文字の中心座標（１階から３階まで）
    final centaG0M1 = centa2 + Offset(r1 * cos(radiG0), r1 * sin(radiG0));
    final centaG0M2 = centa2 + Offset(r2 * cos(radiG0), r2 * sin(radiG0));
    final centaG0M3 = centa2 + Offset(r3 * cos(radiG0), r3 * sin(radiG0));
    final centaG1M1 = centa2 + Offset(r1 * cos(tadiG1), r1 * sin(tadiG1));
    final centaG1M2 = centa2 + Offset(r2 * cos(tadiG1), r2 * sin(tadiG1));
    final centaG1M3 = centa2 + Offset(r3 * cos(tadiG1), r3 * sin(tadiG1));
    final centaG2M1 = centa2 + Offset(r1 * cos(radiG2), r1 * sin(radiG2));
    final centaG2M2 = centa2 + Offset(r2 * cos(radiG2), r2 * sin(radiG2));
    final centaG2M3 = centa2 + Offset(r3 * cos(radiG2), r3 * sin(radiG2));
    final centaG3M1 = centa2 + Offset(r1 * cos(radiG3), r1 * sin(radiG3));
    final centaG3M2 = centa2 + Offset(r2 * cos(radiG3), r2 * sin(radiG3));
    final centaG3M3 = centa2 + Offset(r3 * cos(radiG3), r3 * sin(radiG3));
    final centaG4M1 = centa2 + Offset(r1 * cos(radiG4), r1 * sin(radiG4));
    final centaG4M2 = centa2 + Offset(r2 * cos(radiG4), r2 * sin(radiG4));
    final centaG4M3 = centa2 + Offset(r3 * cos(radiG4), r3 * sin(radiG4));
    // 日支の３階の円の文字座標
    final centaS0 = centa4 + Offset(r4 * cos(radiS0), r4 * sin(radiS0));
    final centaS1 = centa4 + Offset(r4 * cos(radiS1), r4 * sin(radiS1));
    final centaS2 = centa4 + Offset(r4 * cos(radiS2), r4 * sin(radiS2));
    final centaS3 = centa4 + Offset(r4 * cos(radiS3), r4 * sin(radiS3));
    final centaS4 = centa4 + Offset(r4 * cos(radiS4), r4 * sin(radiS4));
    final centaS5 = centa4 + Offset(r4 * cos(radiS5), r4 * sin(radiS5));
    final centaS6 = centa4 + Offset(r4 * cos(radiS6), r4 * sin(radiS6));
    final centaS7 = centa4 + Offset(r4 * cos(radiS7), r4 * sin(radiS7));
    final centaS8 = centa4 + Offset(r4 * cos(radiS8), r4 * sin(radiS8));
    final centaS9 = centa4 + Offset(r4 * cos(radiS9), r4 * sin(radiS9));
    final centaS10 = centa4 + Offset(r4 * cos(radiS10), r4 * sin(radiS10));
    final centaS11 = centa4 + Offset(r4 * cos(radiS11), r4 * sin(radiS11));
    // 日支の２階の円の文字座標
    final centaS0a = centa4 + Offset(r5 * cos(radiS0), r5 * sin(radiS0) - rrM2);
    final centaS1a = centa4 + Offset(r5 * cos(radiS1), r5 * sin(radiS1) - rrM2);
    final centaS2a = centa4 + Offset(r5 * cos(radiS2), r5 * sin(radiS2) - rrM2);
    final centaS3a = centa4 + Offset(r5 * cos(radiS3), r5 * sin(radiS3) - rrM2);
    final centaS4a = centa4 + Offset(r5 * cos(radiS4), r5 * sin(radiS4) - rrM2);
    final centaS5a = centa4 + Offset(r5 * cos(radiS5), r5 * sin(radiS5) - rrM2);
    final centaS6a = centa4 + Offset(r5 * cos(radiS6), r5 * sin(radiS6) - rrM2);
    final centaS7a = centa4 + Offset(r5 * cos(radiS7), r5 * sin(radiS7) - rrM2);
    final centaS8a = centa4 + Offset(r5 * cos(radiS8), r5 * sin(radiS8) - rrM2);
    final centaS9a = centa4 + Offset(r5 * cos(radiS9), r5 * sin(radiS9) - rrM2);
    final centaS10a =
        centa4 + Offset(r5 * cos(radiS10), r5 * sin(radiS10) - rrM2);
    final centaS11a =
        centa4 + Offset(r5 * cos(radiS11), r5 * sin(radiS11) - rrM2);
    // 日支の１階の円の文字座標
    final centaS0b = centa4 + Offset(r6 * cos(radiS0), r6 * sin(radiS0) - rrM2);
    final centaS1b = centa4 + Offset(r6 * cos(radiS1), r6 * sin(radiS1) - rrM2);
    final centaS2b = centa4 + Offset(r6 * cos(radiS2), r6 * sin(radiS2) - rrM2);
    final centaS3b = centa4 + Offset(r6 * cos(radiS3), r6 * sin(radiS3) - rrM2);
    final centaS4b = centa4 + Offset(r6 * cos(radiS4), r6 * sin(radiS4) - rrM2);
    final centaS5b = centa4 + Offset(r6 * cos(radiS5), r6 * sin(radiS5) - rrM2);
    final centaS6b = centa4 + Offset(r6 * cos(radiS6), r6 * sin(radiS6) - rrM2);
    final centaS7b = centa4 + Offset(r6 * cos(radiS7), r6 * sin(radiS7) - rrM2);
    final centaS8b = centa4 + Offset(r6 * cos(radiS8), r6 * sin(radiS8) - rrM2);
    final centaS9b = centa4 + Offset(r6 * cos(radiS9), r6 * sin(radiS9) - rrM2);
    final centaS10b =
        centa4 + Offset(r6 * cos(radiS10), r6 * sin(radiS10) - rrM2);
    final centaS11b =
        centa4 + Offset(r6 * cos(radiS11), r6 * sin(radiS11) - rrM2);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: ChangeNotifierProvider<KyouUnseiModel>(
        create: (_) => KyouUnseiModel(
            seinenInt: seinenInt,
            seigatuInt: seigatuInt,
            seinitiInt: seinitiInt)
          ..init(),
        child: Consumer<KyouUnseiModel>(builder: (context, model, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                title: Text(
                  model.nowMojiApp,
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: ListView(
                          children: [
                            ListTile(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      const SizedBox(
                                        // 第一階層
                                        width: 312,
                                        height: h2,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          //ToDo: ここは文字を入れる（第一階層）
                                          children: [],
                                        ),
                                      ),
                                      // ここから第二階層
                                      SizedBox(
                                        width: 312,
                                        height: h2,
                                        child: CustomPaint(
                                          painter:
                                              ShapePainter3(), // 日干と日支の固定円の描画
                                        ),
                                      ),
                                      SizedBox(
                                        width: 312,
                                        height: h2,
                                        child: CustomPaint(
                                          painter: ShapePainter4(
                                            // 日干と日支のV字の描画
                                            gogyou: model.gogyou,
                                            nitiSi: model.nitiSi,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 312,
                                        height: h2,
                                        child: CustomPaint(
                                          painter: ShapePainter5(
                                            tuhen: model.tuhen,
                                            gogyou: model.gogyou,
                                          ), // 渡したい変数を引数に指定する
                                        ),
                                      ),
                                      SizedBox(
                                        width: 312,
                                        height: h2,
                                        child: CustomPaint(
                                          painter: ShapePainter6(
                                            kei: model.kei,
                                          ), // 渡したい変数を引数に指定する
                                        ),
                                      ),
                                      SizedBox(
                                        width: 312,
                                        height: h2,
                                        child: CustomPaint(
                                          painter: ShapePainter8(
                                            sigo: model.nowNitiSi,
                                            kei: model.kei,
                                          ), // 渡したい変数を引数に指定する
                                        ),
                                      ),

                                      SizedBox(
                                        width: 312,
                                        height: h2,
                                        child: CustomPaint(
                                          painter: ShapePainter7(
                                            sigo: model.nowNitiSi,
                                          ), // 渡したい変数を引数に指定する
                                        ),
                                      ),

                                      // ■■■■■■■■■ 左上の生年月日の表示 ■■■■■■■■■
                                      Transform.translate(
                                        offset: const Offset(0, 0),
                                        child: Text(
                                          '$seinenInt.$seigatuInt.$seinitiInt 生',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: const Offset(180, 0),
                                        child: Text(
                                          model.nowMoji,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.black12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      // Transform.translate(
                                      //   offset: const Offset(290, 4),
                                      //   child: const Text(
                                      //     'の運勢',
                                      //     style: TextStyle(
                                      //       fontSize: 14,
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.bold,
                                      //     ),
                                      //   ),
                                      // ),
                                      Transform.translate(
                                        offset: const Offset(238, 30),
                                        child: Text(
                                          model.kangouMoji,
                                          style: const TextStyle(
                                            fontSize: 24,
                                            color: Colors.purpleAccent,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // ■■■■■■■■■ 日干の３階五行の文字の表示 ■■■■■■■■■
                                      // 木
                                      Transform.translate(
                                        offset: centaG0M3,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/g0.png'),
                                        ),
                                      ),
                                      // 火
                                      Transform.translate(
                                        offset: centaG1M3,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/g1.png'),
                                        ),
                                      ),
                                      // 土
                                      Transform.translate(
                                        offset: centaG2M3,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/g2.png'),
                                        ),
                                      ),
                                      // 金
                                      Transform.translate(
                                        offset: centaG3M3,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/g3.png'),
                                        ),
                                      ),
                                      // 水
                                      Transform.translate(
                                        offset: centaG4M3,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/g4.png'),
                                        ),
                                      ),

                                      //■■■■■■■■■ 日干の１階２階通変星の文字の表示 ■■■■■■■■■
                                      Transform.translate(
                                        offset: centaG0M2,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[0]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG0M1,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[1]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG1M2,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[2]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG1M1,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[3]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG2M2,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[4]),
                                        ),
                                      ),

                                      Transform.translate(
                                        offset: centaG2M1,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[5]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG3M2,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[6]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG3M1,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[7]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG4M2,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[8]),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: centaG4M1,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(model.go[9]),
                                        ),
                                      ),

                                      // ■■■■■■■■■ 日支の３階の文字の表示 ■■■■■■■■■
                                      Transform.translate(
                                        // 子
                                        offset: centaS0,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s0.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 丑
                                        offset: centaS1,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s1.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 寅
                                        offset: centaS2,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s2.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 卯
                                        offset: centaS3,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s3.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 辰
                                        offset: centaS4,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s4.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 巳
                                        offset: centaS5,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s5.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 午
                                        offset: centaS6,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s6.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 未
                                        offset: centaS7,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s7.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 申
                                        offset: centaS8,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s8.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 酉
                                        offset: centaS9,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s9.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 戌
                                        offset: centaS10,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s10.png'),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 亥
                                        offset: centaS11,
                                        child: SizedBox(
                                          height: rrM,
                                          width: rrM,
                                          child: Image.asset(
                                              'images/tuuhenbosi/s11.png'),
                                        ),
                                      ),

                                      // ■■■■■■■■■ 日支２階の文字 ■■■■■■■■■

                                      Transform.translate(
                                        // 子
                                        offset: centaS0a,
                                        child: Text(
                                          model.sigo.substring(0, 1),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 丑
                                        offset: centaS1a,
                                        child: Text(
                                          model.sigo.substring(1, 2),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 寅
                                        offset: centaS2a,
                                        child: Text(
                                          model.sigo.substring(2, 3),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 卯
                                        offset: centaS3a,
                                        child: Text(
                                          model.sigo.substring(3, 4),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 辰
                                        offset: centaS4a,
                                        child: Text(
                                          model.sigo.substring(4, 5),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 巳
                                        offset: centaS5a,
                                        child: Text(
                                          model.sigo.substring(5, 6),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 午
                                        offset: centaS6a,
                                        child: Text(
                                          model.sigo.substring(6, 7),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 未
                                        offset: centaS7a,
                                        child: Text(
                                          model.sigo.substring(7, 8),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 申
                                        offset: centaS8a,
                                        child: Text(
                                          model.sigo.substring(8, 9),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 酉
                                        offset: centaS9a,
                                        child: Text(
                                          model.sigo.substring(9, 10),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 戌
                                        offset: centaS10a,
                                        child: Text(
                                          model.sigo.substring(10, 11),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 亥
                                        offset: centaS11a,
                                        child: Text(
                                          model.sigo.substring(11, 12),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),

                                      // ■■■■■■■■■ 日支1階の文字の表示 ■■■■■■■■■
                                      Transform.translate(
                                        // 子
                                        offset: centaS0b,
                                        child: Text(
                                          model.kei.substring(0, 1),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 丑
                                        offset: centaS1b,
                                        child: Text(
                                          model.kei.substring(1, 2),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 寅
                                        offset: centaS2b,
                                        child: Text(
                                          model.kei.substring(2, 3),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 卯
                                        offset: centaS3b,
                                        child: Text(
                                          model.kei.substring(3, 4),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 辰
                                        offset: centaS4b,
                                        child: Text(
                                          model.kei.substring(4, 5),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 巳
                                        offset: centaS5b,
                                        child: Text(
                                          model.kei.substring(5, 6),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 午
                                        offset: centaS6b,
                                        child: Text(
                                          model.kei.substring(6, 7),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 未
                                        offset: centaS7b,
                                        child: Text(
                                          model.kei.substring(7, 8),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 申
                                        offset: centaS8b,
                                        child: Text(
                                          model.kei.substring(8, 9),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 酉
                                        offset: centaS9b,
                                        child: Text(
                                          model.kei.substring(9, 10),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 戌
                                        offset: centaS10b,
                                        child: Text(
                                          model.kei.substring(10, 11),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        // 亥
                                        offset: centaS11b,
                                        child: Text(
                                          model.kei.substring(11, 12),
                                          style: TextStyle(
                                            fontSize: rrM1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: const Offset(0, h2 - 14),
                                        child: const Text(
                                          '■■■■■■■ この図の見方 ■■■■■■■',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.greenAccent,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              title: SizedBox(
                                height: h3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      //height: 400,
                                      child: ListView.builder(
                                        itemCount: 60,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Column(
                                            children: [
                                              SizedBox(
                                                //width: 500.0,
                                                height: model.takasaMoji[index],
                                                child: ListTile(
                                                  //shape: const RoundedRectangleBorder(
                                                  // side: BorderSide(
                                                  //   color: Colors,
                                                  //  ),
                                                  //  ),
                                                  tileColor: Colors.black,
                                                  // title: Padding(
                                                  //   padding: const EdgeInsets
                                                  //           .fromLTRB(
                                                  //       8.0, 4.0, 4.0, 4.0),
                                                  title: Text(
                                                    model.moji[index],
                                                    style: TextStyle(
                                                      height: 1.1,
                                                      fontSize: 16,
                                                      color: Color(
                                                          model.iroMoji[index]),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    textScaleFactor: 1.0,
                                                  ),
                                                  //),
                                                ),
                                                //color: Colors.black,
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    // Text('（工事中）',
                                    //     style: TextStyle(
                                    //       color: Color(c3),
                                    //       fontWeight: FontWeight.normal,
                                    //       fontSize: 14,
                                    //     )),
                                    // Text('',
                                    //     style: TextStyle(
                                    //       color: Color(c2),
                                    //       fontWeight: FontWeight.normal,
                                    //       fontSize: 14,
                                    //     )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              persistentFooterButtons: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Container(
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 144,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text(
                              //   model.nowMoji,
                              //   style: const TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.normal,
                              //     fontSize: 18,
                              //   ),
                              // ),
                              // const Text(
                              //   'の運勢',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.normal,
                              //     fontSize: 16,
                              //   ),
                              // ),
                              Text(
                                model.kitiKyou,
                                style: const TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /*SizedBox(
                          width: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 15,
                                child: Text(
                                  '年',
                                  style: TextStyle(
                                    color: Color(c3),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: h1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    //yearDown();
                                    //model.dec365();
                                  },
                                  child: const Text(
                                    'ー',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: h1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 16,
                                  ),
                                  onPressed: () {
                                    //yearUp();
                                    //model.inc365();
                                  },
                                  child: const Text(
                                    '＋',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),*/
                        SizedBox(
                          width: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 15,
                                child: Text(
                                  '月',
                                  style: TextStyle(
                                    color: Color(c3),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: h1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    //monthDown();
                                    model.dec30();
                                  },
                                  child: const Text(
                                    'ー',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: h1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 16,
                                  ),
                                  onPressed: () {
                                    //monthUp();
                                    model.inc30();
                                  },
                                  child: const Text(
                                    '＋',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 15,
                                child: Text(
                                  '日',
                                  style: TextStyle(
                                    color: Color(c3),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: h1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    //dateDown();
                                    model.dec();
                                  },
                                  child: const Text(
                                    'ー',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: h1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    //dateUp();
                                    model.inc();
                                  },
                                  child: const Text(
                                    '＋',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: h1 * 3,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    '戻る',
                                    style: TextStyle(
                                      color: Color(c2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class ShapePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(150, 130); // 表面の中心座標
    var center2 = const Offset(150, 384); // 本質の中心座標
    double r1 = 36; // 日干の１階の円の中心の半径
    double r2 = 72; // 日干の２階の円の中心の半径
    double r3 = 108; // 日干の３階の円の中心の半径
    double r4 = 112; // 日支の３階の円の中心の半径
    double r5 = 74; // 日支の２階の円の中心の半径
    // double r6 = 36; // 日支の１階の円の中心の半径
    double rr1 = 18; // 小さい円の半径
    double rr2 = 90; // 日干の大きい円の半径
    double rr3 = 93; // 日支の大きな円の半径

    final penWhite = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0;

    final penWhite1 = Paint()
      ..color = Colors.white
      ..strokeWidth = 0.7;

    final penBlue = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;

    final penRed = Paint()
      ..color = Colors.redAccent
      ..strokeWidth = 2.0;

    final penYelow = Paint()
      ..color = Colors.yellowAccent
      ..strokeWidth = 2.0;

    final penBlack1 = Paint()
      ..color = Colors.white24
      ..strokeWidth = 2.0;

    final penBlack2 = Paint()
      ..color = Colors.white12
      ..strokeWidth = 2.0;

    double radiG0 = (72 * 0 - 90) / 180 * pi;
    double radiG1 = (72 * 1 - 90) / 180 * pi;
    double radiG2 = (72 * 2 - 90) / 180 * pi;
    double radiG3 = (72 * 3 - 90) / 180 * pi;
    double radiG4 = (72 * 4 - 90) / 180 * pi;

    final centerG01 = center1 + Offset(r1 * cos(radiG0), r1 * sin(radiG0));
    final centerG02 = center1 + Offset(r2 * cos(radiG0), r2 * sin(radiG0));
    final centerG03 = center1 + Offset(r3 * cos(radiG0), r3 * sin(radiG0));
    final centerG11 = center1 + Offset(r1 * cos(radiG1), r1 * sin(radiG1));
    final centerG12 = center1 + Offset(r2 * cos(radiG1), r2 * sin(radiG1));
    final centerG13 = center1 + Offset(r3 * cos(radiG1), r3 * sin(radiG1));
    final centerG21 = center1 + Offset(r1 * cos(radiG2), r1 * sin(radiG2));
    final centerG22 = center1 + Offset(r2 * cos(radiG2), r2 * sin(radiG2));
    final centerG23 = center1 + Offset(r3 * cos(radiG2), r3 * sin(radiG2));
    final centerG31 = center1 + Offset(r1 * cos(radiG3), r1 * sin(radiG3));
    final centerG32 = center1 + Offset(r2 * cos(radiG3), r2 * sin(radiG3));
    final centerG33 = center1 + Offset(r3 * cos(radiG3), r3 * sin(radiG3));
    final centerG41 = center1 + Offset(r1 * cos(radiG4), r1 * sin(radiG4));
    final centerG42 = center1 + Offset(r2 * cos(radiG4), r2 * sin(radiG4));
    final centerG43 = center1 + Offset(r3 * cos(radiG4), r3 * sin(radiG4));

    // 日干の運勢の描画（固定部分）
    canvas.drawCircle(center1, rr2, penBlack2..style = PaintingStyle.fill);
    canvas.drawCircle(centerG01, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG02, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG03, rr1, penBlue..style = PaintingStyle.fill);
    canvas.drawCircle(centerG11, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG12, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG13, rr1, penRed..style = PaintingStyle.fill);
    canvas.drawCircle(centerG21, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG22, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG23, rr1, penYelow..style = PaintingStyle.fill);
    canvas.drawCircle(centerG31, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG32, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG33, rr1, penWhite..style = PaintingStyle.fill);
    canvas.drawCircle(centerG41, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG42, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerG43, rr1, penWhite1..style = PaintingStyle.stroke);
    canvas.drawCircle(center1, rr2, penWhite..style = PaintingStyle.stroke);

    // 日子の運勢の描画
    double radiS0 = (30 * 0 + 90) / 180 * pi; // 子の角度
    double radiS1 = (30 * 1 + 90) / 180 * pi; // 丑の角度
    double radiS2 = (30 * 2 + 90) / 180 * pi; // 寅の角度
    double radiS3 = (30 * 3 + 90) / 180 * pi; // 卯の角度
    double radiS4 = (30 * 4 + 90) / 180 * pi; // 辰の角度
    double radiS5 = (30 * 5 + 90) / 180 * pi; // 巳の角度
    double radiS6 = (30 * 6 + 90) / 180 * pi; // 午の角度
    double radiS7 = (30 * 7 + 90) / 180 * pi; // 未の角度
    double radiS8 = (30 * 8 + 90) / 180 * pi; // 申の角度
    double radiS9 = (30 * 9 + 90) / 180 * pi; // 酉の角度
    double radiS10 = (30 * 10 + 90) / 180 * pi; // 戌の角度
    double radiS11 = (30 * 11 + 90) / 180 * pi; // 亥の角度
    final centerS0 = center2 + Offset(r4 * cos(radiS0), r4 * sin(radiS0));
    final centerS1 = center2 + Offset(r4 * cos(radiS1), r4 * sin(radiS1));
    final centerS2 = center2 + Offset(r4 * cos(radiS2), r4 * sin(radiS2));
    final centerS3 = center2 + Offset(r4 * cos(radiS3), r4 * sin(radiS3));
    final centerS4 = center2 + Offset(r4 * cos(radiS4), r4 * sin(radiS4));
    final centerS5 = center2 + Offset(r4 * cos(radiS5), r4 * sin(radiS5));
    final centerS6 = center2 + Offset(r4 * cos(radiS6), r4 * sin(radiS6));
    final centerS7 = center2 + Offset(r4 * cos(radiS7), r4 * sin(radiS7));
    final centerS8 = center2 + Offset(r4 * cos(radiS8), r4 * sin(radiS8));
    final centerS9 = center2 + Offset(r4 * cos(radiS9), r4 * sin(radiS9));
    final centerS10 = center2 + Offset(r4 * cos(radiS10), r4 * sin(radiS10));
    final centerS11 = center2 + Offset(r4 * cos(radiS11), r4 * sin(radiS11));

    final centerS0a = center2 + Offset(r5 * cos(radiS0), r5 * sin(radiS0));
    final centerS1a = center2 + Offset(r5 * cos(radiS1), r5 * sin(radiS1));
    final centerS2a = center2 + Offset(r5 * cos(radiS2), r5 * sin(radiS2));
    final centerS3a = center2 + Offset(r5 * cos(radiS3), r5 * sin(radiS3));
    final centerS4a = center2 + Offset(r5 * cos(radiS4), r5 * sin(radiS4));
    final centerS5a = center2 + Offset(r5 * cos(radiS5), r5 * sin(radiS5));
    final centerS6a = center2 + Offset(r5 * cos(radiS6), r5 * sin(radiS6));
    final centerS7a = center2 + Offset(r5 * cos(radiS7), r5 * sin(radiS7));
    final centerS8a = center2 + Offset(r5 * cos(radiS8), r5 * sin(radiS8));
    final centerS9a = center2 + Offset(r5 * cos(radiS9), r5 * sin(radiS9));
    final centerS10a = center2 + Offset(r5 * cos(radiS10), r5 * sin(radiS10));
    final centerS11a = center2 + Offset(r5 * cos(radiS11), r5 * sin(radiS11));

    // ■■■■■■■■■ 日支の運勢描画 ■■■■■■■■■

    // ３階
    canvas.drawCircle(center2, rr3, penBlack2..style = PaintingStyle.fill);
    canvas.drawCircle(
        centerS0, rr1, penWhite1..style = PaintingStyle.stroke); //子
    canvas.drawCircle(centerS1, rr1, penYelow..style = PaintingStyle.fill); //丑
    canvas.drawCircle(centerS2, rr1, penBlue..style = PaintingStyle.fill); //寅
    canvas.drawCircle(centerS3, rr1, penBlue..style = PaintingStyle.fill); //卯
    canvas.drawCircle(centerS4, rr1, penYelow..style = PaintingStyle.fill); //辰
    canvas.drawCircle(centerS5, rr1, penRed..style = PaintingStyle.fill); //巳
    canvas.drawCircle(centerS6, rr1, penRed..style = PaintingStyle.fill); //午
    canvas.drawCircle(centerS7, rr1, penYelow..style = PaintingStyle.fill); //未
    canvas.drawCircle(centerS8, rr1, penWhite..style = PaintingStyle.fill); //申
    canvas.drawCircle(centerS9, rr1, penWhite..style = PaintingStyle.fill); //酉
    canvas.drawCircle(centerS10, rr1, penYelow..style = PaintingStyle.fill); //戌
    canvas.drawCircle(
        centerS11, rr1, penWhite1..style = PaintingStyle.stroke); //亥

    // ２階
    canvas.drawCircle(centerS0a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS1a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS2a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS3a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS4a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS5a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS6a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS7a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS8a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS9a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS10a, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerS11a, rr1, penBlack1..style = PaintingStyle.fill);
    // 白い大きな円
    canvas.drawCircle(center2, rr3, penWhite..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// ■■■■■■■■■ 日干・日支の位置を表す線分を表示する■■■■■■■■■
class ShapePainter4 extends CustomPainter {
  int gogyou; // 五行
  int nitiSi; // 日支
  ShapePainter4({
    required this.gogyou,
    required this.nitiSi,
  });
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(150, 130); // 表面の中心座標
    var center2 = const Offset(150, 384); // 本質の中心座標
    const lineLength1 = 120.0;
    const lineLength2 = 130.0;

    final penWhite = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0;

    double radian1 = ((72 * gogyou) - 90 - 36) / 180 * pi;
    double radian2 = ((72 * gogyou) - 90 + 36) / 180 * pi;

    final line1 = center1 +
        Offset(lineLength1 * cos(radian1), lineLength1 * sin(radian1));
    final line2 = center1 +
        Offset(lineLength1 * cos(radian2), lineLength1 * sin(radian2));

    // 日干の1の描画
    canvas.drawLine(center1, line1, penWhite);
    canvas.drawLine(center1, line2, penWhite);

    double radian3 = ((30 * nitiSi) + 90 - 15) / 180 * pi;
    double radian4 = ((30 * nitiSi) + 90 + 15) / 180 * pi;

    final line31 = center2 +
        Offset(lineLength2 * cos(radian3), lineLength2 * sin(radian3));
    final line32 = center2 +
        Offset(lineLength2 * cos(radian4), lineLength2 * sin(radian4));

    // 日支の位置の描画
    canvas.drawLine(center2, line31, penWhite);
    canvas.drawLine(center2, line32, penWhite);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// 日干のピンクの丸の描画
class ShapePainter5 extends CustomPainter {
  int tuhen; // 日干
  int gogyou;
  ShapePainter5({
    required this.tuhen,
    required this.gogyou,
  }); //
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(150, 130); // 表面の中心座標
    // var center2 = const Offset(150, 370); // 本質の中心座標

    double rr1 = 18;
    double r1 = 36;
    double r2 = 72;
    double rt;
    double gogyo2;
    int gogyo1;

    final penPink2 = Paint()
      ..color = Colors.purple
      ..strokeWidth = 2.0;
    final penPink1 = Paint()
      ..color = Colors.pink
      ..strokeWidth = 2.0;

    final penPink = Paint()
      ..color = Colors.purpleAccent
      ..strokeWidth = 2.0;
    // final penPink3 = Paint()
    //   ..color = Colors.purple[300]!
    //   ..strokeWidth = 2.0;

    gogyo1 = tuhen % 2;
    if (gogyo1 == 0) {
      // 通変星が比肩、食神、偏財、偏官
      rt = r2;
      gogyo2 = tuhen / 2;
    } else {
      rt = r1;
      gogyo2 = (tuhen - 1) / 2;
    }

    double radianTu = (72 * (gogyo2 + gogyou) - 90) / 180 * pi;
    final centerTu = center1 + Offset(rt * cos(radianTu), rt * sin(radianTu));

    canvas.drawCircle(centerTu, rr1 + 8, penPink2..style = PaintingStyle.fill);
    canvas.drawCircle(centerTu, rr1 + 4, penPink1..style = PaintingStyle.fill);
    canvas.drawCircle(centerTu, rr1 - 0, penPink..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// 日支の１階「刑」の薄い黒丸の描画
class ShapePainter6 extends CustomPainter {
  String kei;
  ShapePainter6({required this.kei});
  @override
  void paint(Canvas canvas, Size size) {
    var center2 = const Offset(150, 384); // 本質の中心座標

    double r6 = 36; // 日支の１階の円の中心の半径
    double rr1 = 18; // 小さい円の半径

    List<String> keiL = [
      kei.substring(0, 1),
      kei.substring(1, 2),
      kei.substring(2, 3),
      kei.substring(3, 4),
      kei.substring(4, 5),
      kei.substring(5, 6),
      kei.substring(6, 7),
      kei.substring(7, 8),
      kei.substring(8, 9),
      kei.substring(9, 10),
      kei.substring(10, 11),
      kei.substring(11, 12),
    ];
    final penBlack1 = Paint()
      ..color = Colors.white24
      ..strokeWidth = 2.0;

    double radiS0 = (30 * 0 + 90) / 180 * pi; // 子の角度
    double radiS1 = (30 * 1 + 90) / 180 * pi; // 丑の角度
    double radiS2 = (30 * 2 + 90) / 180 * pi; // 寅の角度
    double radiS3 = (30 * 3 + 90) / 180 * pi; // 卯の角度
    double radiS4 = (30 * 4 + 90) / 180 * pi; // 辰の角度
    double radiS5 = (30 * 5 + 90) / 180 * pi; // 巳の角度
    double radiS6 = (30 * 6 + 90) / 180 * pi; // 午の角度
    double radiS7 = (30 * 7 + 90) / 180 * pi; // 未の角度
    double radiS8 = (30 * 8 + 90) / 180 * pi; // 申の角度
    double radiS9 = (30 * 9 + 90) / 180 * pi; // 酉の角度
    double radiS10 = (30 * 10 + 90) / 180 * pi; // 戌の角度
    double radiS11 = (30 * 11 + 90) / 180 * pi; // 亥の角度

    final centerS0b = center2 + Offset(r6 * cos(radiS0), r6 * sin(radiS0));
    final centerS1b = center2 + Offset(r6 * cos(radiS1), r6 * sin(radiS1));
    final centerS2b = center2 + Offset(r6 * cos(radiS2), r6 * sin(radiS2));
    final centerS3b = center2 + Offset(r6 * cos(radiS3), r6 * sin(radiS3));
    final centerS4b = center2 + Offset(r6 * cos(radiS4), r6 * sin(radiS4));
    final centerS5b = center2 + Offset(r6 * cos(radiS5), r6 * sin(radiS5));
    final centerS6b = center2 + Offset(r6 * cos(radiS6), r6 * sin(radiS6));
    final centerS7b = center2 + Offset(r6 * cos(radiS7), r6 * sin(radiS7));
    final centerS8b = center2 + Offset(r6 * cos(radiS8), r6 * sin(radiS8));
    final centerS9b = center2 + Offset(r6 * cos(radiS9), r6 * sin(radiS9));
    final centerS10b = center2 + Offset(r6 * cos(radiS10), r6 * sin(radiS10));
    final centerS11b = center2 + Offset(r6 * cos(radiS11), r6 * sin(radiS11));

    // ３階
    if (keiL[0] == "刑") {
      canvas.drawCircle(centerS0b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[1] == "刑") {
      canvas.drawCircle(centerS1b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[2] == "刑") {
      canvas.drawCircle(centerS2b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[3] == "刑") {
      canvas.drawCircle(centerS3b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[4] == "刑") {
      canvas.drawCircle(centerS4b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[5] == "刑") {
      canvas.drawCircle(centerS5b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[6] == "刑") {
      canvas.drawCircle(centerS6b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[7] == "刑") {
      canvas.drawCircle(centerS7b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[8] == "刑") {
      canvas.drawCircle(centerS8b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[9] == "刑") {
      canvas.drawCircle(centerS9b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[10] == "刑") {
      canvas.drawCircle(centerS10b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
    if (keiL[11] == "刑") {
      canvas.drawCircle(centerS11b, rr1, penBlack1..style = PaintingStyle.fill);
    } else {}
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// 日支の２階ピンクの丸の描画
class ShapePainter7 extends CustomPainter {
  int sigo; // 日し
  ShapePainter7({required this.sigo}); // ■■■■■■■■■受け取る値を上記変数に代入
  @override
  void paint(Canvas canvas, Size size) {
    // var center1 = const Offset(150, 130); // 表面の中心座標
    var center2 = const Offset(150, 384); // 本質の中心座標

    double rr1 = 18;
    double r5 = 74; // 日支の２階の円の中心の半径

    final penPink2 = Paint()
      ..color = Colors.purple
      ..strokeWidth = 2.0;
    final penPink1 = Paint()
      ..color = Colors.pink
      ..strokeWidth = 2.0;

    final penPink = Paint()
      ..color = Colors.purpleAccent
      ..strokeWidth = 2.0;

    double radianSi = (30 * sigo + 90) / 180 * pi;
    final centerSi = center2 + Offset(r5 * cos(radianSi), r5 * sin(radianSi));

    canvas.drawCircle(centerSi, rr1 + 8, penPink2..style = PaintingStyle.fill);
    canvas.drawCircle(centerSi, rr1 + 4, penPink1..style = PaintingStyle.fill);
    canvas.drawCircle(centerSi, rr1 - 0, penPink..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// 日支の１階「刑」の薄い黒丸の描画
class ShapePainter8 extends CustomPainter {
  String kei;
  int sigo;
  ShapePainter8({
    required this.kei,
    required this.sigo,
  });
  @override
  void paint(Canvas canvas, Size size) {
    var center2 = const Offset(150, 384); // 本質の中心座標

    double r6 = 36; // 日支の１階の円の中心の半径
    double rr1 = 18; // 小さい円の半径

    final penPink2 = Paint()
      ..color = Colors.purple
      ..strokeWidth = 2.0;
    final penPink1 = Paint()
      ..color = Colors.pink
      ..strokeWidth = 2.0;

    final penPink = Paint()
      ..color = Colors.purpleAccent
      ..strokeWidth = 2.0;

    double radianSi = (30 * sigo + 90) / 180 * pi;
    final centerSi = center2 + Offset(r6 * cos(radianSi), r6 * sin(radianSi));

    if (kei.substring(sigo, sigo + 1) == '刑') {
      canvas.drawCircle(
          centerSi, rr1 + 4, penPink2..style = PaintingStyle.fill);
      canvas.drawCircle(
          centerSi, rr1 + 0, penPink1..style = PaintingStyle.fill);
      canvas.drawCircle(centerSi, rr1 - 4, penPink..style = PaintingStyle.fill);
    } else {}
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
