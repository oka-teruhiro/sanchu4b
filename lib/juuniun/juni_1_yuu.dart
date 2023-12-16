import 'package:flutter/material.dart';

class You extends StatelessWidget {
  const You({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：養（よう）',
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
              title: Image.asset('images/juuniun/12養.jpg'),
            ),
            const ListTile(
              title: Text('　栄養を吸収し、成長している様子を意味します。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　養を持つ人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 先祖に養子の運勢あり'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② スカウトされる星'),
            ),
            const ListTile(
              title: Text('③ 女性的で、女性が持つと良い星。優しい星。'),
            ),
            const ListTile(
              title: Text('④ 保守的で温厚、平和を好む星'),
            ),
            const ListTile(
              title: Text('　また能力面は、'),
            ),
            const ListTile(
              title: Text('　とにかく自分のプライドが高く、人よりも自分が勝っていないと気がすみません。'),
            ),
            const ListTile(
              title: Text(
                  '　そのため何事も人よりも一生懸命になって努力します。そして根気よく継続的に努力しますので、だんだんと良い方向へと発展させていく能力があります。'),
            ),
            const ListTile(
              title: Text(
                  '　物事の考え方が計画的で、自分一人だけでやる分には能力を発揮します。しかし営業の最前線などで、多くの部下を持つと、まとめる力と強烈な実行力が不足しているので、苦労します。'),
            ),
            const ListTile(
              title: Text('　悪い面が出れば、気力がなくなり時流から取り残され、ダラダラと人生を過ごしてしまいます。'),
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
