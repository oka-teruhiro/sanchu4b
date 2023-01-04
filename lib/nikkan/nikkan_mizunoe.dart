import 'package:flutter/material.dart';

class NikkanMizunoe extends StatelessWidget {
  const NikkanMizunoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：壬（みずのえ）',
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
              title: Text('　日干が壬の人は、海や大河にたとえられる性質をもっています。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/壬_海.jpg'),
            ),
            const ListTile(
              title: Text('　海原はどこまでも広がり、ゆったりと水を満たしています。ですから、楽観的に'
                  'おおらかに物事を見ています。大河がより低い箇所を見つめて流れていく'
                  'ように、過去にはこだわらず悠々としていて、海にいろいろなものが流れて'
                  'くるように、多くのものを容認する包容力があります。'),
            ),
            const ListTile(
              title: Text('　水は動くことを通して生きた水になるように、よく動き、外交的で世話好きで'
                  'す。苦労性な面はありますが、どこへいっても元気で目立ちます。'),
            ),
            const ListTile(
              title: Text('　　水は、自分の形を持たず、器に合わせて瞬時に形を変えるように、知恵にあ'
                  'ふれ、頭の回転が速く、大変に聡明です。チャンスが来るのを待ち、臨機応'
                  '変に対処し、タイミングを逃しません。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/壬_支流.jpg'),
            ),
            const ListTile(
              title: Text('　小さな川がまとまりやがて海という目標にむかって一つになって流れていく'
                  'ように、責任感があり、リーダーシップも発揮し、親切です。自分自身の形'
                  'を持たないぶん、人任せにし、怠惰なところがあり、人に依存しやすい面も'
                  'あります。'),
            ),
            const ListTile(
              title: Text('　自由を好み、束縛を嫌いますから、多くの人とつき合い、異性とはくっついた'
                  'り離れたりしがちです。水の性質から、勢いに任せてしまうようなところ'
                  'があり、意志が変わりやすいでしょう。'),
            ),
            const ListTile(
              title: Text(''),
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
