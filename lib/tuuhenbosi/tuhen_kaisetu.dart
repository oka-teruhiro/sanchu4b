import 'package:flutter/material.dart';
import 'package:sanchu4b/tuuhenbosi/tuhen_kaisetu1.dart';

class TuhenKaisetu extends StatelessWidget {
  const TuhenKaisetu({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg', //1
      'images/tuuhenbosi/通変星概要1.jpg', //2
      'images/0.jpg', //3
      'images/0.jpg', //4
      'images/tuuhenbosi/通変星概要2.jpg', //5
      'images/0.jpg', //6
      'images/tuuhenbosi/通変星概要3.jpg', //7
      'images/0.jpg', //8
      'images/0.jpg', //9
      'images/tuuhenbosi/通変星概要4.jpg', //10
      'images/0.jpg', //11
      'images/tuuhenbosi/通変星概要5.jpg', //12
      'images/0.jpg', //13
      'images/0.jpg', //14
      'images/0.jpg', //15
      'images/0.jpg', //16
      'images/0.jpg', //17
      'images/0.jpg', //18
      'images/0.jpg', //19
      'images/0.jpg', //20
      'images/0.jpg', //21
      'images/tuuhenbosi/通変星概要6.jpg', //22
      'images/0.jpg', //23
      'images/0.jpg', //24
      'images/0.jpg', //25
      'images/0.jpg', //26
      'images/0.jpg', //27
      'images/0.jpg', //28
      'images/0.jpg', //29
      'images/0.jpg', //30
      'images/0.jpg', //31
      'images/0.jpg', //32
      'images/tuuhenbosi/通変星概要7.jpg', //33
      'images/0.jpg', //34
      'images/0.jpg', //35
      'images/0.jpg', //36
      'images/0.jpg', //37
      'images/tuuhenbosi/通変星蔵干1.jpg', //38
      'images/0.jpg', //39
      'images/0.jpg', //40
      'images/0.jpg', //41
      'images/0.jpg', //42
      'images/tuuhenbosi/通変星蔵干2.jpg', //43
      'images/0.jpg', //44
      'images/tuuhenbosi/通変星蔵干3.jpg', //45
      'images/0.jpg', //46
      'images/tuuhenbosi/通変星蔵干5.jpg', //47
      'images/tuuhenbosi/通変星蔵干8.jpg', //48
      'images/tuuhenbosi/通変星蔵干4.jpg', //49
      'images/tuuhenbosi/通変星蔵干6.jpg', //50
      'images/0.jpg', //51
      'images/tuuhenbosi/通変星蔵干7.jpg', //52
      'images/0.jpg', //53
      'images/0.jpg', //54
      'images/tuuhenbosi/通変星算出2.jpg', //55
      'images/tuuhenbosi/通変星算出3.jpg', //56
      'images/tuuhenbosi/通変星算出5.jpg', //57
      'images/tuuhenbosi/通変星算出4.jpg', //58
      'images/0.jpg', //59
      'images/0.jpg', //60
      'images/tuuhenbosi/通変星1.jpg', //61
      'images/tuuhenbosi/通変星2.jpg', //62
      'images/tuuhenbosi/通変星3a.jpg', //63
      'images/tuuhenbosi/通変星3b.jpg', //64
      'images/0.jpg', //65
      'images/tuuhenbosi/通変星4.jpg', //66
      'images/0.jpg', //67
      'images/0.jpg', //68
      'images/0.jpg', //69
      'images/0.jpg', //70
      'images/0.jpg', //71
      'images/tuuhenbosi/通変星5.jpg', //72
      'images/0.jpg', //73
      'images/0.jpg', //74
      'images/0.jpg', //75
      'images/0.jpg', //76
      'images/0.jpg', //77
      'images/0.jpg', //78
      'images/0.jpg', //79
      'images/tuuhenbosi/通変星6.jpg', //80
      'images/0.jpg', //81
      'images/0.jpg', //82
      'images/0.jpg', //83
      'images/tuuhenbosi/通変星7.jpg', //84
      'images/0.jpg', //85
      'images/0.jpg', //86
      'images/0.jpg', //87
      'images/0.jpg', //88
      'images/0.jpg', //89
      'images/tuuhenbosi/通変星8.jpg', //90
      'images/0.jpg', //91
      'images/0.jpg', //92
      'images/0.jpg', //93
      'images/tuuhenbosi/通変星9.jpg', //94
      'images/tuuhenbosi/通変星10.jpg', //95
      'images/tuuhenbosi/通変星11.jpg', //96
      'images/0.jpg', //97
      'images/0.jpg', //98
      'images/0.jpg', //99
      'images/0.jpg', //100
      'images/0.jpg', //101
      'images/tuuhenbosi/通変星12.jpg', //102
      'images/tuuhenbosi/通変星13.jpg', //103
      'images/0.jpg', //104
      'images/0.jpg', //105
      'images/0.jpg', //106
      'images/0.jpg', //107
      'images/tuuhenbosi/通変星14.jpg', //108
      'images/0.jpg', //109
      'images/0.jpg', //110
      'images/0.jpg', //111
      'images/0.jpg', //112
      'images/0.jpg', //113
      'images/0.jpg', //114
      'images/0.jpg', //115
      'images/tuuhenbosi/通変星15.jpg', //116
      'images/tuuhenbosi/通変星16.jpg', //117
      'images/0.jpg', //118
      'images/0.jpg', //119
      'images/0.jpg', //120
      'images/0.jpg', //121
      'images/0.jpg', //122
      'images/0.jpg', //123
      'images/0.jpg', //124
      'images/tuuhenbosi/通変星17.jpg', //125
      'images/0.jpg', //126
      'images/0.jpg', //127
      'images/0.jpg', //128
      'images/0.jpg', //129
      'images/0.jpg', //130
      'images/tuuhenbosi/通変星18.jpg', //131
      'images/0.jpg', //132
      'images/0.jpg', //133
      'images/0.jpg', //134
      'images/0.jpg', //135
      'images/tuuhenbosi/通変星19.jpg', //136
      'images/0.jpg', //137
      'images/0.jpg', //138
      'images/tuuhenbosi/通変星20.jpg', //139
      'images/0.jpg', //140
      'images/0.jpg', //141
      'images/0.jpg', //142
      'images/0.jpg', //143
      'images/0.jpg', //144
      'images/0.jpg', //145
      'images/0.jpg', //146
      'images/0.jpg', //147
      'images/0.jpg', //148
      'images/0.jpg', //149
      'images/0.jpg', //150 0
    ];
    List<double> takasaZu = [
      0, //1
      320, //2
      0, //3
      0, //4
      220, //5
      0, //6
      220, //7
      0, //8
      0, //9
      220, //10
      0, //11
      220, //12
      0, //13
      0, //14
      0, //15
      0, //16
      0, //17
      0, //18
      0, //19
      0, //20
      0, //21
      450, //22
      0, //23
      0, //24
      0, //25
      0, //26
      0, //27
      0, //28
      0, //29
      0, //30
      0, //31
      0, //32
      350, //33
      0, //34
      0, //35
      0, //36
      0, //37
      240, //38
      0, //39
      0, //40
      0, //41
      0, //42
      270, //43
      0, //44
      200, //45
      0, //46
      440, //47
      230, //48
      140, //49
      430, //50
      0, //51
      300, //52
      0, //53
      0, //54
      400, //55
      440, //56
      230, //57
      440, //58
      0, //59
      0, //60
      240, //61
      330, //62
      400, //63
      400, //64
      0, //65
      400, //66
      0, //67
      0, //68
      0, //69
      0, //70
      0, //71
      330, //72
      0, //73
      0, //74
      0, //75
      0, //76
      0, //77
      0, //78
      0, //79
      300, //80
      0, //81
      0, //82
      0, //83
      330, //84
      0, //85
      0, //86
      0, //87
      0, //88
      0, //89
      330, //90
      0, //91
      0, //92
      0, //93
      280, //94
      400, //95
      280, //96
      0, //97
      0, //98
      0, //99
      0, //100
      0, //101
      380, //102
      350, //103
      0, //104
      0, //105
      0, //106
      0, //107
      380, //108
      0, //109
      0, //110
      0, //111
      0, //112
      0, //113
      0, //114
      0, //115
      330, //116
      280, //117
      0, //118
      0, //119
      0, //120
      0, //121
      0, //122
      0, //123
      0, //124
      280, //125
      0, //126
      0, //127
      0, //128
      0, //129
      0, //130
      280, //131
      0, //132
      0, //133
      0, //134
      0, //135
      300, //136
      0, //137
      0, //138
      280, //139
      0, //140
      0, //141
      0, //142
      0, //143
      0, //144
      0, //145
      0, //146
      0, //147
      0, //148
      0, //149
      0, //150
    ];
    List<String> moji = [
      '　この文章は、自分で占いや鑑定を試してみたいと思っている方に向けています。'
          '私の師匠は、非常にわかりやすい教え方をしてくれる方です。'
          'この文章では、師匠が教えてくれた際に使用された具体的な例題を引用しています。'
          '理解を深めていただくために、表現が、少し上から目線なところがあります。'
          'また、今の時代に合っていないところがありますが、鑑定力の向上には効果あると思います。'
          '例えば、政治家、スポーツ選手、芸能人の生年月日を入力することで、'
          'あなたの鑑定力が向上することを期待しています。'
          'ただし、例題に使用されている生年月日は有名人のものですが、'
          'プライバシーを考慮して固有名詞は省略してあります。', //1
      '　通変星（つうへんぼし）は、まず五つのグループに分類することができます。', //2
      '　そしてそれぞれのグループを家に例えると、１階と２階で構成されています。', //3
      '　まず第１のグループは、比劫（ひごう）グループです。２階は、比肩（ひけん）、'
          '１階は、劫敗（ごうはい）です。詳細は、あとで解説します。......'
          'まず、位置関係だけ覚えてください。', //4
      '　第２グループは、食傷（しょくしょう）グループです。'
          '２階が、食神（しょくしん）で、１階が、傷官（しょうかん）です。', //5
      '　傷食（しょうしょく）ではなくて、食傷です。１階に誰が住むか２階に誰が住むかがとても重要です。'
          '比劫、食傷と覚えてください。', //6
      '　続いて、第３のグループは、財星グループです。２階が偏財（へんざい）、'
          '１階が、正財（せいざい）です。', //7
      '　あなたが、ただ鑑定する立場だけでなく、教える立場にもなっていくことを考えると、'
          'かならず、この順序で覚えてください。偏財、正財です。偏財が上です。', //8
      '　ところで、人偏（にんべん）に「財」という文字はありません。コンピュータで創った文字です。'
          'チャート図で表現する時、漢字2文字だと煩雑になるので、偏財を人偏に「財」の1文字で表記します。', //9
      '　続いて、第４グループは、官星グループです。２階が偏官（へんがん）、'
          '１階が正官（せいがん）です。', //10
      '　ここもまた、人偏に「官」は創作文字です。偏官を意味する文字です。'
          '正官（せいがん）は（せいかん）と読んでもいいです。', //11
      '　続いて、第５グループは、印星グループです。２階が倒食（とうしょく）、１階が印綬（いんじゅ）です。', //12
      '　一般的には、倒食は、偏印（へんいん）と使う場合が多いようですが、'
          '偏印だと、食神を克（こく）する（蹴飛ばすの意）を将来見逃すおそれがあるので、'
          'この流派では、食神を倒すという意味で、倒食を使います。'
          '実際に偏印で教えてみたことがありますが、初伝から中伝、奥伝と学びを深めていくと、'
          'ほとんどの人が初伝で学んだはずの基礎中の基礎である、'
          '食神を克する意を忘れてしまったからです。'
          '偏印よりも倒食を使ったほうが実践的なので、ぜひ、倒食で覚えてください。'
          '', //13
      '　復習です。', //14
      '　第１グループは？　２階は？１階は？', //15
      '　第２グループは？　２階は？１階は？', //16
      '　第３グループは？　２階は？１階は？', //17
      '　第４グループは？　２階は？１階は？', //18
      '　第５グループは？　２階は？１階は？', //19
      '　これだけ覚えれば、大丈夫です。通変星の組み合わせは覚える必要がありません。'
          '通変星の組み合わせを暗記しようとするので、挫折します。'
          '五つのグループである家と１階に誰が住んでいて、'
          '２階に誰が住んでいるかをしっかり覚えることが大切です。', //20
      '　次に通変星の吉凶です。', //21
      '　まず上から、比劫グループ、食傷グループ、財星グループ、官星グループ、印星グループです。', //22
      '　比劫グループの比肩は、つく相手によって変わります。'
          '相手が吉なら吉に、相手が凶なら凶になるので、半吉半凶の星になります。'
          'これだけ他と違っていて、影響を受けやすい星になります。', //23
      '　劫敗は、大凶星です。', //24
      '　食傷グループの食神は、吉星です。傷官は、凶星です。', //25
      '　財星グループは、珍しく、偏財も正財も両方とも吉星です。'
          '偏財は凶星ではありません、吉星ですから、まちがわないでください。', //26
      '　官星グループの偏官は凶星、正官は吉星です。', //27
      '　印星グループの倒食は、今の段階では、凶星、印綬は吉星と覚えてください。', //28
      '　半吉半凶だけ比肩で、', //29
      '　凶星が、劫敗・傷官・偏官・倒食、で、', //30
      '　残りが吉星、', //31
      '　とこういうふうに覚えてください。そして、次が重要です。', //32
      '　これも覚えるしかありません。', //33
      '　比劫は食傷を生じ、食傷は財星を生じ、財星は官星を生じ、官星は印星を生じ、'
          '印星は比劫を生じる。', //34
      '　こういう親子の関係になっている。比劫に着目して見ると、親は印星で、そこから分家したのが比劫で、'
          'さらにそこから分家したのが食傷と見ることができます。', //35
      '　印星と比劫の関係は、印星が親で比劫が子。　比劫と食傷の関係は、比劫が親で食傷が子。'
          '　食傷と財星は、食傷が親で財星が子。　財星と官星は、財星が親で官星が子。'
          '　財星と印星は、財星が親で印星が子。'
          '　このように、それぞれのグループ（家）の相性になっていることを覚えてください。', //36
      '　つぎに、「蔵干（ぞうかん）」の話になります。', //37
      '　四柱推命学の初伝では一番重要と言ってもいい箇所になります。', //38
      '　「蔵干」は、「蔵（くら）」と「干（かん）」と書きますが、'
          '「十干（じゅっかん）」が入った「蔵（くら）」ということです。', //39
      '　運勢学では、どういうことになっているかというと、まず「根っこ」があって、'
          'そこから、「幹（みき）」が出て、それが別れていって「枝」「葉」になっています。'
          '', //40
      '　「幹（みき）」は新幹線（しんかんせん）の幹（かん）という字ですが、'
          'そこに「干（かん）」という文字が含まれています。'
          '「枝（えだ）」の字は、「支（し）」という文字が含まれています。', //41
      '　したがって、「十干」は「幹」、「十二支」は「枝」を意味しています・', //42
      '　幹と枝とを比べると、根に近いほうが重要とみます。根から吸い上げた水分は幹を通って枝に届くように、'
          '本質的な事柄が、十干という幹を経由して十二支という枝として現れたとみます。'
          'したがって、十二支は、掘り下げていくと十干の要素を持っていることになります。'
          'この掘り下げていく作業は、大変な作業で、まるで真っ暗な蔵の中を、'
          '手探りで探し出すようなことなので、見つける作業や見つかった十干を、蔵干と呼びます。', //43
      '　1975年9月6日生まれの人を例にして、蔵干を算出してみます。', //44
      '　命式は、年の柱から、乙卯・甲申・乙卯になります。ここで、乙・甲・乙は、'
          '天干（てんかん）と呼びます、天の方にある十干。天の方にあって非常にわかりやすい十干ということがいえます。', //45
      '　一方、卯・申・卯は、地にあるので、地にある十二支ということで、地支（ちし）と呼びます。'
          '地支は、さらに地下に掘り進んでみないと、どんな十干が現れてくるかわからないところがあります。'
          'なので掘り進んでそこに潜んでいる十干を見つける作業、蔵干という作業をします。'
          'このとき使う表が、蔵干表です。正式名称は、'
          '月律分野蔵干深浅表（げつりつぶんやぞうかんしんせんひょう）ですが、'
          'この名称は覚える必要ありません。', //46
      '　具体的に、1975年9月6日生まれの人を例にして、蔵干を算出してみましょう。'
          '地支は、下の図のように、日の柱が卯、月の柱が申、年の柱が卯です。', //47
      '　一方、節入り日からの日数は、下図のように、30日になっています。', //48
      '　そこで、蔵干表で、日の柱の「卯」の行を右へ30日堀り進みます。'
          'すると「乙」を得ます。これが日の柱の蔵干になります。', //49
      '　同様に、月の柱の「申」の行を右へ30日掘り進むと、蔵干「庚」を得ます。'
          '年の柱の「卯」は日の柱と同じなので蔵干「乙」を得ます。', //50
      '　得られた蔵干を、カルテの蔵干の欄に記入します。', //51
      '　本アプリは、アプリ内にこの蔵干表を持っているので、上記の計算をして、表示しています。', //52
      '　次に通変星の算出方法を示します。', //53
      '　通変星は、日干と月の柱の天干、日干と年の柱の天干、日干と日の柱の蔵干、'
          '日干と月の柱の蔵干、日干と年の柱の蔵干の関係によって算出します。'
          'それをまとめた表が下に示す「通変星表」です。', //54
      '　下の例では、日干が「乙」、月の柱の転換は「甲」なので、', //55
      '　通変星表の日干「乙」の行を右に、比較する十干「甲」を下に交差する箇所「劫敗」を得ます。'
          'その劫敗を月の柱の通変星の上段に記入します。'
          '年の柱も、「乙」「乙」で得た「「比肩」を通変星上段に記入します。', //56
      '　次に蔵干日の柱「乙」なので、「比肩」を通変星の下段に記入します。', //57
      '　同様に月の柱の蔵干が「庚」なので、「正官」を通変星下段に、'
          '年の柱の蔵干が「乙」なので、「比肩」を通変星下段に記入します。'
          '', //58
      '　この計算方法だと、日の柱通変星の上段は、「比肩」が入っていいることになりますが、'
          '「比肩」と記入しないで、空白にするのが、この業界の常識になっています。'
          '「比肩」と入れないようにして下さい。', //59
      '　次に通変星と人間関係についてみていきます。', //60
      '　男性と女性で通変星の表す人間関係が異なります。まず、女性から述べていきます。', //61
      '　上の図は、五行説の相生（そうしょう）と相剋（そうこく）を表しています。'
          'この詳細な説明は、「易占クイズに挑戦する」の「5. 五行説とは」の解説をご覧ください。'
          '木は土を蹴飛ばし、土は水を蹴飛ばし、水は火を蹴飛ばし、火は金を蹴飛ばし、金は木を蹴飛ばす。'
          '木は火を生じ、火は土を生じ、土は金を生じ、金は水を生ずる。', //62
      '　このことを、日干が甲や乙の人に当てはめてみると、'
          '比劫は財星を蹴飛ばし、財星は印星を蹴飛ばし、印星は食傷を蹴飛ばし、'
          '食傷は官星を蹴飛ばす。また、比劫は食傷を生かし、食傷は財星を生かし、'
          '財星は官星を生かし、官星は印星を生かし、印星は比劫を生かす。'
          '実はこのことは、日干が丙でも丁でも、戊己庚辛壬癸でも成立します。'
          '下の図は、日干は壬か癸の場合です。', //63
      '　やはり、比劫・食傷・財星・官星・印星の関係が同じになっていることが'
          '確認できると思います', //64
      '　では次に、女性にとって比肩・劫敗とは何か、というところからみていきましょう。'
          '説明をわかりやすくするために、日干が甲か乙を例にあげますが、'
          '前述したように、他の日干でも通変星の関係性は同じになります。', //65
      '　木を生かせてくれたのは水です。水は無条件に木を生かすために、おっぱいを与える立場、'
          'つまり母と子女の関係になっています。印星が母で、比劫が子女です。', //66
      '　そこで、印星の母から生まれてくる比劫は、「私」となります。', //67
      '　そして私の他に母から生まれている「兄弟姉妹」という意味もあります。', //68
      '　さらに印星を無条件におっぱいを与える母だけではなく、'
          '学校の先生や師匠と考えると、'
          'そこから生まれる比劫は「同僚、仲間」という意味も出てきます。', //69
      '　兄弟姉妹、同僚、仲間は時として「ライバル」にもなります。', //70
      '　比劫は、①私 ②兄弟姉妹 ③同僚仲間 ④ライバル。この4つを覚えてください。', //71
      '　女性にとって、印星とは何か？', //72
      '　先ほど説明したように、印星から比劫が生まれた、'
          '印星と比劫は、母と子の関係、'
          'つまり、自分を生んでおっぱいを与えれくれた「母親」を表します。。', //73
      '　場合によっては、育ててくれた「乳母」という人もいるかもしれません。', //74
      '　そして自分がさらに成長してくると、無条件に知識や生き方を与えてくれる'
          '「先生・師匠・恩人・先輩」。', //75
      '　さらに究極的には、幸福へと導く「神・宗教」。そこから転じて先祖供養。'
          '確かに「先祖」があって私が生まれたとみることができます。', //76
      '　したがって、印星は、①母親 ②乳母 ③先生・師匠・恩人・先輩 ④先祖・宗教・神　を表します。'
          'この4つを覚えてください。', //77
      '　この流派は、ここを重要視しています。', //78
      '　どんな立派な人でも必ず一人で生まれたのではなく、生んだ人が存在するということです。'
          '印星は、私を生み、栄養を与え、人格も育て、幸福を願い、導くという星だからです。', //79
      '　女性からみた食傷は、木生火、木は火を生ずる、木は火を生む、'
          '比肩は食傷を生む、つまり「子供」を意味します。'
          'ちなみに、男性からみた食傷は違います。'
          '男性は、子供を産みません、女性しか子供を産めませんからね。'
          '女性の場合の食傷が、「子供」を意味します。子供の運勢はここでみます。'
          'ここの運勢が弱いと、子供が産めない、産んでも育たない、病弱、'
          '育っても縁が薄いということになります。'
          'したがって、女性にとって食傷は重要な星になります。', //80
      '　他に、育てる人ということで、「部下・後輩」を表します。', //81
      '　女性にとって食傷は、①子供 ②部下・後輩　の運勢を表す星です。'
          'この2つを覚えてください。', //82
      '　次に女性にとって重要な星は、官星です。ま、すべて重要なんですが、'
          '五行をとおして何を訴えるか、会社でも会社員を評価すると思いますが、'
          '評価するには、評価するものさしが必要になります。'
          '四柱推命は、人間関係学だから、チェックできます。'
          'ここまでみてきたように、母親や先生との関係はいいんだろうか悪いんだろうかとか、'
          '兄弟姉妹や同僚との関係はどうだろうか、'
          '子供や部下との関係はいいのか悪いのかというようにです。'
          'では、官星は、どんな人間関係を表しているかというと、'
          '', //83
      '　金剋木、金は木を克する、金は木を蹴飛ばす、'
          '金は斧になって木を切り倒す、官星は比劫を蹴飛ばす。'
          '自分を蹴飛ばしてくる相手を表しています。'
          '易学では、自然界をみた時に、オスがメスをリードするという考え方から、'
          '女性をリードする立場、あるいは、いじめてくる立場、'
          'つまりその立場は男性であると判断します。'
          '', //84
      '　したがって、女性からみた官星は、「夫」の運勢、夫運・結婚運を表します。', //85
      '　そして、「男性・異性」の運勢、男性運・異性運をあらわします。', //86
      '　ここに、星がある女性は、夫運・男性運・異性運があるということになります。'
          'ここに星がない人は、男性を見る目がちょっと弱いかなという感じです。'
          'したがって、官星も重要なチェックとなります。', //87
      '　女性にとって官星は、①夫 ②男性・異性　を表す。この2つを覚えてください。', //88
      '　最後に、財星は何を表しているかというと、', //89
      '　土克水、土は水を克する、土は自由に流れたい水を土手になって流れをコントロールする、'
          '印星である母をリードするのが財星。'
          'つまり、母をリードする「父」を表しています。'
          '', //90
      '　したがってここに星があるかないかで、父親との関係をみることができます。', //91
      '　ここまでが、女性における通変星の人間関係です。続いて、男性の場合です。', //92
      '　', //93
      '　男性においても、日干が甲と乙の場合で説明しますが、他の日干でも同様です。'
          '比劫は食傷を生じ、食傷は財星を生じ、財星は官星を生じ、官星は印星を生じ、印星は比劫を生ずる。'
          'また、比劫は財星を剋し、財星は印星を剋し、印星は食傷を剋し、食傷は官星を剋し、官星は比劫を克する', //94
      '', //95
      '　男性にとって、印星とは何か？', //96
      '　印星から比劫が生まれた、'
          '印星と比劫は、母と子の関係、'
          'つまり、自分を生んでおっぱいを与えれくれた「母親」を表します。', //97
      '　場合によっては、育ててくれた「乳母」という人もいるかもしれません。', //98
      '　そして自分がさらに成長してくると、無条件に知識や生き方を与えてくれる'
          '「先生・師匠・恩人・先輩」。', //99
      '　さらに究極的には、幸福へと導く「神・宗教」。そこから転じて先祖供養。'
          '確かに「先祖」があって私が生まれたとみることができます。', //100
      '　したがって、印星は、①母親 ②乳母 ③先生・師匠・恩人・先輩 ④先祖・宗教・神　を表します。'
          'この4つを覚えてください。女性の場合と同じです', //101
      '　比肩の場合も女性と同じで、母から生まれた①私　②兄弟姉妹　、'
          '先生・師匠から生まれた③同僚・仲間　④ライバル　を表します。', //102
      '　男性にとって財星とは、木の種を土に植えます。木克土で木は土を蹴飛ばします。'
          'あるいは、木は土をリードする。あるいは木は土をコントロールする。'
          'つまり男性にとって財星は、①妻・妾　②女性　を意味します。', //103
      '　また、自分を生んだ印星の母を克する立場、つまり　③父親　を意味します。'
          'これは、女性にとっての財星と同じです。'
          '', //104
      '　男性で財星がない人は、女性運がない、なかなか女性と縁がない、結婚できない、'
          '結婚できても長続きしない、'
          'ということがいえるので、男性にとって財星はとても重要です。'
          '逆に良き妻と出会えたことは、天の宝・財を手にしたことに等しいといえます。', //105
      '　こんなことを言ったらさらに女性に失礼なんですが、古代中国では、'
          '女性と金を財と呼んでいました。', //106
      '　男性にとって、財星の2番目の意味で、父親という意味もあるので、財運がない時は、'
          '父親との縁がうすいという意味も出てきます。', //107
      '　財星を理解した上で男性にとって官星は、財星が生んだものなので、'
          '①子供　②部下・後輩　という意味合いが出てきます。', //108
      '　したがって、男性にとって官星がないということは、'
          '子女運、部下運がないということを意味します。', //109
      '　このように、子女運の見方は、男性の場合は官星と、女性の場合は食傷というように'
          '男性と女性で違うということをしっかり覚えてください。', //110
      '　ちなみの異性運は、男性の場合は財星、女性の場合は官星　になります。'
          'これも整理しておきましょう。', //111
      '　こうやって、通変星をみていくと、その人の人間関係がみえてきます。'
          '初伝レベルでは、通変星の星があるかないかでみることができます。'
          '星があれば、その運勢ある、星がなければその運勢がない。'
          '自分のカルテをみて、例えば男性で財星がないということは、妻運がない。'
          '女性で官星がないということは、夫運がないと鑑定することができます。'
          'ただし、あくまで、初伝レベルの鑑定ですが。', //112
      '　また、夫婦で子女運を聞かれたら、妻の食傷はあるか？次に夫の官星はあるか？'
          'という具合にみていきます。もし両方ともなかったら、子女は難しいかもしれない・・・。', //113
      '　あるいは、夫婦仲を聞かれたら、妻の官星はあるか？夫の財星はあるか？'
          'もし、両方とも星がなかったら、夫婦すれ違いかもしれない・・・。という具合です。', //114
      '　では、男性にとって食傷は何か？', //115
      '　男性にとって子供運は官星ですが、そこに星がない時は、次に食傷をみます。'
          'ここも①子供　②部下・後輩　という意味がありますが、官星8割、食傷2割というようにみます。'
          'さらに財星の妻を生み出したのが、食傷なので、③妻の両親　という意味があります。'
          'しかし、妻の生年月日がわかり、さらに、妻の両親の生年月日がわかるなら、'
          'そちらで、直接鑑定した方がいいでしょう。', //116
      '　女性にとって一番多い悩みが、夫婦関係ですが、男性運・結婚運がどうなっているかをみていくことによって判断できます。', //117
      '　女性にとって誰と結婚するかということは一生を左右する出来事になります。'
          'どんな男性（官星）から種を受けて、どんな子を生むか、それによって女性の位置や地位が決まってくる、'
          'それが女性にとっての出世と考えると、'
          'そういう観点からも官星が重要ということがいえます。'
          'したがって官星がないとなると大問題ということになります。それで上の図のようにみていってください。', //118
      '　原則1：命中に偏官か正官が1つあるとよい。とてもラッキーです。', //119
      '　原則2：命中に官星は2つが限界、3つ以上あると大変。人生という皿に6個ある団子が、'
          '官星の位置にてんこ盛りになっている状況のようです。バランスが悪くて人生のお皿がひっくり返りそうになっています。'
          '官星という男性がたくさん集まっているような状態、あっちの男性に唾を付け、'
          'こっちの男性にも唾を付け、そっちの男性にも唾を付けようとしているような感じです。', //120
      '　ここまでセーフでも、原則3が当てはまるとまた大変です。', //121
      '　原則3：官星を見つけると、やたらちょっかいを出してくる星があります。'
          'それが傷官です。官星を傷つけると書いて傷官です。'
          'やくざのような星で、堅気の官星をみつけるといじめにきてボコボコにやっつけにきます。'
          '同じグループに食神がありますが、食神というだけに神がついているでしょ、神父さんみたいなものです。'
          '神父さんのような食神は、堅気の官星を傷つけません。あくまでも官星を傷つけるのは傷官です。', //122
      '　原則4：比劫が3つ以上あると大変です。比劫は、官星に蹴飛ばされる立場ですが、'
          '比劫である木が多いということは、硬いカシの木をカッターナイフで切るような感じです。'
          '硬いカシの木は、カッターナイフで切れないばかりか、返り血を浴びて、刃がボロボロという感じです。'
          '比劫が強すぎて、官星がボロボロという感じです。', //123
      '　原則5：上記の原則で、運勢がなかったとしても、1年の中で、10年の中で、30年の中でめぐってくる運があります。'
          'これをゲットするてがあります。これは、ちょうど回転寿司で、マグロやイカが回っているような感じです。'
          'マグロという男性運・結婚運をタイミングを合わせてゲットできるかということです。'
          'そのためには、いつマグロがめぐってくるか知る必要があります。また、ゲットしようとした時、'
          '直前のおじさんがマグロをゲットしてしまわないように、そのマグロ私がほしいと宣言し、取られないようにするように、'
          '結婚運をゲットする準備する努力も必要になります。天の運気を知ることがとても重要になります。', //124
      '　男性の場合の女性運・結婚運は、財星あるかないかでみていきます。'
          '財星がないということは、女性を見る目がない、ということになります。'
          '穴にはまっているような感じで、穴の底から上を見上げているような感じで、理想ばかり高くて、'
          '実際に家庭を持ってみると、あれこんなはずじゃなかったというようなことがよく起こります。'
          '自分の夫はどうかをチェックしてみてください。', //125
      '　女性の場合の男性運をみたのと同様に次の原則にしたがってみていきます。', //126
      '　原則1：命中に偏財か正財が1つあるとよい。1つあれば理想的です。', //127
      '　原則2：命中に財星は2つが限界、3つ以上あると大変。人生の皿がひっくり返りやすくなる。'
          '縁をもつ女性が多すぎるか、逆に女性に無関心ということになります。', //128
      '　原則3：財運を克する比肩・劫敗があると大変。3個も4個もあって、比肩劫敗のてんこ盛り、'
          '比肩劫敗は何をするかというと、財星をボコボコにやっつけます。'
          '夫の比肩劫敗が3つも4つもあったら、女性の私はいじめられているという感じです。'
          '自然に財星をやっつけます。財星って自分（女性）ですからね。', //129
      '　原則4：1年運、10年運、30年運に財運が回ってくるかをみること。'
          '例えば、自分の息子が、財星がないわ、比劫はいっぱいあるわだと、'
          '息子の結婚のことが心配になりますが、天が回してくれる星、'
          '年によってめぐってくる結婚運がありますから、これをよくみる必要があります。'
          '回転寿司のマグロをゲットするように、おじさんそのマグロとっちゃダメよと声を描けるように、'
          '準備して、ゲットする。このような努力が必要です。', //130
      '　夫婦にとって、子供は重要な問題だと思います。', //131
      '　まず、女性の食傷があるかないかをみてください。'
          '食傷がなかったら、子供に問題が起きる可能性が高いと考えられます。'
          'なぜかというと、子供の畑が悪いからということになります。', //132
      '　そして男性はどこをみるかというと、官星でしたね。'
          'そして補足としてみる場所は、男性も食傷でしたね。', //133
      '　したがって、女性の命中に食傷がない。そして、これから説明予定ですが、'
          '空乏（くうぼう：よく天冲殺という言葉で表現される）で、'
          '食傷空乏する女性、そしてさらに、男性の命中に官星がない、'
          'あるいは、官星空乏する男性は、統計的に、子供ができないか、'
          '子供ができても思ったように育たない人が多いということがいえます。'
          '例えば、私立に行ってといっても公立の学校に行っちゃうとか、'
          '男の子が欲しいのに何度も女の子が生まれちゃうとか、'
          'どうも思うように行かないとこういうことが起こります。', //134
      '　こういう時は、親の考え方を変える必要が出てきます。'
          '私の娘、私の息子、私の、私の、私の所有物という考えが強い傾向があります。'
          '子供は天からのあずかりものであり、成人になるまであずかって育てることを'
          '許された立場で、後は社会にお返しする、と考えて接していかないとうまくいきません。'
          '', //135
      '　嫁と姑の問題は、四柱推命の観点からは、戦わざるを得ない関係にあることを説明できます。', //136
      '　例えば夫の日干が木の場合で説明すると、夫の母は、印星で水になります。一方、妻は財星で土になります。'
          '妻と母と関係は、土克水(土が水を蹴飛ばす）となります。川（姑）の流れを土手（嫁）で防ぐぞ！'
          '川（姑）は川で負けてません。こんな土ぐらい決壊させてやる！という勢いで土手にぶつかっていきます。'
          '土手は土手で決壊させるものかと土手を強固に固めていきます。'
          '決壊！土手！決壊！土手！って感じで競り合うことになります。'
          '人類歴史が始まった当初から繰り返されてきたことで、簡単にはいかないことが'
          'この図からわかると思います。四柱推命ができたところから、原則的に、'
          '嫁と姑の関係は、難しいと言われてきました。'
          '', //137
      '　したがって、嫁としてその家に嫁ぐなら、あるいは、逆の立場で、姑として嫁を迎え入れるなら、'
          'よく知恵を振り絞って、どう関わっていくかを考えていく必要があります。'
          'では、どうやったらいいのかということは、さらに四柱推命を学ぶなかで、'
          'あるいは、今後のアップデートで示すようにしたいと思います。', //138
      ' ずーっと鑑定していくと、鑑定が当たらないという現象が起こります。', //139
      ' 例えば、財星のない夫と官星のない妻。男性にとって財星がないということは、女性を見る目がない、'
          '女性にとって官星がないということは、男性運のない、こんな夫婦で、我慢に我慢を重ね、'
          'それでも離婚もせずに、夫婦関係諦めないで、70歳80歳を迎えた、'
          '昔はそんな教えがありましたよね、一度嫁いだら実家の敷居を跨ぐな！なんて、'
          '何があっても耐えている老夫婦、すごいですよね。だから、こういう人って、'
          '四柱推命が当たらなくなってしまいます。どうみても夫婦関係最悪、努力のたまものです。', //140
      ' また、同じ生年月日でも、「まろは、・・・」と言っている環境と、'
          '「このやろー！」といっている環境で育つのとでは、全然違います。'
          'なのでよく差し込み（決めつけないでよく聞くこと）をすることが必要です。'
          'どんな家庭で育ち、どんな勉強をし、どんな会社で働いているのか、'
          'こういったことを常に確認するようにしてください。', //141
      ' 例えば、傷官は凶星ですが、'
          '傷官をもった女性は、「傷官女」と呼ばれ、育ちが悪ければ、ご主人が帰るたびに、上着の匂いをクンクン嗅いで、'
          '「あんた、何食べてきたの！」という感じで、勘がよくてうるさい妻という感じですが、'
          '育ちがよければ、つねに夫の健康を気遣いうまく指導してくれる妻、'
          '最高のドクターという感じになります。その星がどう出るかは、'
          'その人がおかれた環境によって決まってきます。', //142
      ' また、四柱推命は、霊能ではありません、中には、'
          '霊的なものが見えたり聞こえたりする人がいるかもしれませんが、'
          '見えても聞こえてもそれを使わないことが重要です。'
          '計算をして出てきた結果をどう読み解くか、そのために差し込みをする、どのような家庭に育ち、'
          'どのような学びをし、どのような会社で働いた、こうした環境面をよく聞いて確認するようにしてください。', //143
      ' ここまでが、通変星の総論です。続いて「比肩」は何を意味するか？「劫敗」は何を意味するか？など'
          '各論の解説になります。', //144
      ' ', //145
      ' ', //146
      ' ', //147
      ' ', //148
      ' ', //149
      ' ', //150
      '　　　　　　　　　以上', //139
      '　　　　　　お疲れ様でした', //140
    ];

    //-1407770 薄いピンク[300]
    //-1294214 ピンク[400]
    //-1407770 ピンク[500]
    // -4056997 暗いピンク[700]

    List<int> iroMoji = [
      -4056997, //1
      -1, //2
      -1, //3
      -1, //4
      -1, //5
      -1, //6
      -1, //7
      -1, //8
      -1, //9
      -1, //10
      -1, //11
      -1, //12
      -1, //13
      -1, //14
      -1, //15
      -1, //16
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
      -1, //127
      -1, //128
      -1, //129
      -1, //130
      -1, //131
      -1, //132
      -1, //133
      -1, //134
      -1, //135
      -1, //136
      -1, //137
      -1, //138
      -1, //139
      -1, //140
      -1, //141
      -1, //142
      -1, //143
      -1, //144
      -1, //145
      -1, //146
      -1, //147
      -1, //148
      -1, //149
      -1, //150
    ];

    return MediaQuery(
      data: MediaQuery.of(context)
          .copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white12,
          title: const Text(
            '「通変星」の詳しい解説(総論)',
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
                itemCount: 144,
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
                          tileColor: Colors.black,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 90,
                    height: 36,
                    child: ElevatedButton(
                      child: const Text('各論へ'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TuhenKaisetu1(),
                            ));
                      },
                    ),
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
          ],
        ),
      ),
    );
  }
}
