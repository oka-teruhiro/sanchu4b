import 'package:flutter/material.dart';

class JuuniUn extends StatelessWidget {
  const JuuniUn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運とは',
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
              title: Text('　受胎を意味します。新しい生命の出発。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の出し方.jpg'),
            ),
            const ListTile(
              title: Text('　胎を持つ人の特徴は、'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の読み.jpg'),
            ),
            const ListTile(
              title: Text('① 生まれたばかりで明日があり、前向きでやや強い。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運と人の一生.jpg'),
            ),
            const ListTile(
              title: Text('② 新しいことを好む、新しいことをよく知っている。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の強弱.jpg'),
            ),
            const ListTile(
              title: Text('③ 改革のエネルギーを持つ。（ただし、伝統を軽んじると人から嫌われる。）'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四旺.jpg'),
            ),
            const ListTile(
              title: Text('④ 変化を求める。（同じことをしているのが嫌いなタイプ。）'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四衰.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　常に希望と夢をもって何事も発展的に考えます。礼儀正しく、用意周到ですが、気持ちが高ぶるほど行動がついていかない傾向があります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四旺と四衰.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　一方で用心深く、自分の身を守りながら、新しいものに目を向けていく着々と準備を進める人で、お金の使い方にも無駄がありません。'),
            ),
            const ListTile(
              title: Text('　悪い面が出れば現状に不平不満を持ちやすく、社会に対しいつも恨みをもって見る傾向があります。'),
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
