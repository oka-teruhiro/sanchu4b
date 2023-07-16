import 'dart:math';

import 'package:flutter/material.dart';

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
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            '今日の運勢',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              fontSize: 16,
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
                                SizedBox(
                                  width: 312,
                                  height: 460,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    //ToDo: ここは文字を入れる（第一階層）
                                    children: [],
                                  ),
                                ),
                                // ここから第二階層
                                SizedBox(
                                  width: 312,
                                  height: 460,
                                  child: CustomPaint(
                                    painter: ShapePainter3(), // 渡したい変数を引数に指定する
                                    // size: const Size(400, 400), // この行を入れると図形と文字を重ねることができない
                                  ),
                                ),
                                SizedBox(
                                  width: 312,
                                  height: 460,
                                  child: CustomPaint(
                                    painter: ShapePainter4(
                                        gogyou: 4), // 渡したい変数を引数に指定する
                                    // size: const Size(400, 400), // この行を入れると図形と文字を重ねることができない
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(184, 216),
                                  child:
                                      Image.asset('images/tuuhenbosi/偏財.png'),
                                ),
                                Transform.translate(
                                  offset: Offset(156, 172),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: Image.asset(
                                        'images/tuuhenbosi/偏官ピンク50.png'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShapePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(154, 162); // 表面の中心座標
    var center2 = const Offset(70, 374); // 本質の中心座標
    double r1 = 36;
    double r2 = 72;
    double r3 = 108;
    double rr1 = 18;
    double rr2 = 90;

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
        center1 + Offset(r1 * cos(radianMoku), r1 * sin(radianMoku));
    final centerMoku2 =
        center1 + Offset(r2 * cos(radianMoku), r2 * sin(radianMoku));
    final centerMoku3 =
        center1 + Offset(r3 * cos(radianMoku), r3 * sin(radianMoku));
    final centerKa1 = center1 + Offset(r1 * cos(radianKa), r1 * sin(radianKa));
    final centerKa2 = center1 + Offset(r2 * cos(radianKa), r2 * sin(radianKa));
    final centerKa3 = center1 + Offset(r3 * cos(radianKa), r3 * sin(radianKa));
    final centerDo1 = center1 + Offset(r1 * cos(radianDo), r1 * sin(radianDo));
    final centerDo2 = center1 + Offset(r2 * cos(radianDo), r2 * sin(radianDo));
    final centerDo3 = center1 + Offset(r3 * cos(radianDo), r3 * sin(radianDo));
    final centerKin1 =
        center1 + Offset(r1 * cos(radianKin), r1 * sin(radianKin));
    final centerKin2 =
        center1 + Offset(r2 * cos(radianKin), r2 * sin(radianKin));
    final centerKin3 =
        center1 + Offset(r3 * cos(radianKin), r3 * sin(radianKin));
    final centerSui1 =
        center1 + Offset(r1 * cos(radianSui), r1 * sin(radianSui));
    final centerSui2 =
        center1 + Offset(r2 * cos(radianSui), r2 * sin(radianSui));
    final centerSui3 =
        center1 + Offset(r3 * cos(radianSui), r3 * sin(radianSui));

    //canvas.drawCircle(center1, 20, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerMoku1, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerMoku2, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerMoku3, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKa1, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKa2, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKa3, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerDo1, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerDo2, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerDo3, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKin1, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKin2, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerKin3, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSui1, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSui2, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSui3, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(center1, rr2, penWhite..style = PaintingStyle.stroke);

    // 本質チャートの描画
    canvas.drawCircle(center2, 30, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(center2, 52, penWhite..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ShapePainter4 extends CustomPainter {
  int gogyou = 1; // 五行　0:木 1:火 2:土 3:金 4:水  // ■■■■■■受け取る値を代入する変数を定義
  ShapePainter4({required this.gogyou}); // ■■■■■■■■■受け取る値を上記変数に代入
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(154, 162); // 表面の中心座標
    var center2 = const Offset(70, 374); // 本質の中心座標
    const lineLength1 = 152.0;
    const lineLength2 = 68.0;

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
