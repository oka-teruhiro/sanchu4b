import 'package:flutter/material.dart';

class JuniJuuniun extends StatelessWidget {
  const JuniJuuniun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg', //1
      'images/0.jpg', //2
      'images/juuniun/十二運の出し方.jpg', //3
      'images/juuniun/宇多田ヒカル命式.jpg', //4
      'images/juuniun/宇多田ヒカル十二運.jpg', //5
      'images/0.jpg', //6
      'images/0.jpg', //7
      'images/0.jpg', //8
      'images/0.jpg', //9
      'images/juuniun/十二運の読み.jpg', //10
      'images/juuniun/十二運と一生1.jpg', //11
      'images/juuniun/十二運と一生2.jpg', //12
      'images/0.jpg', //13
      'images/0.jpg', //14
      'images/0.jpg', //15
      'images/0.jpg', //16
      'images/0.jpg', //17
      'images/0.jpg', //18
      'images/0.jpg', //19
      'images/0.jpg', //20
      'images/juuniun/12運と地上生活.jpg', //21
      'images/0.jpg', //22
      'images/0.jpg', //23
      'images/0.jpg', //24
      'images/juuniun/十二運の強弱.jpg', //25
      'images/0.jpg', //26
      'images/juuniun/四旺四衰特徴.jpg', //27
      'images/0.jpg', //28
      'images/0.jpg', //29
      'images/juuniun/四旺.jpg', //30
      'images/0.jpg', //31
      'images/0.jpg', //32
      'images/0.jpg', //33
      'images/0.jpg', //34
      'images/0.jpg', //35
      'images/0.jpg', //36
      'images/0.jpg', //37
      'images/juuniun/四衰.jpg', //38
      'images/0.jpg', //39
      'images/0.jpg', //40
      'images/0.jpg', //41
      'images/0.jpg', //42
      'images/0.jpg', //43
      'images/juuniun/四旺と四衰.jpg', //44
      'images/0.jpg', //45
      'images/juuniun/上流下流.jpg', //46
      'images/0.jpg', //47
      'images/juuniun/エレベータ階段.jpg', //48
      'images/juuniun/大きい石小さい石.jpg', //49
      'images/0.jpg', //50
      'images/juuniun/自分の荷をあげる.jpg', //51
      'images/juuniun/12運_四旺四衰バランス.jpg', //52
      'images/0.jpg', //53
      'images/0.jpg', //54
      'images/0.jpg', //55
      'images/0.jpg', //56
      'images/juuniun/12運_各論.jpg', //57
      'images/0.jpg', //58
      'images/juuniun/12運_月柱の影響.jpg', //59
      'images/juuniun/12運_胎.jpg', //60
      'images/juuniun/12胎.jpg', //61
      'images/0.jpg', //62
      'images/0.jpg', //63
      'images/0.jpg', //64
      'images/0.jpg', //65
      'images/juuniun/12運_養.jpg', //66
      'images/juuniun/12養.jpg', //67
      'images/0.jpg', //68
      'images/0.jpg', //69
      'images/0.jpg', //70
      'images/juuniun/12運_長.jpg', //71
      'images/juuniun/12長.jpg', //72
      'images/0.jpg', //73
      'images/0.jpg', //74
      'images/juuniun/12運_沐.jpg', //75
      'images/juuniun/12沐.jpg', //76
      'images/0.jpg', //77
      'images/0.jpg', //78
      'images/0.jpg', //79
      'images/juuniun/12運_冠.jpg', //80
      'images/juuniun/12冠.jpg', //81
      'images/0.jpg', //82
      'images/0.jpg', //83
      'images/0.jpg', //84
      'images/0.jpg', //85
      'images/0.jpg', //86
      'images/0.jpg', //87
      'images/0.jpg', //88
      'images/0.jpg', //89
    ];
    List<double> takasaZu = [
      0, //1
      0, //2
      310, //3
      300, //4
      290, //5
      0, //6
      0, //7
      0, //8
      0, //9
      370, //10
      280, //11
      260, //12
      0, //13
      0, //14
      0, //15
      0, //16
      0, //17
      0, //18
      0, //19
      0, //20
      350, //21
      0, //22
      0, //23
      0, //24
      360, //25
      0, //26
      300, //27
      0, //28
      0, //29
      380, //30
      0, //31
      0, //32
      0, //33
      0, //34
      0, //35
      0, //36
      0, //37
      280, //38
      0, //39
      0, //40
      0, //41
      0, //42
      0, //43
      270, //44
      0, //45
      370, //46
      0, //47
      330, //48
      210, //49
      0, //50
      250, //51
      340, //52
      0, //53
      0, //54
      0, //55
      0, //56
      90, //57
      0, //58
      280, //59
      300, //60
      370, //61
      0, //62
      0, //63
      0, //64
      0, //65
      280, //66
      360, //67
      0, //68
      0, //69
      0, //70
      330, //71
      360, //72
      0, //73
      0, //74
      280, //75
      350, //76
      0, //77
      0, //78
      0, //79
      330, //80
      340, //81
      0, //82
      0, //83
    ];
    List<String> moji = [
      '　本内容は、自分でも鑑定してみたいという人向けの内容です。理解を深めてい'
          'ただくために、表現が、少し上から目線なところがあります。また、今の時'
          '代に合っていないところがあります。ご了承ください。', //1
      '　十二運のの出し方は、十二運表を用います。', //2
      '　例えば1983年1月19日生まれの人の命式は次のようになります。', //3
      '　日干が　丁　で、日の柱が　未　なので、十二運表で、　丁　の行を横に、　'
          '未　の列を縦に見て交わるところ　冠　を得ます。', //4
      '　同様に月の柱の十二運は、日干が　丁　で、月の柱が　丑　なので、'
          '　墓　を得ます。', //5
      '　同様に年の柱の十二運は、日干が　丁　で、年の柱が　戌　なので、'
          '　養　を得ます。', //6
      '　ところで、この流派では、『冠帯』のことを『冠』と表現します。理由は、漢'
          '字2文字にするとカルテが複雑になること、またコンピュータの処理上漢字2'
          '文字と1文字が混在すると処理が複雑になるためです。表で『冠』と表示さ'
          'れたら、『冠帯』と読み替えてください。', //7
      '　同様に「長生」を「長」、「沐浴」を「沐」、「建禄」を「建」、'
          '「帝旺」を「帝」と表現します。', //8
      '　十二運の種類と呼び方は次の通りです', //9
      '　12個あります。いったい何を言っているかというと、人の一生を表しています。'
          'これが元になって、よくある動物占い（子供達がよく「たぬきだ」とか「ペ'
          'ガサスだ」と言っているあの「動物占い」）になっています。', //10
      '', //11
      '　人生というのは、まずお母さんのお腹の中で、受胎します。図では'
          '一番下に「胎（たい）」がきます。', //12
      '　次にお母さんのお腹の中で養分をもらって大きくなっていきます。'
          'その状態を「養（よう）」と言います。', //13
      '　さらにお母さんのお腹の中で一番大きく成長した状態。これを「長生'
          '（ちょうせい）」と言います。', //14
      '　そしていよいよ出産を迎えます。出産すると生湯（うぶゆ）につかるの'
          'で、「沐浴（もくよく）」と言います。', //15
      '　そして、さらに成長して、成人式を迎えます。成人式で冠（かんむり）を帯び'
          'るので。この状態を「冠帯（かんたい）」と言います。', //16
      '　そして、会社に入り、社会人になって、給料をもらうようになる。禄（ろく）'
          'を立てる。働き盛りの状態、これを「建禄（けんろく）」と言います。', //17
      '　そして一生懸命働いて、人生のピークを迎える。「帝旺（ていおう）'
          '」です。会社でいうならば、会長です。', //18
      '　そして、人は必ず衰えます。これを「衰（すい）」と言います。そして還暦を'
          '迎え、病気になり、死にます。それぞれ「病（びょう）」「死（し）」と言'
          'います。', //19
      '　死んだあとは、墓に入り固定されます。これを「墓（ぼ）」と言います。そし'
          'て絶する。これを「絶（ぜつ）」と言います。絶したあとは、再び受胎し新'
          'たな人生が始まる。', //20
      '　「胎」から「長」までが、胎中生活。「沐」から「死」までが地上生活。'
          '「墓」から「絶」までが墓中生活、ということができます。', //21
      '　このように人の一生に例えるとどんな時期にあたるのかを十二運は'
          '示しています。', //22
      '', //23
      '　では、次に十二運の強弱を示すと、大きく分けると、四旺（しおう）と四衰'
          '（しすい）と四平（しへい）になります。', //24
      '　まず第一にみる場所は、日の柱の十二運です。ここが一番その人の'
          '特性を示します。', //25
      '　その十二運が四旺だったら、つぎのような特性を持ちます。', //26
      '　日の柱に帝旺とか建禄が入ってくると、この特徴が強く出ます。だいたい怒ら'
          'れても、2時間ぐらいで反省が終わっちゃいます。だから上司から見ると'
          '「こいつ反省しているのか？」というふうに見られてしまいます。次の日ケ'
          'ロッとしてきます。「なんじゃこいつ」というふうに見られがちです。', //27
      '　逆に自分は四衰だと言って嘆く必要はありません。良い点は、上記の通り。で'
          'も気を付けないと、一週間反省すればいいところを、1ヶ月も2ヶ月も反省'
          'し続けるところがあります。そして、なかなか決断できません。やろうとす'
          'ると、ちょっと待てよあの部分は大丈夫かなといって決断しません。', //28
      '　四旺の中をさらに詳しく見ると、それぞれ様子が違います。', //29
      '　大きく分けると、建禄・帝旺と、冠帯・長生と二つに別れます。', //30
      '　冠帯・長生は「ほどよい山」に登るのに対し、建禄・帝旺は「エベ'
          'レスト」に登るのに例えることができます。', //31
      '　ほどよい山ということは、谷も浅い、遭難することはあまりなく、セーフとい'
          'う感じです。一方エベレストということは、谷も深く、人生における遭難も'
          'ありえるということになります。', //32
      '　同じエベレストでも、建禄は、エベレストを8割9割ほど登ったぐらい、後ろを'
          '見ない、もうここまできたら登るっきゃない、という勢いがあります。40代'
          '50代油ぎっていて、人を跳ね除けてでも上を目指して進んでいく状態を表し'
          'ます。', //33
      '　一方、帝旺は、上り詰めて社長も経験しちゃったという感じ。社員ともうまく'
          'やって、年金ももらわないといけないし、対立しても仕方がない、建禄はと'
          'がっていいるのに対し、帝旺は、角がとれて丸みを帯ています。同じエベレ'
          'ストでも建禄と帝旺は全く違います。', //34
      '　同じように、冠帯と長生は同じ　ほどよい山　でも全く違います。', //35
      '　長生は、お母さんのお腹の中、まだ地上に生まれていません。一方冠帯は、'
          '20代、まだまだ、人生の甘いも辛いも経験不足ではあるものの、成人式を'
          '迎え、大人の仲間入りをした立場。新入社員で、わからないことがあっても、'
          '先輩から良きアドバイスをもらったり、失敗しても先輩がかばってくれたり'
          'と、なにかとラッキーな星です。', //36
      '　一方、長生は、お母さんのお腹の中、守られた環境のなか、大きく成長した段'
          '階、時々お母さんを蹴飛ばしますが、蹴飛ばされたにもかかわらず、お母さ'
          'んは、「あっ、今蹴った！」と喜んでしまうように、多少乱暴な言動をした'
          'としても、周りからは許されてしまう、やはりラッキーな星です。', //37
      '　「衰」は、分類上「四衰」になりますが、実践鑑定すると10人に3人は、強い'
          '人がいます。それは、人生の頂点である「帝旺」を越えたばかりで、余力が'
          '残っている状態、強からすぐには弱にならないからです。確かに「衰」のよ'
          'うな人もいますが「帝旺」のような人もいるので、よくさしこんで鑑定する'
          '必要があります。', //38
      '　「絶」も「四衰」と言い難いところがあります。「四衰」というと暗いという'
          'イメージがありますが、「絶」はとにかく明るいです。死んで墓に入って全'
          'て無くなったという状態です。でも次はどこで生まれようかとそれを考える'
          'と楽しい、「今回はあの夫だったけど、次は誰が夫かしら」楽天的で、次の'
          '人生を考えるとワクワクするというイメージを持っています。', //39
      '　「病」と「死」は、正真正銘の「四衰」です・やっぱり病気になってしまうと、'
          'いろいろ人生考えさせられることが多くなります。なにかと体が自由に動け'
          'ないし、その分考えることが多くなるし、考えすぎて取り越し苦労しやすく'
          'なります。次のことが気になり、なかなか決定できないところがあります。', //40
      '　しかし、いいところもあります。ドクターとか、研究するとか、チェックする'
          'とか、易者とかには向いています。よくカルテや検査結果を分析し、適切な'
          'アドバイスをすることにたけています。', //41
      '　「墓」は、弱いように見えますが、「墓」は「四衰」には入りません。「墓」'
          'は忍耐・我慢・根気の星です。すごく強いです。死んだあとは、「絶」と同'
          'じで、怖いものがありません。開き直っていますから。死んじゃってますか'
          'ら。「何でもこい、俺は死んでんだ、何されてもいいんだ」という感じで'
          'す。', //42
      '', //43
      '　四旺と四衰の違いです。例えば仕事をさせるとその違いが顕著にでます。四旺'
          'を持つ人は、とにかく仕事が早いのに対して、四衰の人はなかなか仕事が終'
          'わらない、後ろばかり気になるからです。'
          'いい仕事をするのは、四衰。ゴミが落ちていないか、振り向きながらチェックし'
          'ているからです、でも、遅い。', //44
      '　町内会の役員選出でも、四旺は大体すぐ引き受けます。おだてに弱いです。四'
          '衰は、簡単には引き受けません。必ず交換条件を取ろうとします。「会長を'
          '引き受けてもらえませんか。」「ちょっと待ってください。1週間に１回だ'
          'けなら引き受けますが、それ以上だったらお断りします」といったぐあい'
          'です。', //45
      '　四旺は、本当にすごいです。下流から上流へ上っていくような、力強さがあり'
          'ます。普通は、上流から下流へと流れに身を任せればいいのに、流れに逆'
          'らっていくんですから。だから、身も心もボロボロになりながらそれでも'
          '向かっていく、そんな人いませんか。そんな人は、この四旺を持っている'
          '人が多いです。', //46
      '　四衰は、運勢の力がないので、流れるままにいくしかないですが、四旺は、人'
          'ができないようなことにチャレンジしていきます。エベレストは、普通の人'
          'は登りません。それをやっちゃうんだからすごい。', //47
      '　また、重い荷物をもって、エレベータの前に立っている場面では、待てばいい'
          'じゃないですか、待てないんです、四旺の人は。待つぐらいなら、階段で'
          '登って行ってしまいます。一方、四衰の人は、運勢の力なしなので、荷物'
          'をおろし待つしかない。', //48
      '　ここで重要なことは、人それぞれに、人間の力量に差があるという'
          'ことを認識することです。'
          '四衰は、運勢の力なし、四旺は、運勢の力持ち。例えると、四衰が1kgの石を持'
          'つのもやっとという力量に対し、四旺は10kgの石を平気でもてる力量、四平は'
          'その中間の力量になります。', //49
      '　ここで、四旺の人が、10kgのうち、2kg手伝ってほしいと四衰の人に背負わせ'
          'ると、大変なことが起こります。四旺の人にとっては、ほんの一部でも、'
          '四衰の人にとっては、過剰な荷物を負わされ、つぶれてしまいます。', //50
      '　こういうことが、日常よく起こっています。相手の運勢の器、力量'
          'をよくみて接する必要があります。', //51
      '　できれば強いのと弱いのが両方入っている方がいいです。強いのばかりでは、'
          'とめどなく走って行ってしまうし、弱いのばかりでは、悩んでばかりいて前'
          'へ進まないという状況になります。もしも、偏っているならば、努力して'
          '立命する必要が出てきます。', //52
      '　強い運勢を自分のために使えば凶になり、運勢の弱い人のために使えば吉とな'
          'ります。弱い運勢の人は、自分だけで悩めば凶になり、他の困っている人の'
          'ために寄り添ってあげれば吉になります。', //53
      '　自分のカルテをよく知って、そして好きになって、バランスを取る'
          'ように努力することが大切になります。', //54
      '　子供の教育も同じことがいえます。子供のカルテも一人一人違います。強い運'
          '勢を持っている子もいれば、弱い運勢を持っている子もいます。「お兄ちゃ'
          'んのようにどうしてできないの」などと言って、弟は家を出たり引きこもっ'
          'たりといったようなことが起こります。十二運をとおして、それぞれの器が'
          '見えて来るので、それぞれに合った対応をしてあげる必要があります。', //55
      '　ここまでは総論、概要になりますが、続いて各論にはいります。', //56
      '　十二運というのは、日の柱が一番重要です。日干は、己（おの）が心。日支は、'
          '己が体。その己が心と己が体の関係から、十二運である、己が運勢を知るこ'
          'とができます。', //57
      '　したがって、日の柱の十二運をまずみる必要があります。下の図の例で'
          'は、冠帯　の運勢を持っているとみます。', //58
      '　そして次にみるのは、月の柱の十二運、上の図の例では、墓　です。この影響'
          'が出てきます。そして次に年の柱、上の図では、養　です。多少その運勢が'
          '出てきます。', //59
      '', //60
      '　受胎ですから、いわゆる無から有を生じた訳だから、絶して無くなったところ'
          'から新たに生じて出発した。だから前を向いている訳です。前向きで強いで'
          'す。ある意味生意気っぽい人が多いです。', //61
      '　無から有を生じた訳ですから、非常に新しい物好きです。また新しいことをよ'
          'く知っています。政治家ならば、保守派ではなく改革派、野党だったら、こ'
          'の胎を持っていたらいいと言われます。規制をぶち壊すのが好きです。なの'
          'で気をつけないといけないことは、伝統を重んじるタイプの人から嫌われて'
          'しまうことが度々起こります。よく根回ししていかないとまわりから嫌われ'
          'て孤立してしまうことがあります。', //62
      '　例えば、お父さんと一緒に事業をしてきて、お父さんが退き社長になり、その'
          'とたん改革する。でも、周りには叩き上げの人たち、お父さんと一緒に頑'
          '張ってきた古い人たちから反発される。こんなことがよく起こります。だか'
          'ら、一人一人、よく根回しする必要があります。', //63
      '　そして、変化を求める。同じことをしているのが大嫌い。', //64
      '　なので、日の柱に　胎　がはいっている人を見たら、この人改革派だな、でも'
          '根回しちゃんとしているかな、人から嫌われていないかな、よく確認して、'
          'そうならば、アドバイスしてあげる必要があります。', //65
      '', //66
      '　お母さんとへその緒で繋がり、そこから養分をいっぱいいただく。日の柱に　'
          '養　がはいったら、大体、養子が多いです。養子、養女の運勢を持っていま'
          'す。別の家へ行ってそこから養分をいただく。月の柱や年の柱にはいっても'
          '同じです。だから、自分の子供に養が出たら、養子に出るのかということが'
          '考えられます。で、養子に出ると、成功します。人からスカウトされます。', //67
      '　スカウトされ、そこから養分をもらえる星です。', //68
      '　そして　養　を持つと女性的です。女性はお嫁に行く、養子と同じです。養子'
          'に行っていっぱい養分をいただく。養　を持つととてもありがたい、夫の家'
          'からいただくという感じです。', //69
      '　そして優しい、平和的な星です。争いが嫌い。保守的で温厚。', //70
      '', //71
      '　長生も平和主義者です。ありがたい星、これが命式に入っていたら、お墓参り'
          'にでも行って、先祖に感謝してください。とってもいい星、寝たい時に寝、'
          '起きたい時に起き、何の苦しみも、暑さ寒さも関係のないというんですか'
          'ら、最高じゃないですか、だってお母さんのお腹の中にいるわけですから。'
          'で、時には気に入らなくて蹴飛ばす、お母さんを蹴飛ばして、お母さんは'
          '痛い思いしているのに、周りからは、「あーけった！」と祝福されてしま'
          'うわけですから。', //72
      '　そして、母胎から栄養をもらう。戦争に行っても、無事に戻ってき'
          'たというひとも多いですね。', //73
      '　トラブルの時に争うのが嫌いです。だから、こういう人が入ると和'
          '解方向へ動いていきます。', //74
      '', //75
      '　四平なんですが、四衰に入れたいくらいです。産まれました、とういことは祝'
          '福を受けます。しかし、産まれるということは必ずやがて死ぬことを意味し'
          'ます。したがって、喜びと悲しみが表裏一体の星。なんせ複雑なんです。'
          '楽しいんだけれど悲しい。', //76
      '　二面性があるので、契約してもキャンセルする。流れやすい。迷いやすい。'
          '決断ができない。決めるのに時間がかかる。ある意味では、産まれたばか'
          'りですから、仕方がない。経験もないので。', //77
      '　テストしても、読みが深いです。先の先を読んで二案三案と出る、でも最後に'
          'なると、あれ、これ違うんじゃやないかなと言って、書き直して失敗して'
          'しまう。', //78
      '　そして、色恋の星。異性を惹き付ける匂いを放つところがあります。', //79
      '', //80
      '　これもまた、ありがたい星です。冠帯は長生と似ていて、低い山、谷底も深く'
          'ない。男性が持っても女性が持っても非常にラッキーな星です。持っていい'
          'たら、何よりもまず先祖供養をしていただきたいです。先祖に徳を積んだ方'
          'がいます。戦争に行っても無事に帰ってくる人が多い。', //81
      '', //82
      '', //83
      '', //84
      '', //85
      '', //86
      '', //87
      '', //88
      '', //89
      '', //90
      '', //91
      '', //92
      '', //93
      '', //94
      '', //95
      '', //96
      '', //97
      '', //98
      '', //99
      '', //100
      '', //101
      '', //102
      '', //103
      '', //104
      '', //105
      '', //106
      '', //107
      '', //108
      '', //109

      '　　　　　　　　　以上', //999
    ];
    List<int> iroMoji = [
      -1407770, //1
      -1, //2
      -1, //3
      -1, //4
      -1, //5
      -1, //6
      -1, //7
      -1, //8
      -1, //9
      -1, //10
      -1407770, //11
      -1, //12
      -1, //13
      -1407770, //14
      -1, //15
      -1407770, //16
      -1, //17
      -1, //18
      -1, //19
      -1, //20
      -1, //21
      -1, //22
      -1, //23
      -1, //24
      -1, //25
      -1, //26
      -1, //27
      -1, //28
      -1, //29
      -1, //30
      -1, //31
      -1, //32
      -1, //33
      -1, //34
      -1, //35
      -1, //36
      -1, //37
      -1, //38
      -1, //39
      -1, //40
      -1, //41
      -1, //42
      -1, //43
      -1, //44
      -1, //45
      -1, //46
      -1, //47
      -1, //48
      -1, //49
      -1, //50
      -1, //51
      -1, //52
      -1, //53
      -1, //54
      -1, //55
      -1, //56
      -1, //57
      -1, //58
      -1, //59
      -1, //60
      -1, //61
      -1, //62
      -1, //63
      -1, //64
      -1, //65
      -1, //66
      -1, //67
      -1, //68
      -1, //69
      -1, //70
      -1, //71
      -1, //72
      -1, //73
      -1, //74
      -1, //75
      -1, //76
      -1, //77
      -1, //78
      -1, //79
      -1, //80
      -1, //81
      -1, //82
      -1, //83
      -1, //84
      -1, //85
      -1, //86
      -1, //87
      -1, //88
      -1, //89
      -1, //90
      -1, //91
      -1, //92
      -1, //93
      -1, //94
      -1, //95
      -1, //96
      -1, //97
      -1, //98
      -1, //99
      -1, //100
      -1, //101
      -1, //102
      -1, //103
      -1, //104
      -1, //105
      -1, //106
      -1, //107
      -1, //108
      -1, //109
      -1, //110
      -1, //111
      -1, //112
      -1, //113
      -1, //114
      -1, //115
      -1, //116
      -1, //117
      -1, //118
      -1, //119
      -1, //120
      -1, //121
      -1, //122
      -1, //123
      -1, //124
      -1, //125
      -1, //126
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第4版（2023/5/5)',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            //height: 400,
            child: ListView.builder(
              itemCount: 83,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: takasaZu[index],
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(zu[index]),
                        ),
                        tileColor: Colors.indigo,
                      ),
                    ),
                    ListTile(
                      tileColor: Colors.black,
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          moji[index],
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            color: Color(iroMoji[index]),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 90,
              height: 36,
              child: ElevatedButton(
                child: const Text('戻る'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
