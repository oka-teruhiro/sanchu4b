import 'package:flutter/material.dart';

class Zetu extends StatelessWidget {
  const Zetu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：絶（ぜつ）',
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
              title: Image.asset('images/juuniun/12絶.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　すべてなくなった様子を意味します。始まりの期待感があり、立ち上がりが早い反面、こりないといった性質があります。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　絶を持った人の得量は、'),
            ),
            const ListTile(
              title: Text('① 生まれる直前で、次は何に生まれ変わるか楽しみである。明るく楽しい星。'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② 暗いところにいるので明るいネオン街を好む。都会が好きな星。'),
            ),
            const ListTile(
              title: Text('③ 忘れ物や約束を忘れる星。絶しているので、憎まれない。'),
            ),
            const ListTile(
              title: Text('　また、能力面では、'),
            ),
            const ListTile(
              title: Text(
                  '　よくも悪くも現状の組織や社会に満足せず、今までのやり方や規則にとらわれず、新しいやり方で物事を考えていく能力があります。特に今までの方法や規則が現状にあわない場合や、時代遅れになっている場合は、遠慮なく改革していきますが、それほど力強さはなくどちらかといえば頭脳的なタイプです。'),
            ),
            const ListTile(
              title: Text(
                  '　したがって組織を一新する場合などには、この人が日常考えている意見を取り入れるなどすればますます組織は発展していきますが、矢面に立てると苦痛を感じてしまいます。'),
            ),
            const ListTile(
              title: Text(
                  '　一方で、悪い面が出れば、色々と不安や迷いが多く、方針や言うことが変わりすぎてムラの強い人生を歩む傾向があります。'),
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
