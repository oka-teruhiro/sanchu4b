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
              title: Text('　例えば1983年1月19日生まれの人の命式は次のようになります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/宇多田ヒカル命式.jpg'),
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
              title: Text('　大きく分けると、建禄・帝旺と、冠帯・長生と二つに別れます。'),
            ),
            const ListTile(
              title: Text('　冠帯・長生は「ほどよい山」に登るのに対し、建禄・帝旺は「エベレスト」に登るのに例えることができます。'
                  ''),
            ),
            const ListTile(
              title: Text(
                  '　ほどよい山ということは、谷も浅い、遭難することはあまりなく、セーフという感じです。一方エベレストということは、谷も深く、人生における遭難もありえるということになります。'),
            ),
            const ListTile(
              title: Text(
                  '　同じエベレストでも、建禄は、エベレストを8割9割ほど登ったぐらい、後ろを見ない、もうここまできたら登るっきゃない、という勢いがあります。40代50代油ぎっていて、人を跳ね除けてでも上を目指して進んでいく状態を表します。'),
            ),
            const ListTile(
              title: Text(
                  '　一方、帝旺は、上り詰めて社長も経験しちゃったという感じ。社員ともうまくやって、年金ももらわないといけないし、対立しても仕方がない、建禄はとがっていいるのに対し、帝旺は、角がとれて丸みを帯ています。同じエベレストでも建禄と帝旺は全く違います。'),
            ),
            const ListTile(
              title: Text('　同じように、冠帯と長生は同じ　ほどよい山　でも全く違います。'),
            ),
            const ListTile(
              title: Text(
                  '　長生は、お母さんのお腹の中、まだ地上に生まれていません。一方冠帯は、20代、まだまだ、人生の甘いも辛いも経験不足ではあるものの、成人式を迎え、大人の仲間入りをした立場。新入社員で、わからないことがあっても、先輩から良きアドバイスをもらったり、失敗しても先輩がかばってくれたりと、なにかとラッキーな星です。'),
            ),
            const ListTile(
              title: Text(
                  '　一方、長生は、お母さんのお腹の中、守られた環境のなか、大きく成長した段階、時々お母さんを蹴飛ばしますが、蹴飛ばされたにもかかわらず、お母さんは、「あっ、今蹴った！」と喜んでしまうように、多少乱暴な言動をしたとしても、周りからは許されてしまう、やはりラッキーな星です。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四衰.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　「衰」は、分類上「四衰」になりますが、実践鑑定すると10人に3人は、強い人がいます。それは、人生の頂点である「帝旺」を越えたばかりで、余力が残っている状態、強からすぐには弱にならないからです。確かに「衰」のような人もいますが「帝旺」のような人もいるので、よくさしこんで鑑定する必要があります。'),
            ),
            const ListTile(
              title: Text(
                  '　「絶」も「四衰」と言い難いところがあります。「四衰」というと暗いというイメージがありますが、「絶」はとにかく明るいです。死んで墓に入って全て無くなったという状態です。でも次はどこで生まれようかとそれを考えると楽しい、「今回はあの夫だったけど、次は誰が夫かしら」楽天的で、次の人生を考えるとワクワクするというイメージを持っています。'),
            ),
            const ListTile(
              title: Text(
                  '　「病」と「死」は、正真正銘の「四衰」です・やっぱり病気になってしまうと、いろいろ人生考えさせられることが多くなります。なにかと体が自由に動けないし、その分考えることが多くなるし、考えすぎて取り越し苦労しやすくなります。次のことが気になり、なかなか決定できないところがあります。'),
            ),
            const ListTile(
              title: Text(
                  '　しかし、いいところもあります。ドクターとか、研究するとか、チェックするとか、易者とかには向いています。よくカルテや検査結果を分析し、適切なアドバイスをすることにたけています。'),
            ),
            const ListTile(
              title: Text(
                  '　「墓」は、弱いように見えますが、「墓」は「四衰」には入りません。「墓」は忍耐・我慢・根気の星です。すごく強いです。死んだあとは、「絶」と同じで、怖いものがありません。開き直っていますから。死んじゃってますから。「何でもこい、俺は死んでんだ、何されてもいいんだ」という感じです。'),
            ),
            const ListTile(
              title: Text(''),
            ),
            ListTile(
              title: Image.asset('images/juuniun/四旺と四衰.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　四旺と四衰の違いです。例えば仕事をさせるとその違いが顕著にでます。四旺を持つ人は、とにかく仕事が早いのに対して、四衰の人はなかなか仕事が終わらない、後ろばかり気になるからです。'
                  'いい仕事をするのは、四衰。ゴミが落ちていないか、振り向きながらチェックしているからです、でも、遅い。'
                  ''),
            ),
            const ListTile(
              title: Text(
                  '　町内会の役員選出でも、四旺は大体すぐ引き受けます。おだてに弱いです。四衰は、簡単には引き受けません。必ず交換条件を取ろうとします。「会長を引き受けてもらえませんか。」「ちょっと待ってください。1週間に１回だけなら引き受けますが、それ以上だったらお断りします」といったぐあいです。'
                  ''),
            ),
            ListTile(
              title: Image.asset('images/juuniun/上流下流.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　四旺は、本当にすごいです。下流から上流へ上っていくような、力強さがあります。普通は、上流から下流へと流れに身を任せればいいのに、流れに逆らっていくんですから。だから、身も心もボロボロになりながらそれでも向かっていく、そんな人いませんか。そんな人は、この四旺を持っている人が多いです。'),
            ),
            const ListTile(
              title: Text(
                  '　四衰は、運勢の力がないので、流れるままにいくしかないので。四旺は、人ができないようなことにチャレンジしていきます。エベレストは、普通の人は登りません。それをやっちゃうんだから。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/エレベータ階段.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　また、重い荷物をもって、エレベータの前に立っている場面では、待てばいいじゃないですか、待てないんです、四旺の人は。待つぐらいなら、階段で登って行ってしまいます。一方、四衰の人は、運勢の力なしなので、持てずに荷物をおろし待つしかない。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/大きい石小さい石.jpg'),
            ),
            const ListTile(
              title: Text('　ここで重要なことは、人それぞれに、人間の力量に差があるということを認識することです。'
                  '四衰は、運勢の力なし、四旺は、運勢の力持ち。例えると、四衰が1kgの石を持つのもやっとという力量に対し、四旺は10kgの石を平気でもてる力量、四平はその中間の力量になります。'),
            ),
            const ListTile(
              title: Text(
                  '　ここで、四旺の人が、10kgのうち、2kg手伝ってほしいと四衰の人に背負わせると、大変なことが起こります。四旺の人にとっては、ほんの一部でも、四衰の人にとっては、過剰な荷物を負わされ、つぶれてしまいます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/自分の荷をあげる.jpg'),
            ),
            const ListTile(
              title: Text('　こういうことが、日常よく起こっています。相手の運勢の器、力量をよくみて接する必要があります。'),
            ),
            const ListTile(
              title: Text('　'),
            ),
            const ListTile(
              title: Text('　'),
            ),
            const ListTile(
              title: Text('　'),
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
