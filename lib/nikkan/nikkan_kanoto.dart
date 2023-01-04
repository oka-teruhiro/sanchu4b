import 'package:flutter/material.dart';

class NikkanKanoto extends StatelessWidget {
  const NikkanKanoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：辛（かのと）',
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
              title: Text('　日干が辛の人は、宝石にたとえられる性質を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/辛_宝石.jpg'),
            ),
            const ListTile(
              title: Text('　宝石は、美しく繊細で光を反射させるように、とても繊細で敏感な感受性の'
                  '持ち主です。宝石は希少価値があるように、他のひとには見られない独'
                  '特な考え方を持っています。宝石が美しいだけでなく、とても硬いように'
                  '、表向きはソフトに見えますが、芯はしっかりしています。'),
            ),
            const ListTile(
              title: Text('　宝石がキラリと輝くように、キラリと勘が働きます。頭の回転が速く、いろい'
                  'ろなことに注意が働きます。何事に対しても要領がよく柔軟です。'),
            ),
            const ListTile(
              title: Text('　宝石のように気品があり、魅力的で特に異性に人気があります。宝石はいろ'
                  'んな方向から見ても輝くように、八方美人の人もいますが、とかく、好き'
                  '嫌いはハッキリしているようです。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/辛_王冠.jpg'),
            ),
            const ListTile(
              title: Text('　宝石なので、プライドが高く、世間体を重んじます。国王が宝石を身につける'
                  'ように、権力を愛するところもあります。'),
            ),
            const ListTile(
              title: Text('　新しいものが好きで、見栄っ張りなので、いろいろなものを買います。一方で'
                  '、飽きっぽい面もあります。わがままなところがあり、妥協をせず、自分の'
                  '主張は譲りません。'),
            ),
            const ListTile(
              title: Text('　義理には厚く、人からの頼み事を断りきれません。親切に人の面倒を見ます。'),
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
