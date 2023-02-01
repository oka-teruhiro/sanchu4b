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
              title: Text('　十二運のの出し方は、十二運表を用います。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の出し方.jpg'),
            ),
            const ListTile(
              title: Text('　宇多田ヒカルさんを例にとると、命式は次のようになります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/宇多田ヒカル.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　日干が　丁　で、日の柱が　未　なので、十二運表で、　丁　の行を横に、　未　の列を縦に見て交わるところ　冠　を得ます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/宇多田ヒカル十二運.jpg'),
            ),
            const ListTile(
              title: Text('　同様に月の柱の十二運は、日干が　丁　で、月の柱が　丑　なので、　墓　を得ます。'),
            ),
            const ListTile(
              title: Text('　同様に年の柱の十二運は、日干が　丁　で、年の柱が　戌　なので、　養　を得ます。'),
            ),
            const ListTile(
              title: Text(
                  '　ところで、この流派では、『冠帯』のことを『冠』と表現します。理由は、漢字2文字にするとカルテが複雑になること、またコンピュータの処理上漢字2文字と1文字が混在すると処理が複雑になるためです。表で『冠』と表示されたら、『冠帯』と読み替えてください。'),
            ),
            const ListTile(
              title: Text('　同様に「長生」を「長」、「沐浴」を「沐」、「建禄」を「建」、「帝旺」を「帝」と表現します。'),
            ),
            const ListTile(
              title: Text('　十二運の種類と呼び方は次の通りです'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の読み.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　12個あります。いったい何を言っているかというと、人の一生を表しています。これが元になって、よくある動物占い（子供達がよく「たぬきだ」とか「ペガサスだ」と言っているあの「動物占い」）になっています。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運と一生1.jpg'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運と一生2.jpg'),
            ),
            const ListTile(
              title: Text('　人生というのは、まずお母さんのお腹の中で、受胎します。図では一番下に「胎」がきます。'),
            ),
            const ListTile(
              title: Text('　次にお母さんのお腹の中で養分をもらって大きくなっていきます。その状態を「養」と言います。'),
            ),
            const ListTile(
              title: Text('　さらにお母さんのお腹の中で一番大きく成長した状態。これを「長生」と言います。'),
            ),
            const ListTile(
              title: Text('　そしていよいよ出産を迎えます。出産すると生湯につかるので、「沐浴」と言います。'),
            ),
            const ListTile(
              title: Text(
                  '　そして、さらに成長して、成人式を迎えます。成人式で冠（かんむり）を帯びるので。この状態を「冠帯」と言います。'),
            ),
            const ListTile(
              title: Text(
                  '　そして、会社に入り、社会人になって、給料をもらうようになる。禄（ろく）を立てる。働き盛りの状態、これを「建禄」と言います。'),
            ),
            const ListTile(
              title: Text('　そして一生懸命働いて、人生のピークを迎える。「帝旺」です。会社でいうならば、会長です。'),
            ),
            const ListTile(
              title: Text('　そして、人は必ず衰えます。還暦を迎え、病気になり、死にます。'),
            ),
            const ListTile(
              title: Text('　死んだあとは、墓に入り固定されます。そして絶する。絶したあとは、再び受胎し新たな人生が始まる。'),
            ),
            const ListTile(
              title: Text(
                  '　「胎」から「長」までが、胎中生活。「沐」から「死」までが地上生活。「墓」から「絶」までが墓中生活、ということができます。'),
            ),
            const ListTile(
              title: Text('　このように人の一生に例えるとどんな時期にあたるのかを十二運は示しています。'),
            ),
            const ListTile(
              title: Text(
                  '　では、次に十二運の強弱を示すと、大きく分けると、四旺（しおう）と四衰（しすい）と四平（しへい）になります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の強弱.jpg'),
            ),
            const ListTile(
              title: Text('　まず第一にみる場所は、日の柱の十二運です。ここが一番その人の特性を示します。'),
            ),
            const ListTile(
              title: Text('　その十二運が四旺だったら、つぎのような特性を持ちます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四旺四衰特徴.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　日の柱に帝旺とか建禄が入ってくると、この特徴が強く出ます。だいたい怒られても、2時間ぐらいで反省が終わっちゃいます。だから上司から見ると「こいつ反省しているのか？」というふうに見られてしまいます。次の日ケロッとしてきます。「なんじゃこいつ」というふうに見られがちです。'),
            ),
            const ListTile(
              title: Text(
                  '　逆に自分は四衰だと言って嘆く必要はありません。良い点は、上記の通り。でも気を付けないと、一週間反省すればいいところを、1ヶ月も2ヶ月も反省し続けるところがあります。そして、なかなか決断できません。やろうとすると、ちょっと待てよあの部分は大丈夫かなといって決断しません。'),
            ),
            const ListTile(
              title: Text('　四旺の中をさらに詳しく見ると、それぞれ様子が違います。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四旺.jpg'),
            ),
            const ListTile(
              title: Text(''),
            ),
            const ListTile(
              title: Text('　'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四衰.jpg'),
            ),
            const ListTile(
              title: Text('　'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四旺と四衰.jpg'),
            ),
            const ListTile(
              title: Text('　'),
            ),
            const ListTile(
              title: Text('　'),
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
