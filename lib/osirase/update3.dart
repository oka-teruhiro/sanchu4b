import 'package:flutter/material.dart';

class Update3 extends StatelessWidget {
  const Update3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> moji = [
      '■概要',
      '　今日の運勢/易占検定の追加',
      '■バージョンアップの動機と過程',
      '　第2版までに天地徳合を表示できるようになりましたが、性格にしても天地徳合にしても、一度知ればそれでアプリの使命が終了していました。そんな中、「今日の運勢」を毎日知りたいとの要望あり、取り組んでみました。',
      '　そこで問題になるのが、毎日毎日、同じ生年月日を入力するのは面倒な作業となることです。それを解消するために、生年月日のデータを端末機に記憶するようにしました。これによって、アプリを再起動したときに、再度生年月日の入力が不要になりました。',
      '　そうすると、本人だけではなく、家族の今日の運勢も知りたくなる欲が出てきました。そこで、複数の生年月日を登録できるようにしようと考えました。',
      '　そうすると問題になるのが、登録画面を入力の状況に合わせて動的に変化させる技術でした。YuoTube「Flutterラボ」チャンネルの「Flutter超入門！スターター教材解説」を参考にして実装しました。（https://www.youtube.com/channel/UCrzA_ub-JcI_8daABLfOg-g/playlists）',
      '　また、以前から課題だった、生年月日の入力をiOSスタイルに変更しました。',
      '　さらに、四柱推命に関心をもってもらえるように、解説を加えようと考えました。朝のテレビ番組で「○○検定」という形で解説をしているのにヒントを得て、「易占検定」という形で、出題して、解説するという形を使おうと考えました。',
      '　そこで問題となるのが、出題を増やすたびに、アプリをアップデートすることは、効率が悪いということです。そこで、データベースを利用しようと考えました。YuoTube「Flutter大学」チャンネルの「Flutter実践」を参考にして実装しました。 （https://www.youtube.com/channel/UCReuARgZI-BFjioA8KBpjsw/playlists）',
      '　これらの作業を、タクシーの付け待ち時間を利用して行っていたら、それをみていた同僚が「バージョンアップしたアプリも楽しみだけれど、タクシーの中でアプリ作っていることの方がもっとおもしろいので、動画配信してみたら・・」と提案してきました。　',
      '　そこで、ライブ配信する技術や、PCの画面を録画する技術を学びました。使わなくなっていた古いスマホにIriunWebcamというアプリをインストールして、macbookには　OBSというアプリをインストールして、開発中の様子をYouTubeにアップロードしてみました。　',
      '　開発中の様子を知りたい方は、YouTube 「徳助」チャンネルを御覧ください。私は見てもつまらないと思いますが、スマホアプリを作ってみたいと思っている方には、いい刺激となるかもしれません。結構簡単にスマホアプリを作ることができることが理解できることと思います。 （https://www.youtube.com/channel/UCqbXXi-Y7Uj23otLelAOI5w）',
      '■四柱推命の観点から　',
      '　第1版では、年、月、日のうち、日干を算出していました。',
      '①	　今日の日干の算出 　',
      '　本人の日干の算出と同様です。　',
      '②	　今日の通変星の算出　',
      '　本人の日干を基準にして、今日の日干に対して通変星（つうへんぼし）を算出します。　',
      '　例えば、本人の日干が「甲」で、今日の日干が「甲」なら通変星は「比肩（ひけん）」になります。今日の日干が「乙」なら通変星は「劫敗（ごうはい）」、以下「丙」：「食神（しょくしん）」、「丁」：「傷官（しょうかん）」、「戊」：「偏財（へんざい）」、「己」：「正財（せいざい）」、「庚」：「偏官（へんがん）」、「辛」：「正官（せいがん）」、「壬」：「倒食（とうしょく）」、「癸」：「印綬（いんじゅ）」となります。　',
      '③	　今日の日支の算出　',
      '　本人の日支の算出と同様です。',
      '④	　支合　の算出',
      '　本人の日支を基準にして、今日の日支との関係において、 丑―子、寅―亥、卯―戌、辰―酉、巳―申、午―未　の組み合わせです。',
      '⑤	　三合　の算出',
      '　申―子―辰、亥―卯―未、寅―午―戌、巳―酉―丑　の組み合わせです。',
      '⑦	　害　の算出',
      '　卯―辰、寅―巳、丑―午、子―未、亥―申、酉―戌　の組み合わせです。',
      '⑧	　刑　の算出',
      '　子―卯、寅―申―巳、丑―未―戌　の組み合わせです。',
      '■プログラムの観点から　',
      '　今回のバージョンアップで、習得した内容は下記のとおりです。',
      '①	　iOSデザインのDatePickerの実装',
      '②	　端末にデータを記憶する方法/shared_preferences',
      '③	　画面を動的に表示する方法/ListViewBuilder()',
      '④	　Firebaseにデータを所得・追加・更新・削除する方法/StreemBuilder()',
      '⑤	  Firebaseに画像を記憶する方法/Firebase_strage',
      '⑥	　iPhone AppleStore でリリース方法',
      '■今後の課題　',
      '①　簡単な相性診断ができるようにする。（一般ユーザーのため）',
      '②　易占検定の質問数を増やす。（一般ユーザーのため）',
      '③　節入り日時データを取り込み、月柱を算出する。（鑑定士のツールとして）',
      '④　12運・蔵干・通変星・空亡等、命式を完成させる。（鑑定士のツールとして）',
      '⑤　インタースティシャル広告配置（プログラミングのスキルアップのため）',
      '⑥　継ぎ足し継ぎ足しで機能を織り込んだので、次回バージョンアップに備えてコード整理する。（プログラミングのスキルアップのため）',
      '　　　　　　　　　以上'
    ];
    List<int> iroMoji = [
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第3版（2021/8/8)',
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
              itemCount: 46,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
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

          Container(
            height: 0,
          ),
          SizedBox(
            height: 0,
            child: Container(
              color: Colors.black,
            ),
          ), // Ads
          Container(
            height: 0,
          ),
        ],
      ),
    );
  }
}
