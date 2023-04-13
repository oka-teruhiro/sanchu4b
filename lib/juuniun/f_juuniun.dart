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
              textColor: Colors.pink,
              title: Text(
                  '　本内容は、自分でも鑑定してみたいという人向けの内容です。理解を深めていただくために、表現が、少し上から目線なところがあります。また、今の時代に合っていないところがあります。ご了承ください。'),
            ),
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
            ListTile(
              title: Image.asset('images/juuniun/12運_四旺四衰バランス.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　できれば強いのと弱いのが両方入っている方がいいです。強いのばかりでは、とめどなく走って行ってしまうし、弱いのばかりでは、悩んでばかりいて前へ進まないという状況になります。もしも、偏っているならば、努力して立命する必要が出てきます。'),
            ),
            const ListTile(
              title: Text(
                  '　強い運勢を自分のために使えば凶になり、運勢の弱い人のために使えば吉となります。弱い運勢の人は、自分だけで悩めば凶になり、他の困っている人のために寄り添ってあげれば吉になります。'),
            ),
            const ListTile(
              title: Text('　自分のカルテをよく知って、そして好きになって、バランスを取るように努力することが大切になります。'),
            ),
            const ListTile(
              title: Text(
                  '　子供の教育も同じことがいえます。子供のカルテも一人一人違います。強い運勢を持っている子もいれば、弱い運勢を持っている子もいます。「お兄ちゃんのようにどうしてできないの」などと言って、弟は家を出たり引きこもったりといったようなことが起こります。十二運をとおして、それぞれの器が見えて来るので、それぞれに合った対応をしてあげる必要があります。'),
            ),
            const ListTile(
              title: Text('　ここまでは総論、概要になりますが、続いて各論にはいります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_各論.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　十二運というのは、日の柱が一番重要です。日干は、己（おの）が心。日支は、己が体。その己が心と己が体の関係から、十二運である、己が運勢を知ることができます。'),
            ),
            const ListTile(
              title:
                  Text('　したがって、日の柱の十二運をまずみる必要があります。下の図の例では、冠帯　の運勢を持っているとみます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_月柱の影響.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　そして次にみるのは、月の柱の十二運、上の図の例では、墓　です。この影響が出てきます。そして次に年の柱、上の図では、養　です。多少その運勢が出てきます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_胎.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　受胎ですから、いわゆる無から有を生じた訳だから、絶して無くなったところから新たに生じて出発した。だから前を向いている訳です。前向きで強いです。ある意味生意気っぽい人が多いです。'
                  ''),
            ),
            const ListTile(
              title: Text(
                  '　無から有を生じた訳ですから、非常に新しい物好きです。また新しいことをよく知っています。政治家ならば、保守派ではなく改革派、野党だったら、この胎を持っていたらいいと言われます。規制をぶち壊すのが好きです。なので気をつけないといけないことは、伝統を重んじるタイプの人から嫌われてしまうことが度々起こります。よく根回ししていかないとまわりから嫌われて孤立してしまうことがあります。'),
            ),
            const ListTile(
              title: Text(
                  '　例えば、お父さんと一緒に事業をしてきて、お父さんが退き社長になり、そのとたん改革する。でも、周りには叩き上げの人たち、お父さんと一緒に頑張ってきた古い人たちから反発される。こんなことがよく起こります。だから、一人一人、よく根回しする必要があります。'
                  ''),
            ),
            const ListTile(
              title: Text('　そして、変化を求める。同じことをしているのが大嫌い。'),
            ),
            const ListTile(
              title: Text(
                  '　なので、日の柱に　胎　がはいっている人を見たら、この人改革派だな、でも根回しちゃんとしているかな、人から嫌われていないかな、よく確認して、そうならば、アドバイスしてあげる必要があります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_養.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　お母さんとへその緒で繋がり、そこから養分をいっぱいいただく。日の柱に　養　がはいったら、大体、養子が多いです。養子、養女の運勢を持っています。別の家へ行ってそこから養分をいただく。月の柱や年の柱にはいっても同じです。だから、自分の子供に養が出たら、養子に出るのかということが考えられます。で、養子に出ると、成功します。人からスカウトされます。'),
            ),
            const ListTile(
              title: Text('　スカウトされ、そこから養分をもらえる星です。'),
            ),
            const ListTile(
              title: Text(
                  '　そして　養　を持つと女性的です。女性はお嫁に行く、養子と同じです。養子に行っていっぱい養分をいただく。養　を持つととてもありがたい、夫の家からいただくという感じです。'),
            ),
            const ListTile(
              title: Text('　そして優しい、平和的な星です。争いが嫌い。保守的で温厚。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_長.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　長生も平和主義者です。ありがたい星、これが命式に入っていたら、お墓参りにでも行って、先祖に感謝してください。とってもいい星、寝たい時に寝、起きたい時に起き、何の苦しみも、暑さ寒さも関係のないというんですから、最高じゃないですか、だってお母さんのお腹の中にいるわけですから。で、時には気に入らなくて蹴飛ばす、お母さんを蹴飛ばして、お母さんは痛い思いしているのに、周りからは、「あーけった！」と祝福されてしまうわけですから。'),
            ),
            const ListTile(
              title: Text('　そして、母胎から栄養をもらう。戦争に行っても、無事に戻ってきたというひとも多いですね。'),
            ),
            const ListTile(
              title: Text('　トラブルの時に争うのが嫌いです。だから、こういう人が入ると和解方向へ動いていきます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_沐.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　四平なんですが、四衰に入れたいくらいです。産まれました、とういことは祝福を受けます。しかし、産まれるということは必ずやがて死ぬことを意味します。したがって、喜びと悲しみが表裏一体の星。なんせ複雑なんです。楽しいんだけれど悲しい。'),
            ),
            const ListTile(
              title: Text(
                  '　二面性があるので、契約してもキャンセルする。流れやすい。迷いやすい。決断ができない。決めるのに時間がかかる。ある意味では、産まれたばかりですから、仕方がない。経験もないので。'),
            ),
            const ListTile(
              title: Text(
                  '　テストしても、読みが深いです。先の先を読んで二案三案と出る、でも最後になると、あれ、これ違うんじゃやないかなと言って、書き直して失敗してしまう。'),
            ),
            const ListTile(
              title: Text('　そして、色恋の星。異性を惹き付ける匂いを放つところがあります。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_冠.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　これもまた、ありがたい星です。冠帯は長生と似ていて、低い山、谷底も深くない。男性が持っても女性が持っても非常にラッキーな星です。持っていいたら、何よりもまず先祖供養をしていただきたいです。先祖に徳を積んだ方がいます。戦争に行っても無事に帰ってくる人が多い。'),
            ),
            const ListTile(
              title: Text(
                  '　なにしろ世話好き、おせっかいというか。具合が悪い人がいると、病院に連れて行くだけにとどまらず、診察が終わるまで一緒に付き添ってあげちゃうような感じです。人の世話ばかりして忙しくしているタイプです。'),
            ),
            const ListTile(
              title: Text(
                  '　だから、徳が高いんでしょうね。本人が困った時には、援助者が現れます。スポンサーが現れ、社会の上流階級からひきたてられるところがあります。'),
            ),
            const ListTile(
              title: Text('　しかし、安心して、先祖の穀潰しにならないように気をつけてください。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_建.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　建禄はもうすごいんです。尖っている感じ。胎　と同じように、無から有を生じる勢いがあります。なにしろ、下流から上流へ登って行くんですから。待ってられない重い荷物を持って階段を上がって行く、スピーディーです。'),
            ),
            const ListTile(
              title: Text(
                  '　非常に開拓的な人です。物を立ち上げる運勢の人。お父さんから、事業を引き継いでも業種業態を変えてしまう人が多いです。'),
            ),
            const ListTile(
              title: Text('　エベレスト8割登っている状態、休憩なんかしてられない。スピーディーです。'),
            ),
            const ListTile(
              title: Text('　立ちなおりが早い。深い反省ができない。'),
            ),
            const ListTile(
              title: Text(
                  '　責任感が強い。9時と言ったら、10分前にきてチェックして、部下が遅くきたら許さないです。遅れそうだったら、タクシーに乗ってでもくる。体を張って生きているといった感じです。だから実績も出します。敵にしたら大変です。黙っては倒れない。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_帝.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　満月、人生のピークにきたという感じです。建禄は社長タイプ、現場に責任をもっていますが、帝旺は会長タイプということで、丸みを帯ます。社長も経験してきていて、器もあります。建禄はぶつかっていきますが、帝旺はぶつかりません、うまくまとめていきます。'),
            ),
            const ListTile(
              title: Text('　現役とは違う、昼出勤、相談役みたいな感じです。'),
            ),
            const ListTile(
              title: Text(
                  '　年金生活に入る一歩手前ということで、常に年金のこと考えています。今後の老後どうしようかななんて、社員とバトルと年金減っちゃうかなとか、人間関係も気をつけないといけないなとか、体もだんだん弱くなってきそうだしとか、できるだけ人とはバトラないで年金だけは確保できるようにしようとか、こんな感じです。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_衰.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　四衰ですが、帝旺の余力が入っていますから、時折強い人がいます、10人に1人ぐらい。気をつけて読む必要があります。'),
            ),
            const ListTile(
              title: Text(
                  '　女性的な星、非常に平和主義です。長生とか養とかと同じように、争いは嫌いです、できるだけ平和がいいというタイプです。結局、養とか長生は、養分をもらって生きるので喧嘩できない、衰も同じように人生のピークを終えてしまった、部下からの年金という養分をもらって生きるわけですから。'),
            ),
            const ListTile(
              title: Text(
                  '　したがって、闘わない。協調性を好むということになります。こういう人は調停役に向いています。もめ事など、一見弱そうに見え大丈夫かなと思われますが、やらしてみるとうまく調停していい仕事をしてくるのが、このタイプです。逆に四旺の人を派遣すると、相手をボコボコにして、かえって大変になってしまいます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/12運_病.jpg'),
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
            ListTile(
              title: Image.asset('images/juuniun/12運_死.jpg'),
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
            ListTile(
              title: Image.asset('images/juuniun/12運_墓.jpg'),
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
            ListTile(
              title: Image.asset('images/juuniun/12運_絶.jpg'),
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
