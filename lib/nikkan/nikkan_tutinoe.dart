import 'package:flutter/material.dart';

class NikkanTutinoe extends StatelessWidget {
  const NikkanTutinoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：戊（つちのえ）',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        //color: Colors.white70,
        child: ListView(
          children: <Widget>[
            const ListTile(
              title: Text('　日干が戊の人は、岩石や岩山にたとえられる性質を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/戊_岩山.jpg'),
            ),
            const ListTile(
              title: Text('　岩石は固くて水をせき止める堤防となる力があります。岩山が動かないよ'
                  'うにどっしりと落ち着いています。'),
            ),
            const ListTile(
              title: Text('　どうせ岩山で動けないので変化に対応しようとしてくよくよなどはしません、'
                  '楽天的であり、おおらかで温厚な性格です。軽はずみな行動はせず、まじ'
                  'めで正直ものです。頑固ではありますが、素朴で信用できる人です。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/戊_石垣.jpg'),
            ),
            const ListTile(
              title: Text('　何をするにもしっかり基礎を固めてからじっくりと時間をかけてから取り組'
                  'みます。臨機応変には動けないため、チャンスを逃すこともありますが、'
                  '本人はいたってマイペースです。'),
            ),
            const ListTile(
              title: Text('　一度信じ込むと、疑いを持たなくなります'
                  '。物事に固執する性質です。人を信じてだまされてしまうこともあります。'),
            ),
            const ListTile(
              title: Text('　やさしくて情に厚いので、人の相談にのり、世話をすることが多くなります。'),
            ),
            const ListTile(
              title: Text('　頭が固く、柔軟な発想は苦手です。言い出すと聞かないわがままなところもあ'
                  'ります。信頼はできますが、変化に乏しくワンパターンなので、面白みに欠'
                  'けると思われることもあるでしょう。'),
            ),
            const ListTile(
              title: Text(''),
            ),
            /*AdmobBanner(
                adUnitId: AdMobService().getBannerAdUnitId(),
                adSize: AdmobBannerSize(
                  width: MediaQuery.of(context).size.width.toInt(),
                  height: AdMobService().getHeight(context).toInt(),
                  name: 'SMART_BANNER',
                )),*/
            const ListTile(
              title: Text(''),
            ),
            ElevatedButton(
              child: const Text('戻る'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
