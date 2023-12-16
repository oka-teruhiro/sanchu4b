import 'package:flutter/material.dart';

class Si extends StatelessWidget {
  const Si({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：死（し）',
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
              title: Image.asset('images/juuniun/12死.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　「死」という漢字を見て短命なのではないかと心配される方がおられますがそうではありません。「病」が体の病に関するならば、「死」は、お寺の住職のように、心の病に関して対応する職業に向いています。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　死を持った人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 十二運の中で取り越し苦労が最も多い星。（死の直前が人々の中で最も怖いから）'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
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
              title: Text(
                  '　どんな組織や環境にあったとしても、とにかく地道でコツコツやるタイプです。忍耐強く同じことを何度でも根気よくやります。'),
            ),
            const ListTile(
              title: Text(
                  '　したがって派手さはありませんが、安定した仕事であれば、着実にこなす能力があります。ある決まったルーチン的なやり方の職場であれば、堅実にこなすので最適ですが、新しい発想やアイディアを要求される分野では、才能が発揮されません。'),
            ),
            const ListTile(
              title: Text('　一方で頑固で融通がきかず、片寄ったものの見方をしやすく、要領が悪い傾向があります。'),
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
