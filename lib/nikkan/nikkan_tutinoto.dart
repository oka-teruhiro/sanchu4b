import 'package:flutter/material.dart';

class NikkanTutinoto extends StatelessWidget {
  const NikkanTutinoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：己（つちのと）',
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
              title: Text(
                '　日干が己の人は、畑の土にたとえられる性質を持っています。',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            ListTile(
              title: Image.asset('images/nikkan/己_畑土.jpg'),
            ),
            const ListTile(
              title: Text(
                '　畑の土は柔らかく湿っているので、水はせき止めません。柔らかい土を使っ'
                'て器を作れるように、柔軟で、理解が速く、多芸多才です。器用でいろい'
                'ろなことをこなしていける才覚があります。',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                '　善良で家庭的、穏やかな性質ですが、単純なタイプではなく、畑の土がいろい'
                'ろな養分を秘めているように、内面に複雑性を秘めています。物事の現'
                '実的な側面を見ることができ、外から見るほどお人よしではありません。',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                '　畑の土が肥えるように、内面の充実を重視しているので、普段からコツコツ'
                'と学習し、知識を深め、人格を高めるように心がけています。',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            ListTile(
              title: Image.asset('images/nikkan/己_陶芸.jpg'),
            ),
            const ListTile(
              title: Text(
                '　柔軟なので、何をやらせても上手にこなし、変化に応じる方法を心得ていま'
                'す。しかし、いろいろなものを内包するがゆえに、一つのことに精神を集'
                '中しにくいところがあります。',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                '　物事に迷いやすいタイプです。けじめをつけようとしても、決心がつかず現状'
                'に妥協しやすい傾向がありますので、人に利用されないように気をつけま'
                'しょう。',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
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
            const ListTile(
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
