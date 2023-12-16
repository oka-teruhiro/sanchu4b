import 'package:flutter/material.dart';

class Sui extends StatelessWidget {
  const Sui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：衰（すい）',
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
              title: Image.asset('images/juuniun/12衰.jpg'),
            ),
            const ListTile(
              title: Text('　衰退し始める状態を意味します。降り始めるが、それでもまだまだ強い。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('衰を持つ人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 帝旺の余力あり。ときたま強い人がいる。'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② 平和主義者の星。'),
            ),
            const ListTile(
              title: Text('③ 協調性を好む星。'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            const ListTile(
              title: Text(
                  '　とにかく冷静で落ち着いており、組織のトップからの突然の命令などにも慌てることがなく、客観的な判断ができる能力があります。'),
            ),
            const ListTile(
              title: Text(
                  '　ビジネスにおいても社会生活においても、新しいアイデアや発想で人が考えつかないようなことをやるタイプではありません。冒険もせず、計画的に何事もやるので大きな失敗はまずありません。財務会計、予算管理といった事務職を担当すればしっかりと金銭管理を行います。'),
            ),
            const ListTile(
              title: Text('　一方で、何事に関しても関心が薄く、迫力不足でやる気がないように見える傾向もあります。'),
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
