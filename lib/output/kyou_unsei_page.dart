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
    List<String> tu = [
      // 通変星の文字の画像データ
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
    List<String> go = [
      // 五行の位置に入れる文字列
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
    const double h1 = 25;
    const int c2 = -1; // 白
    const int c3 = -1407770; // ピンク

    double rrr = 36; //小さい円の直系
    double rrM = 24; //文字の大きさ
    var center1 = Offset((150 - rrr / 2), (130 - rrr / 2)); // 表面の中心座標
    var center2 = Offset((150 - rrM / 2), (130 - rrM / 2)); // 表面の中心座標
    double r1 = 36;
    double r2 = 72;
    double r3 = 108;
    //double rr1 = 36;
    double radiG0 = (72 * 0 - 90) / 180 * pi;
    double tadiG1 = (72 * 1 - 90) / 180 * pi;
    double radiG2 = (72 * 2 - 90) / 180 * pi;
    double radiG3 = (72 * 3 - 90) / 180 * pi;
    double radiG4 = (72 * 4 - 90) / 180 * pi;
    final centerG01 = center1 + Offset(r1 * cos(radiG0), r1 * sin(radiG0));
    final centerG02 = center1 + Offset(r2 * cos(radiG0), r2 * sin(radiG0));
    final centerG03 = center1 + Offset(r3 * cos(radiG0), r3 * sin(radiG0));
    final centerG11 = center1 + Offset(r1 * cos(tadiG1), r1 * sin(tadiG1));
    final centerG12 = center1 + Offset(r2 * cos(tadiG1), r2 * sin(tadiG1));
    final centerG13 = center1 + Offset(r3 * cos(tadiG1), r3 * sin(tadiG1));
    final centerG21 = center1 + Offset(r1 * cos(radiG2), r1 * sin(radiG2));
    final centerG22 = center1 + Offset(r2 * cos(radiG2), r2 * sin(radiG2));
    final centerG23 = center1 + Offset(r3 * cos(radiG2), r3 * sin(radiG2));
    final centerG31 = center1 + Offset(r1 * cos(radiG3), r1 * sin(radiG3));
    final centerG32 = center1 + Offset(r2 * cos(radiG3), r2 * sin(radiG3));
    final centerG33 = center1 + Offset(r3 * cos(radiG3), r3 * sin(radiG3));
    final centerG41 = center1 + Offset(r1 * cos(radiG4), r1 * sin(radiG4));
    final centerG42 = center1 + Offset(r2 * cos(radiG4), r2 * sin(radiG4));
    final centerG43 = center1 + Offset(r3 * cos(radiG4), r3 * sin(radiG4));

    final centerG0M1 = center2 + Offset(r1 * cos(radiG0), r1 * sin(radiG0));
    final centerG0M2 = center2 + Offset(r2 * cos(radiG0), r2 * sin(radiG0));
    final centerG0M3 = center2 + Offset(r3 * cos(radiG0), r3 * sin(radiG0));
    final centerG1M1 = center2 + Offset(r1 * cos(tadiG1), r1 * sin(tadiG1));
    final centerG1M2 = center2 + Offset(r2 * cos(tadiG1), r2 * sin(tadiG1));
    final centerG1M3 = center2 + Offset(r3 * cos(tadiG1), r3 * sin(tadiG1));
    final centerG2M1 = center2 + Offset(r1 * cos(radiG2), r1 * sin(radiG2));
    final centerG2M2 = center2 + Offset(r2 * cos(radiG2), r2 * sin(radiG2));
    final centerG2M3 = center2 + Offset(r3 * cos(radiG2), r3 * sin(radiG2));
    final centerG3M1 = center2 + Offset(r1 * cos(radiG3), r1 * sin(radiG3));
    final centerG3M2 = center2 + Offset(r2 * cos(radiG3), r2 * sin(radiG3));
    final centerG3M3 = center2 + Offset(r3 * cos(radiG3), r3 * sin(radiG3));
    final centerG4M1 = center2 + Offset(r1 * cos(radiG4), r1 * sin(radiG4));
    final centerG4M2 = center2 + Offset(r2 * cos(radiG4), r2 * sin(radiG4));
    final centerG4M3 = center2 + Offset(r3 * cos(radiG4), r3 * sin(radiG4));

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
                                const SizedBox(
                                  // 第一階層
                                  width: 312,
                                  height: 700,
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
                                SizedBox(
                                  width: 312,
                                  height: 460,
                                  child: CustomPaint(
                                    painter: ShapePainter5(
                                        tuhen: 9), // 渡したい変数を引数に指定する
                                    // size: const Size(400, 400), // この行を入れると図形と文字を重ねることができない
                                  ),
                                ),
                                // 外枠五行
                                Transform.translate(
                                  offset: centerG0M3,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child:
                                        Image.asset('images/tuuhenbosi/g0.png'),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG1M3,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child:
                                        Image.asset('images/tuuhenbosi/g1.png'),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG2M3,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child:
                                        Image.asset('images/tuuhenbosi/g2.png'),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG3M3,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child:
                                        Image.asset('images/tuuhenbosi/g3.png'),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG4M3,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child:
                                        Image.asset('images/tuuhenbosi/g4.png'),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG0M2,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[0]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG0M1,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[1]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG1M2,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[2]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG1M1,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[3]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG2M2,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[4]),
                                  ),
                                ),

                                Transform.translate(
                                  offset: centerG2M1,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[5]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG3M2,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[6]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG3M1,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[7]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG4M2,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[8]),
                                  ),
                                ),
                                Transform.translate(
                                  offset: centerG4M1,
                                  child: SizedBox(
                                    height: rrM,
                                    width: rrM,
                                    child: Image.asset(go[9]),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Text('■■■■■■■ この図の見方 ■■■■■■■',
                            style: TextStyle(
                              color: Color(c2),
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            )),
                      ),
                      const ListTile(
                        title: SizedBox(
                          height: 1200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('■ 結婚運 ■',
                                  style: TextStyle(
                                    color: Color(c3),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　上の大きな白の円において、「＜」で区切られた部'
                                  '分は、日干を表し通変星で比肩・劫敗を表しています。ここから円の'
                                  '中心を向いて、右斜め奥方向に「官星」、左斜め奥方向に「財星」'
                                  'が位置しています。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　女性の場合は、官星方向にある白い数字を足した数が、'
                                  '「1」あるいは「2」の時は結婚運があるとみます。'
                                  '「0」あるいは「3以上」の時は結婚運がないとみます。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text('　男性の場合は、財星方向にある白い数字をみます。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　結婚運がないとなると、心配になりますが、さらに小さ'
                                  'い白い円（本質）をみます。上の大きな円と同じ方向の白い'
                                  '数字をみます。表面側が「0」でも本質側に数字があれば、'
                                  '先祖が準備した運があるとみます。ぜひ先祖供養をして、先'
                                  '祖が準備した運を取り込みましょう。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　本質にも数字がない時は、天が与える運をみます。天は、'
                                  '万民に平等に運勢を与えるため、昨日は癸の人、今日は甲の'
                                  '人、明日は乙の人という具合に順番に運勢を与えていきます。'
                                  '同様に月ごとに、また年ごとに運勢を与えていきます。その'
                                  '様子を、一番内側の青い円の中のピンク色の数字で表てしま'
                                  'す。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　いつ天の運勢がめぐってくるかを調べるには、右下の6つ'
                                  'の青いボタンをタップすると鑑定日が変化します。結婚運の'
                                  '方向にピンク色の数字が現れる年がチャンスの時です。その'
                                  '時に向けて準備をしましょう。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　準備とは、結婚運は、夫婦愛の問題になりますが、夫婦'
                                  '愛は、兄弟姉妹愛の土台の上に築くことができると言われて'
                                  'います。兄弟姉妹の愛は、狭い意味では、家族の兄弟姉妹で'
                                  'すが、広い意味では、地域や人類に対する愛になります。愛'
                                  'されたら、愛するのは、当たり前の行動ですが、兄弟姉妹の'
                                  '愛の本質は、その人から愛されたわけではないのに愛してい'
                                  'く愛を意味します。多くの人を兄弟姉妹のように愛していく'
                                  '努力をしましょう。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　結婚運がない場合で、星の数が「3以上」の場合は、多く'
                                  'の人に結婚相手として、気持ちが向いていたり、結婚してい'
                                  'ても、配偶者意外のひとに気持ちがいったり、言い寄られたり、'
                                  'また、逆に全く結婚する気持ちがなかったり、縁がなかった'
                                  'りという現象として現れます。結婚運が「1」や「2」でも、'
                                  '天の与える運によって、「3以上」になる場合は、やはりこ'
                                  'の現象が現れやすいので、配偶者をより愛し、誘惑に心を奪'
                                  'われないように厳しく自らを律する必要があります。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                              Text(
                                  '　表面が、結婚運があっても、本質に星がない場合も、注'
                                  '意が必要です。結婚運があるようでもはがれ落ちやすい結婚'
                                  '運です。結婚前なら、前述したように自分の愛のレベルを高'
                                  'める努力をし、結婚後なら配偶者に対しての愛もさらに高め'
                                  'る努力をしましょう。',
                                  style: TextStyle(
                                    color: Color(c2),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 97,
              child: Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 88,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 24,
                            child: Text(
                              '2013/7/23',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            child: Text(
                              'の運勢',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 47,
                            child: Text(
                              '大吉',
                              style: TextStyle(
                                color: Colors.purpleAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 44,
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
                      width: 44,
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
                      width: 44,
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
                      width: 44,
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
                                //dateUp();
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
      ),
    );
  }
}

class ShapePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(150, 130); // 表面の中心座標
    var center2 = const Offset(150, 400); // 本質の中心座標
    double r1 = 36;
    double r2 = 72;
    double r3 = 108;
    double r4 = 112;
    double r5 = 74;
    double r6 = 36;
    double rr1 = 18;
    double rr2 = 90;
    double rr3 = 93;

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

    //double angleMoku = 72 * 0 - 90;
    //double angleKa = 72 * 1 - 90;
    //double angleDo = 72 * 2 - 90;
    //double angleKin = 72 * 3 - 90;
    //double angleSui = 72 * 4 - 90;
    double radianKa0 = (72 * 0 - 90) / 180 * pi;
    double radianKa1 = (72 * 1 - 90) / 180 * pi;
    double radianKa2 = (72 * 2 - 90) / 180 * pi;
    double radianKa3 = (72 * 3 - 90) / 180 * pi;
    double radianKa4 = (72 * 4 - 90) / 180 * pi;
    //double radianKa = angleKa / 180 * pi;
    //double radianDo = angleDo / 180 * pi;
    //double radianKin = angleKin / 180 * pi;
    //double radianSui = angleSui / 180 * pi;
    final centerKa01 =
        center1 + Offset(r1 * cos(radianKa0), r1 * sin(radianKa0));
    final centerKa02 =
        center1 + Offset(r2 * cos(radianKa0), r2 * sin(radianKa0));
    final centerKa03 =
        center1 + Offset(r3 * cos(radianKa0), r3 * sin(radianKa0));
    final centerKa11 =
        center1 + Offset(r1 * cos(radianKa1), r1 * sin(radianKa1));
    final centerKa12 =
        center1 + Offset(r2 * cos(radianKa1), r2 * sin(radianKa1));
    final centerKa13 =
        center1 + Offset(r3 * cos(radianKa1), r3 * sin(radianKa1));
    final centerKa21 =
        center1 + Offset(r1 * cos(radianKa2), r1 * sin(radianKa2));
    final centerKa22 =
        center1 + Offset(r2 * cos(radianKa2), r2 * sin(radianKa2));
    final centerKa23 =
        center1 + Offset(r3 * cos(radianKa2), r3 * sin(radianKa2));
    final centerKa31 =
        center1 + Offset(r1 * cos(radianKa3), r1 * sin(radianKa3));
    final centerKa32 =
        center1 + Offset(r2 * cos(radianKa3), r2 * sin(radianKa3));
    final centerKa33 =
        center1 + Offset(r3 * cos(radianKa3), r3 * sin(radianKa3));
    final centerKa41 =
        center1 + Offset(r1 * cos(radianKa4), r1 * sin(radianKa4));
    final centerKa42 =
        center1 + Offset(r2 * cos(radianKa4), r2 * sin(radianKa4));
    final centerKa43 =
        center1 + Offset(r3 * cos(radianKa4), r3 * sin(radianKa4));

    /*final centerKa1 = center1 + Offset(r1 * cos(radianKa), r1 * sin(radianKa));
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
        center1 + Offset(r3 * cos(radianSui), r3 * sin(radianSui));*/

    //canvas.drawCircle(center1, 20, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(center1, rr2, penBlack2..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa01, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa02, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa03, rr1, penBlue..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa11, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa12, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa13, rr1, penRed..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa21, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa22, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa23, rr1, penYelow..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa31, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa32, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa33, rr1, penWhite..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa41, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa42, rr1, penBlack1..style = PaintingStyle.fill);
    canvas.drawCircle(centerKa43, rr1, penWhite1..style = PaintingStyle.stroke);
    canvas.drawCircle(center1, rr2, penWhite..style = PaintingStyle.stroke);

    // 日子の運勢の描画
    double radianSi0 = (0 * 30 - 270) / 180 * pi;
    double radianSi1 = (1 * 30 - 270) / 180 * pi;
    double radianSi2 = (2 * 30 - 270) / 180 * pi;
    double radianSi3 = (3 * 30 - 270) / 180 * pi;
    double radianSi4 = (4 * 30 - 270) / 180 * pi;
    double radianSi5 = (5 * 30 - 270) / 180 * pi;
    double radianSi6 = (6 * 30 - 270) / 180 * pi;
    double radianSi7 = (7 * 30 - 270) / 180 * pi;
    double radianSi8 = (8 * 30 - 270) / 180 * pi;
    double radianSi9 = (9 * 30 - 270) / 180 * pi;
    double radianSi10 = (10 * 30 - 270) / 180 * pi;
    double radianSi11 = (11 * 30 - 270) / 180 * pi;
    final centerSi0 =
        center2 + Offset(r4 * cos(radianSi0), r4 * sin(radianSi0));
    final centerSi1 =
        center2 + Offset(r4 * cos(radianSi1), r4 * sin(radianSi1));
    final centerSi2 =
        center2 + Offset(r4 * cos(radianSi2), r4 * sin(radianSi2));
    final centerSi3 =
        center2 + Offset(r4 * cos(radianSi3), r4 * sin(radianSi3));
    final centerSi4 =
        center2 + Offset(r4 * cos(radianSi4), r4 * sin(radianSi4));
    final centerSi5 =
        center2 + Offset(r4 * cos(radianSi5), r4 * sin(radianSi5));
    final centerSi6 =
        center2 + Offset(r4 * cos(radianSi6), r4 * sin(radianSi6));
    final centerSi7 =
        center2 + Offset(r4 * cos(radianSi7), r4 * sin(radianSi7));
    final centerSi8 =
        center2 + Offset(r4 * cos(radianSi8), r4 * sin(radianSi8));
    final centerSi9 =
        center2 + Offset(r4 * cos(radianSi9), r4 * sin(radianSi9));
    final centerSi10 =
        center2 + Offset(r4 * cos(radianSi10), r4 * sin(radianSi10));
    final centerSi11 =
        center2 + Offset(r4 * cos(radianSi11), r4 * sin(radianSi11));

    final centerSi0a =
        center2 + Offset(r5 * cos(radianSi0), r5 * sin(radianSi0));
    final centerSi1a =
        center2 + Offset(r5 * cos(radianSi1), r5 * sin(radianSi1));
    final centerSi2a =
        center2 + Offset(r5 * cos(radianSi2), r5 * sin(radianSi2));
    final centerSi3a =
        center2 + Offset(r5 * cos(radianSi3), r5 * sin(radianSi3));
    final centerSi4a =
        center2 + Offset(r5 * cos(radianSi4), r5 * sin(radianSi4));
    final centerSi5a =
        center2 + Offset(r5 * cos(radianSi5), r5 * sin(radianSi5));
    final centerSi6a =
        center2 + Offset(r5 * cos(radianSi6), r5 * sin(radianSi6));
    final centerSi7a =
        center2 + Offset(r5 * cos(radianSi7), r5 * sin(radianSi7));
    final centerSi8a =
        center2 + Offset(r5 * cos(radianSi8), r5 * sin(radianSi8));
    final centerSi9a =
        center2 + Offset(r5 * cos(radianSi9), r5 * sin(radianSi9));
    final centerSi10a =
        center2 + Offset(r5 * cos(radianSi10), r5 * sin(radianSi10));
    final centerSi11a =
        center2 + Offset(r5 * cos(radianSi11), r5 * sin(radianSi11));

    final centerSi0b =
        center2 + Offset(r6 * cos(radianSi0), r6 * sin(radianSi0));
    final centerSi1b =
        center2 + Offset(r6 * cos(radianSi1), r6 * sin(radianSi1));
    final centerSi2b =
        center2 + Offset(r6 * cos(radianSi2), r6 * sin(radianSi2));
    final centerSi3b =
        center2 + Offset(r6 * cos(radianSi3), r6 * sin(radianSi3));
    final centerSi4b =
        center2 + Offset(r6 * cos(radianSi4), r6 * sin(radianSi4));
    final centerSi5b =
        center2 + Offset(r6 * cos(radianSi5), r6 * sin(radianSi5));
    final centerSi6b =
        center2 + Offset(r6 * cos(radianSi6), r6 * sin(radianSi6));
    final centerSi7b =
        center2 + Offset(r6 * cos(radianSi7), r6 * sin(radianSi7));
    final centerSi8b =
        center2 + Offset(r6 * cos(radianSi8), r6 * sin(radianSi8));
    final centerSi9b =
        center2 + Offset(r6 * cos(radianSi9), r6 * sin(radianSi9));
    final centerSi10b =
        center2 + Offset(r6 * cos(radianSi10), r6 * sin(radianSi10));
    final centerSi11b =
        center2 + Offset(r6 * cos(radianSi11), r6 * sin(radianSi11));

    canvas.drawCircle(centerSi0, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi1, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi2, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi3, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi4, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi5, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi6, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi7, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi8, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi9, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi10, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi11, rr1, penBlue..style = PaintingStyle.stroke);

    canvas.drawCircle(centerSi0a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi1a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi2a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi3a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi4a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi5a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi6a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi7a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi8a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi9a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi10a, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi11a, rr1, penBlue..style = PaintingStyle.stroke);

    canvas.drawCircle(centerSi0b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi1b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi2b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi3b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi4b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi5b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi6b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi7b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi8b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi9b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi10b, rr1, penBlue..style = PaintingStyle.stroke);
    canvas.drawCircle(centerSi11b, rr1, penBlue..style = PaintingStyle.stroke);

    canvas.drawCircle(center2, rr3, penWhite..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ShapePainter4 extends CustomPainter {
  int gogyou = 1; // 五行　0:木 1:火 2:土 3:金 4:水  // ■■■■■■受け取る値を代入する変数を定義
  int nitiSi = 0; // 日し
  ShapePainter4({required this.gogyou}); // ■■■■■■■■■受け取る値を上記変数に代入
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(150, 130); // 表面の中心座標
    var center2 = const Offset(150, 400); // 本質の中心座標
    const lineLength1 = 130.0;
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

    double radian3 = ((30 * nitiSi) - 90 - 15) / 180 * pi;
    double radian4 = ((30 * nitiSi) - 90 + 15) / 180 * pi;

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

class ShapePainter5 extends CustomPainter {
  //int gogyou = 1; // 五行　0:木 1:火 2:土 3:金 4:水  // ■■■■■■受け取る値を代入する変数を定義
  //int nitiSi = 0;
  int tuhen; // 日し
  ShapePainter5({required this.tuhen}); // ■■■■■■■■■受け取る値を上記変数に代入
  @override
  void paint(Canvas canvas, Size size) {
    var center1 = const Offset(150, 130); // 表面の中心座標
    var center2 = const Offset(150, 400); // 本質の中心座標

    double rr1 = 18;
    double r1 = 36;
    double r2 = 72;
    double rt;
    double gogyo;
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

    gogyo1 = tuhen % 2;
    if (gogyo1 == 0) {
      rt = r2;
      gogyo = tuhen / 2;
    } else {
      rt = r1;
      gogyo = (tuhen - 1) / 2;
    }

    double radianTu = (72 * gogyo - 90) / 180 * pi;
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
