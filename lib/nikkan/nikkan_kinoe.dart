import 'package:flutter/material.dart';

class NikkanKinoe extends StatelessWidget {
  const NikkanKinoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：甲（きのえ）',
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
              title: Text('　日干が甲の人は、樹木にたとえられる性質を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/甲_大樹.jpg'),
            ),
            const ListTile(
              title: Text('　樹木は天に向かって伸びるように、向上心にあふれ、新しいことをしようと'
                  'する気持ちが強く、現在おかれている境遇よりもさらに成長しようと努'
                  '力します。'),
            ),
            const ListTile(
              title: Text('　樹木は大地にしっかりと根を張るように、根性があり、初志貫徹します。困難'
                  'があっても負けずにやり抜く人です。'),
            ),
            const ListTile(
              title: Text('　樹木は幹が太くまっすぐで力強さがあるように、曲がったことや筋の通らな'
                  'いことができません。性格は嘘が嫌いです。質実剛健で、仕事ぶりは堅実'
                  'さを信条とします。軽薄さやいい加減さはなく、責任感が強いほうです。'
                  'うまい儲け話にのるとか、誘惑に負けるというようなことは少ないでしょ'
                  'う。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/甲_木陰.jpg'),
            ),
            const ListTile(
              title: Text('　樹木が枝をはり、その木陰に生き物が集うように、思いやりがあり、優しく、'
                  'かわいそうな人や困っている人に手助けをします。しかし、おせっかいが'
                  'すぎる面もときどきあります。'),
            ),
            const ListTile(
              title: Text('　生き方は道徳を重んじます。その反面、かたくなに規範を守り、妥協を知らな'
                  'いところもあります。'),
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
