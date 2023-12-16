import 'package:flutter/material.dart';

class Kantai extends StatelessWidget {
  const Kantai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：冠帯（かんたい）',
          //textScaleFactor: 1.0,
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
            ListTile(
              title: Image.asset('images/juuniun/12冠.jpg'),
            ),
            const ListTile(
              title: Text('　成人式で、冠と帯をつけ、大人として認められることを意味します。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　冠帯を持つ人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 徳の多い星。強すぎず弱すぎずとてもラッキーな星。'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② やさしく親切で世話好きな星。'),
            ),
            const ListTile(
              title: Text('③ 困ったときに援助者が現れる星。'),
            ),
            const ListTile(
              title: Text('④ 社会の上級ランクからひきたてられる星'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            const ListTile(
              title: Text(
                  '　ビジネスや会社組織、そして社会生活全般において、大変規律正しく、しっかりと姿勢を正して物事を考え行動する能力があります。'),
            ),
            const ListTile(
              title: Text('　自分の地位や立場、さらには会社の肩書きなどを上手に使うことによって、物事の交渉を行います。'),
            ),
            const ListTile(
              title: Text('　時にはハッタリも得意ですが、ハッタリがウソにならないよう、うまくやる能力があります。'),
            ),
            const ListTile(
              title: Text(
                  '　したがって、大きな企業や組織など規律を求められる環境の中では能力を発揮することができますが、周囲の反対を押し切って独自の力で新しいビジネスを立ち上げるタイプではありません。'),
            ),
            const ListTile(
              title: Text(
                  '　一方で、見栄っ張りで世間体ばかりを気にしたり、自分の立場や権力を振りかざすために、周囲から敬遠されることもあります。'),
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
