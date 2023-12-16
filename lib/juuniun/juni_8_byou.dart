import 'package:flutter/material.dart';

class Byou extends StatelessWidget {
  const Byou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：病（びょう）',
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
              title: Image.asset('images/juuniun/12病.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　「病」という漢字を見て、病気になるのではないかと心配する人がいますが、そうではありません。病気になった時のような感性を持っています。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　病を持った人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 取り越し苦労の星。（まだ元気になる可能性は持つ）'),
            ),
            //ListTile(
            //  title: Image.network(
            //     'https://okatoku331.net/wp-content/uploads/2022/04/icon_uranai_x512-150x150.png'),
            //),
            const ListTile(
              title: Text('② 先の先を読む星。計算に強い星。'),
            ),
            const ListTile(
              title: Text('③ 病院関係者やドクターに良い星。'),
            ),
            const ListTile(
              title: Text('　また、能力面では、'),
            ),
            const ListTile(
              title: Text('　感性が鋭く技術的な感覚や戦略的思考は人よりも必ず鋭敏で独特のものを持っています。'),
            ),
            const ListTile(
              title: Text(
                  '　社会の環境を上手につかみ、人との付き合いも無難です。先を見る能力があり、計算高くスキがありません。少しの労力と予算で最大限の効果をあげようとします。お金の使い方も大変慎重です。'),
            ),
            const ListTile(
              title: Text(
                  '　しっかりと管理された組織で、理解のある上司がいれば、その能力を発揮することができるでしょうが、そういった環境がなければ、能力を発揮することはできません。'),
            ),
            const ListTile(
              title: Text('　一方で引っ込み思案で神経質になりやすく、大胆に物事を進めていく力には欠けています。'),
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
