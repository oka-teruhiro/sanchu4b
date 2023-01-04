import 'package:flutter/material.dart';

class NikkanKinoto extends StatelessWidget {
  const NikkanKinoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：乙（きのと)',
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
              title: Text('　日干が乙の人は、草花やつる草にたとえられる性格を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/乙_イラスト１.jpg'),
            ),
            const ListTile(
              title: Text('　つる草は柔らかく、弱々しい印象です。性格はつる草がしなやかなように、柔'
                  '和で、草花のように表現力があります。現実をわきまえ、自分が置かれた'
                  '環境の中で発展していこうと考えます。'),
            ),
            const ListTile(
              title: Text('　つる草が他の木々や壁に従って伸びていくように、反応が速くて適応力があ'
                  'り、どのような環境でも対応することができます。その反面、つる草自身'
                  'で自立しないように、周囲の意見に妥協しやすく、行動が他人によって拘'
                  '束されがちです。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/乙_からみつく.jpg'),
            ),
            const ListTile(
              title: Text('　つる草が絡みついていくように、表面はおとなしく見えても、内面は独占欲'
                  'が強く、嫉妬心や執念深いところがあります。周りの人の出方によって態'
                  '度を変える、といった面も見られます。'),
            ),
            const ListTile(
              title: Text('　案外、お金に対して敏感なところがあります。金銭はコツコツ努力して蓄える'
                  'ほうで、浪費はあまりしません。'),
            ),
            const ListTile(
              title: Text('　性格はやさしくて慈愛に満ちあふれていますが、気弱になって依頼心を起こ'
                  'すことも多いでしょう。とかく自信を失いやすい性格です。誘惑に弱く、だ'
                  'まされやすい面もあります。'),
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
