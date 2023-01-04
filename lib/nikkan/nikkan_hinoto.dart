import 'package:flutter/material.dart';

class NikkanHinoto extends StatelessWidget {
  const NikkanHinoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '日干：丁（ひのと）',
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
              title: Text('　日干が丁の人は、ロウソクの火にたとえられる性質を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/丁_キャンドル.jpg'),
            ),
            const ListTile(
              title: Text('　ロウソクの火は静かに燃えて部屋の小さな空間を照らします。ですから、身近'
                  'な人に温かい愛情を持つ人です。'),
            ),
            const ListTile(
              title: Text('　陰性の火なので、普段は静かで穏やか'
                  'です。しかし、薪から家や森林などに一度火がつくと止まりません。しかも、'
                  '長期間にわたって情熱の火を燃やし続けます。'),
            ),
            const ListTile(
              title: Text('　また、不満がたまっていても、はた目からはわかりません。ある日突然、爆発し'
                  'たように一気に激しく炎上し、周囲を巻き込んで大惨事となります。'),
            ),
            ListTile(
              title: Image.asset('images/nikkan/丁_燃える炎.jpg'),
            ),
            const ListTile(
              title: Text('　普段は、神経質でインテリで、礼儀正しく、人に対して細やかな心配りができ'
                  'る人です。一見、静かな人のように見えますが、大変な情熱家です。改革'
                  '心はありますが、何事も用意周到に段取りをして時期を待つ人です。考え'
                  '方は緻密で思慮深いでしょう。'),
            ),
            const ListTile(
              title: Text('　自分に縁のある人には親身になって相談に応じ、援助しようとします。光が'
                  '届く範囲にいる人から見ると、とても面倒見が良くて温かい人と見えま'
                  'すが、光の届かない範囲にいる人からは、冷たくとっつきにくい人に見'
                  'られがちです。'),
            ),
            const ListTile(
              title: Text('　疑り深い割には、気分によって一喜一憂する点や、自分を省みるところが'
                  '少ないのが欠点でしょう。'),
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
