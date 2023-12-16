import 'package:flutter/material.dart';

class Update2 extends StatefulWidget {
  const Update2({super.key});

  @override
  State<Update2> createState() => _Update2State();
}

class _Update2State extends State<Update2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第2版（2021.3.31）',
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
            title: Text('天地徳合/干支併臨の表示'),
          ),
          const ListTile(
            title: Text('■四柱推命の観点から'),
          ),
          const ListTile(
            title: Text(
              '第1版では、年、月、日のうち、日干を算出していました。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('①　日支の算出'),
          ),
          const ListTile(
            title: Text(
              '　1900.1.1の日支は、「戌」です。子・丑・寅・卯・辰・巳・午・'
              '未・申・酉・戌・亥の12支において、支：0、丑：1、・・・戌：10、亥：11　'
              'と当てはめると、1900.1.1から生年月日までの日数に10を加えて、'
              '12で割った余りの数字が、12支を表す数字になります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('②　日柱の60干支の算出'),
          ),
          const ListTile(
            title: Text(
              '　日干の一文字と日支の一文字をつなぐと日柱の60干支になります。'
              '60干支は「甲子・乙丑・丙寅・・・辛酉・壬戌・癸亥」60において、'
              '甲子：0、乙丑：1、・・・癸亥：59まで60日で繰り返されます。'
              '例えば、1900.1.1の日柱の60干支は「甲戌」、1900.1.2は「乙亥」、・・・、'
              '2021.3.29は、「丙子」になります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('③　年の60干支'),
          ),
          const ListTile(
            title: Text(
              '　60日で60干支が繰り返されるように、60ヶ月で60干支が繰り返され、'
              '60年で60干支が繰り返されます。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　ところで四柱推命おいて、'
              '年の始まりは「立春」（年の節入り日時を含む日）であるので、'
              '立春をもって、60干支が変わります。'
              '例えば、1924年の年の節入り日時は、2月5日10:50、'
              '1925年の節入り日時は、2月4日16:37なので、'
              '1924年2月5日10:50から1925年2月4日16:36までが「甲子」になります。'
              '1924年1月1日00:00から1924年2月5日10:49までは、1924年であっても、'
              'その前の「癸亥」になります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('　正確には上記のとおりですが、本アプリでは、'
                'おおむね立春が2月4日として計算してあります。'),
          ),
          const ListTile(
            title: Text(
              '　1924年の立春以降の一年は、「甲子」、'
              '1925年（の立春以降の一年）は「乙丑」、1926年は「丙寅」、・・・、'
              '2021年は「辛丑」となります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('④　干支併臨'),
          ),
          const ListTile(
            title: Text(
              '　したがって、日柱の60干支に対応する年が60年に一度存在します。'
              'この年を日柱の干支併臨と呼び、天の上昇気流が吹く年と言われています。'
              '同じように、月柱の60干支と同じ60干支が表れる年を、月柱の干支併臨と呼び、'
              '同様に年柱の60干支と同じ60干支が表れる年を年柱の干支併臨と呼びます。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　当たり前のことですが、'
              '年の干支併臨は生まれた年の年と一巡する60年後（還暦）60歳の時となります。'
              'この世に誕生したことが、天運そのものということになります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　月柱の60干支を算出するには、'
              '月の節入り日時を記載した万年歴が必要になります。'
              '本バージョンでは、月の節入り日時データを持たない（所得しない）ため、'
              '月柱の干支併臨は算出できません。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('⑤　天地徳合'),
          ),
          const ListTile(
            title: Text(
              '　天地徳合は、日柱の日干と日支から算出します。'
              '干合、支合の関係にある60干支になります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '干合とは、甲⇔己、丙⇔辛、戊⇔癸、庚⇔乙、壬⇔丁の組み合わせ、'
              '支合とは、子⇔丑、寅⇔亥、卯⇔戌、辰⇔酉、巳⇔申、午⇔未の組み合わせです。'
              '例えば、60干支が「壬寅」ならば、「丁亥」が天地徳合になります。'
              '干支併臨と同様に、60干支に対応する年が、天地徳合の年となります。',
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
              '　今回のバージョンアップで、習得した内容は下記のとおりです。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('①　名前付きルートを使ったナビゲーション方法'),
          ),
          const ListTile(
            title: Text('②　同じ種類の画面をディレクトリでまとめる方法'),
          ),
          const ListTile(
            title: Text('③　関数を定義して使う方法'),
          ),
          const ListTile(
            title: Text('④　配列を作成する方法'),
          ),
          const ListTile(
            title: Text('⑤  配列の中から検索する方法'),
          ),
          const ListTile(
            title: Text('⑥　配列をソートする方法'),
          ),
          const ListTile(
            title: Text('⑦　文字データと数字データ、DateTimeデータの型変換方法'),
          ),
          const ListTile(
            title: Text('⑧　Widget　追加削除変更方法'),
          ),
          const ListTile(
            title: Text('⑨　リネーム　方法'),
          ),
          const ListTile(
            title: Text('■今後の課題'),
          ),
          const ListTile(
            title: Text('①　今日あるいは今週の運勢を表示する。（一般ユーザーのため）'),
          ),
          const ListTile(
            title: Text('②　簡単な相性診断ができるようにする。（一般ユーザーのため）'),
          ),
          const ListTile(
            title: Text('③　生年月日の入力しやすくする。（一般ユーザーのため）'),
          ),
          const ListTile(
            title: Text('④　iPhone AppleStore でリリースする。（一般ユーザーのため）'),
          ),
          const ListTile(
            title: Text('⑤　節入り日時データを取り込み、月柱を算出する。（鑑定士のツールとして）'),
          ),
          const ListTile(
            title: Text('⑥　12運・蔵干・通変星・空亡等、命式を完成させる。（鑑定士のツールとして）'),
          ),
          const ListTile(
            title: Text('⑦　データベースへのアクセス方法（プログラミングのスキルアップのため）'),
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
