import 'package:flutter/material.dart';

class Tyousei extends StatelessWidget {
  const Tyousei({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：長生（ちょうせい）',
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
              title: Image.asset('images/juuniun/12長.jpg'),
            ),
            const ListTile(
              title: Text('　お腹の中で、胎児が成長しけっこう大きくなった様子を意味します。'
                  '　胎児はお母さんを蹴飛ばしても、お母さんはそれを喜びます。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　長生を持つ人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 母胎で寝たい時に寝、起きたい時に起き、何の苦しみも、寒さ・暑さも関係ない星'),
            ),
            const ListTile(
              title: Text('② 母胎で自動的に栄養をもらう、徳の多い星'),
            ),
            const ListTile(
              title: Text('③　気分が悪いと母胎を足で蹴るが、人から祝福される。好き勝手が通る星'),
            ),
            const ListTile(
              title: Text('④ トラブル時に和解できる星'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            const ListTile(
              title: Text('　社会の中や組織の中での世渡りがうまく、人あたりが良く、そのため人から好かれます。'),
            ),
            const ListTile(
              title: Text('　考え方が新鮮で、どんどんと新しいものに取り組んでいく能力があります。'),
            ),
            const ListTile(
              title: Text(
                  '　環境の変化に対しては敏感で、乗り遅れることはありません。したがって時流に敏感で、ビジネスに対するセンスが良いので、新しい商品を企画し開発する能力や営業センスがあります。'),
            ),
            const ListTile(
              title: Text('　グループをうまく管理し、率いていく能力もありますので、部下から慕われる管理職となる才能があります。'),
            ),
            const ListTile(
              title: Text('　一方で社会の現実や実状にうとくなりやすく、考え方があまくなりやすい傾向もあります。'),
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
