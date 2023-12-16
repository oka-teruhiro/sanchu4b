import 'package:flutter/material.dart';

class Update1 extends StatelessWidget {
  const Update1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第1版（2021.2.22）',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            title: Text('■概要'),
          ),
          const ListTile(
            title: Text(
              '　生年月日を入力して日干からおおよその性格を表示する',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('■四柱推命の観点から'),
          ),
          const ListTile(
            title: Text(
              '①　三柱推命',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　一般の四柱推命では、生年月日時　（年柱・月柱・日柱・時柱）から鑑定します。'
              'しかし、一般生活で生まれた時刻を使うことはないため、多くの人は忘れてしまいます。'
              '本アプリは、時柱を使わず、年・月・日を入力して、鑑定します。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('②　日干の算出'),
          ),
          const ListTile(
            title: Text(
              '　1900.1.1の日干は、「甲」です。'
              '甲・乙・丙・丁・戊・己・庚・辛・壬・癸の10干において、10日で一巡します。'
              '甲：0、乙：1、・・・壬：8、癸：9　と当てはめると、'
              '1900.1.1から生年月日までの日数を、10で割った余りの数字が、'
              '10干を表す数字になります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('■プログラムの観点から'),
          ),
          const ListTile(
            title: Text(
              '　今回のバージョンで、習得した内容は下記のとおりです。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('①　Flutter開発環境構築'),
          ),
          const ListTile(
            title: Text('②　画面に文字や写真を配置する方法'),
          ),
          const ListTile(
            title: Text('③　ボタンを押したら画面遷移する方法'),
          ),
          const ListTile(
            title: Text('④　生年月日を入力する方法'),
          ),
          const ListTile(
            title: Text('⑤　ある期間の日数を算出する方法'),
          ),
          const ListTile(
            title: Text('⑥　10で割った余りを算出する方法'),
          ),
          const ListTile(
            title: Text('⑦　バナー広告を配置する方法'),
          ),
          const ListTile(
            title: Text('⑧  GooglePlayにリリースする方法'),
          ),
          const ListTile(
            title: Text(''),
          ),
          ElevatedButton(
            child: const Text('戻る'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const ListTile(
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
