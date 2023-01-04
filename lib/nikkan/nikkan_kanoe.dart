import 'package:flutter/material.dart';

class NikkanKanoe extends StatelessWidget {
  const NikkanKanoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：庚（かのえ）',
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
              title: Text('　日干が庚の人は、剣にたとえられる性質を持っています。'),
            ),
            SizedBox(
              width: double.infinity,
              height: 250,
              //color: Colors.white70,
              child: ListTile(
                title: Image.asset('images/nikkan/庚_剣.jpg'),
              ),
            ),
            const ListTile(
              title: Text('　剣はとても硬く、ものを一刀両断にたたき切る強い力があります。白黒ハッ'
                  'キリしないと気が済まないところがあります。潔（いさぎよ）く朗（ほがら'
                  '）かで、意志が強くて、物事に屈しない性格です。'),
            ),
            const ListTile(
              title: Text('　剣が素早く動くように、頭の回転が速く、物事の区別をきちんとします。決断'
                  '力があって、行動はスピーディーです。迷っているなら行動して解決した'
                  'ほうがよいと考えます。しかし、衝動的になるところがあります。'),
            ),
            const ListTile(
              title: Text('　鉄を何度も叩いて鍛えるように、自分を鍛錬（たんれん）することを好みます。'
                  'また、負けず嫌いでトップになりたがります。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/庚_鍛える.jpg'),
            ),
            const ListTile(
              title: Text('　剣や斧がその用途に合わせて形が作られるように、学んだことを応用して利'
                  '益を得ることが得意です。物事は合理的な視点から見ます。'),
            ),
            const ListTile(
              title: Text('　人間関係では、正義感が強く潔癖です。義理を重んじる人です。一度友情関係'
                  'を結ぶと裏切りません。反対に、気にいらないものには攻撃し、敵とは果'
                  '敢に戦います。'),
            ),
            const ListTile(
              title: Text('　欠点としては、頑固で目立ちたいという欲求が強いところ、粗雑になりやすい'
                  'ところでしょう。'),
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
