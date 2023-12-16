import 'package:flutter/material.dart';

class Bo extends StatelessWidget {
  const Bo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：墓（ぼ）',
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
              title: Image.asset('images/juuniun/12墓.jpg'),
            ),
            const ListTile(
              title: Text('　墓に入った様子を意味します。墓に入って身動きが取れないので、いなおる強さを持っています。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　墓を持った人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 忍耐・我慢・辛抱の星'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② 貯蓄の星。女性は内助の功となる。'),
            ),
            const ListTile(
              title: Text('③ 開きなおりの星（死んでしまった後の開きなおり）受け身で強い星。'),
            ),
            const ListTile(
              title: Text('④ 先祖供養に縁が深い星'),
            ),
            const ListTile(
              title: Text('　また、能力面では、'),
            ),
            const ListTile(
              title: Text(
                  '　社会生活やビジネスにおいて派手さはありませんが、組織の伝統や規律を正しく守り真面目にコツコツとやる能力があります。何をやるにしても、常に用意周到で準備にぬかりがありません。'),
            ),
            const ListTile(
              title: Text(
                  '　新規事業へ積極的に展開するといった分野では、かなり精神的に負担を強いられますが、良き上司や経営者の下でコツコツとやる分には能力をいかんなく発揮します。'),
            ),
            const ListTile(
              title: Text('　お金の使い方も非常に節約家です。'),
            ),
            const ListTile(
              title: Text(
                  '　一方で、過去の因習や規則に縛られて、保守的になりやすく必要なお金までケチる傾向があります。また小さいことにも小うるさいという悪い面もあります。'),
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
