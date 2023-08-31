import 'package:flutter/material.dart';

import 'kansuu.dart';

class KyouUnseiModel extends ChangeNotifier {
  int seinenInt;
  int seigatuInt;
  int seinitiInt;

  KyouUnseiModel({
    Key? key,
    required this.seinenInt,
    required this.seigatuInt,
    required this.seinitiInt,
  });

  final String kangou = // ■■■■■■■■■干合表■■■■■■■■■
      "　　　　　合　　　　" // 甲
      "　　　　　　合　　　" // 乙
      "　　　　　　　合　　" // 丙
      "　　　　　　　　合　" // 丁
      "　　　　　　　　　合" // 戊
      "合　　　　　　　　　" // 己
      "　合　　　　　　　　" // 庚
      "　　合　　　　　　　" // 辛
      "　　　合　　　　　　" // 壬
      "　　　　合　　　　　"; // 癸
  final String sigoL = // ■■■■■■■■■支合リスト■■■■■■■■■
      "　合　刑三　冲害三　　　" // 子
      "合　　　　三害冲　三刑　" // 丑
      "　　　　　害三　冲　三合" // 寅
      "刑　　　害　　三　冲合三" // 卯
      "三　　害　　　　三合冲　" // 辰
      "　三害　　　　　合三　冲" // 巳
      "冲害三　　　　合　　三　" // 午
      "害冲　三　　合　　　刑三" // 未
      "三　冲　三合　　　　　害" // 申
      "　三　冲合三　　　　害　" // 酉
      "　刑三合冲　三刑　害　　" // 戌
      "　　合三　冲　三害　　　"; // 亥
  final String keiL = // ■■■■■■■■■刑リスト■■■■■■■■■
      "　　　　　　　　　　　　" // 子
      "　　　　　　　刑　　　　" // 丑
      "　　　　　刑　　刑　　　" // 寅
      "　　　　　　　　　　　　" // 卯
      "　　　　　　　　　　　　" // 辰
      "　　刑　　　　　刑　　　" // 巳
      "　　　　　　　　　　　　" // 午
      "　刑　　　　　　　　　　" // 未
      "　　刑　　刑　　　　　　" // 申
      "　　　　　　　　　　　　" // 酉
      "　　　　　　　　　　　　" // 戌
      "　　　　　　　　　　　　"; // 亥
  final String sigouKei = // ■■■■■■■■■説明文用支合リスト■■■■■■■■■
      "　合　刑三　冲害三　　　"
      "合　　　　三害一　三刑　"
      "　　　　　二三　一　三合"
      "刑　　　五　　三　冲合三"
      "三　　五　　　　三合冲　"
      "　三二　　　　　四三　冲"
      "冲害三　　　　合　　三　"
      "害一　三　　合　　　刑三"
      "三　一　三四　　　　　害"
      "　三　冲合三　　　　害　"
      "　刑三合冲　三刑　害　　"
      "　　合三　冲　三害　　　";
  final String tuuhenbosiYomi = "ひけん　　ごうはい　しょくしんしょうかんへんざい　"
      "せいざい　へんがん　せいがん　とうしょくいんじゅ　";

  int tuhen = 0;
  String tuhenYomi = 'ひけん';
  // int sigo = 0;
  int nowNen = 2023;
  int nowGatu = 8;
  int nowNiti = 15;
  String nowMoji = '2023.8.14';
  String nowMojiApp = '2023.8.14 の運勢';
  int nowNitiKan = 0;
  int nowNitiSi = 0;
  DateTime now = DateTime.now(); // 今日の日付
  DateTime now1 = DateTime(2023, 8, 14); // 鑑定年月日
  int now1Youbi = 1; // 鑑定日の曜日
  String now1YoubiMoji = '（月）';
  String nowTuhen = '比肩'; // 鑑定日の通変星
  int nitiKanNo = 0; // 生年月日の日干No.(0〜9)
  int nitiSi = 0; // 生年月日の日支No.(0〜11)
  int gogyou = 0; // 生年月日の日干の属する五行No.(0〜4)
  String go0 = '0';
  String go1 = '1';
  String go2 = '2';
  String go3 = '3';
  String go4 = '4';
  String go5 = '5';
  String go6 = '6';
  String go7 = '7';
  String go8 = '8';
  String go9 = '9';
  String sigo = "平三刑和害天冲宙三統家合";
  String kei = "平三刑和害天冲宙三統家合";
  List<String> go = [
    'images/tuuhenbosi/t0.png',
    'images/tuuhenbosi/t1.png',
    'images/tuuhenbosi/t2.png',
    'images/tuuhenbosi/t3.png',
    'images/tuuhenbosi/t4.png',
    'images/tuuhenbosi/t5.png',
    'images/tuuhenbosi/t6.png',
    'images/tuuhenbosi/t7.png',
    'images/tuuhenbosi/t8.png',
    'images/tuuhenbosi/t9.png',
  ];
  String kangouNow = '';
  String kangouMoji = '';
  List<String> moji = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];
  List<double> takasaMoji = [
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0
  ];
  int iroPink1 = 0xffffa0ff; //ピンク
  int iroGreen = 0xFFa0FFa0; //緑
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
    -1
  ];
  String kitiKyou = '平';
  int kitiPoint = 0;
  int kitiPointNikann = 0;
  int kitiPointNissi = 0;
  int kitiPointKangou = 0;

  void init() {
    now1 = now; // 鑑定日として今日の日付を設定する
    //  生年月日から日干と日支と五行を算出する
    nitiKanNo =
        juKanNo(meisikiA(seinenInt, seigatuInt, seinitiInt).substring(4, 5));
    nitiSi =
        juuniSiNo(meisikiA(seinenInt, seigatuInt, seinitiInt).substring(5, 6));
    gogyou = nitiKanNo ~/ 2;
    // 通変星の木２階の文字を算出
    go0 = ((gogyou * -2 + 0) % 10).toString();
    go1 = ((gogyou * -2 + 1) % 10).toString();
    go2 = ((gogyou * -2 + 2) % 10).toString();
    go3 = ((gogyou * -2 + 3) % 10).toString();
    go4 = ((gogyou * -2 + 4) % 10).toString();
    go5 = ((gogyou * -2 + 5) % 10).toString();
    go6 = ((gogyou * -2 + 6) % 10).toString();
    go7 = ((gogyou * -2 + 7) % 10).toString();
    go8 = ((gogyou * -2 + 8) % 10).toString();
    go9 = ((gogyou * -2 + 9) % 10).toString();
    go = [
      'images/tuuhenbosi/t$go0.png',
      'images/tuuhenbosi/t$go1.png',
      'images/tuuhenbosi/t$go2.png',
      'images/tuuhenbosi/t$go3.png',
      'images/tuuhenbosi/t$go4.png',
      'images/tuuhenbosi/t$go5.png',
      'images/tuuhenbosi/t$go6.png',
      'images/tuuhenbosi/t$go7.png',
      'images/tuuhenbosi/t$go8.png',
      'images/tuuhenbosi/t$go9.png',
    ];
    // go = goA;
    //日支の２階支合等の文字を算出
    sigo = sigoL.substring(nitiSi * 12, (nitiSi + 1) * 12);
    //日支の１階刑の文字を算出
    kei = keiL.substring(nitiSi * 12, (nitiSi + 1) * 12);
    //■■■■■■■■■ここからは鑑定日が変わるたびに計算する必要がある■■■■■■■■■■■■■■■■■■
    unsei();
    notifyListeners();
  }

  void inc() {
    now1 = now1.add(const Duration(days: 1));
    unsei();
    notifyListeners();
  }

  void dec() {
    now1 = now1.add(const Duration(days: -1));
    unsei();
    notifyListeners();
  }

  void inc30() {
    now1 = now1.add(const Duration(days: 30));
    unsei();
    notifyListeners();
  }

  void dec30() {
    now1 = now1.add(const Duration(days: -30));
    unsei();
    notifyListeners();
  }

  void unsei() {
    //■■■■■■■■■ここからは鑑定日が変わるたびに計算する必要がある■■■■■■■■■■■■■■■■■■
    nowNen = now1.year; // 鑑定年
    nowGatu = now1.month; // 鑑定月
    nowNiti = now1.day; // 鑑定日
    // 鑑定日の曜日を算出する
    now1Youbi = now1.weekday;
    if (now1Youbi == 1) {
      now1YoubiMoji = '(月)';
    } else if (now1Youbi == 2) {
      now1YoubiMoji = '(火)';
    } else if (now1Youbi == 3) {
      now1YoubiMoji = '(水)';
    } else if (now1Youbi == 4) {
      now1YoubiMoji = '(木)';
    } else if (now1Youbi == 5) {
      now1YoubiMoji = '(金)';
    } else if (now1Youbi == 6) {
      now1YoubiMoji = '(土)';
    } else if (now1Youbi == 7) {
      now1YoubiMoji = '(日)';
    } else {
      now1YoubiMoji = '(？)';
    }

    //鑑定日の日干・日支を算出する
    nowNitiKan = juKanNo(meisikiA(nowNen, nowGatu, nowNiti).substring(4, 5));
    nowNitiSi = juuniSiNo(meisikiA(nowNen, nowGatu, nowNiti).substring(5, 6));
    nowMoji = '$nowNen.$nowGatu.$nowNiti'; // 鑑定年月日の表示文字を作成
    nowMojiApp = '$nowMoji  $now1YoubiMoji の運勢';
    // 鑑定日の通変星を算出する
    nowTuhen =
        tuuhenbosi(seinenInt, seigatuInt, seinitiInt, nowNen, nowGatu, nowNiti);
    tuhen = tuuhenbosiNo(nowTuhen);
    tuhenYomi = tuuhenbosiYomi.substring(tuhen * 5, tuhen * 5 + 5).trimRight();
    // 干合を算出する
    kangouNow = kangou.substring(
        nitiKanNo * 10 + nowNitiKan * 1, nitiKanNo * 10 + nowNitiKan * 1 + 1);
    if (kangouNow == '合') {
      moji[41] = '干合(かんごう）があります。';
      moji[42] = '　干合は、男（＋）と女（ー）の発想の違うカップルが'
          '一緒になると新しいエネルギーが生じ、さらに変化したエネルギーも生じるという意味があります。';
      moji[43] = '　■吉ポイントは、プラス20です。';
      takasaMoji[41] = 40;
      takasaMoji[42] = 80;
      takasaMoji[43] = 80;
      iroMoji[41] = iroPink1;
      kitiPointKangou = 20;
      kangouMoji = '干合あり';
    } else {
      moji[41] = '';
      moji[42] = '';
      moji[43] = '';
      takasaMoji[41] = 0;
      takasaMoji[42] = 0;
      takasaMoji[43] = 0;
      iroMoji[41] = iroPink1;
      kitiPointKangou = 0;
      kangouMoji = '';
    }
    // 説明文１
    moji[0] = '　上の円は日干による運勢、下の円は日支による運勢を表しています。'
        'V印は鑑定者の持つ日干と日支の位置を表します。'
        '日干が陽の人は、比肩・劫敗・食神・傷官・偏財・正財・偏官・正官・倒食・印綬、'
        '日干が陰の人は、比肩・傷官・食神・正財・偏財・正官・偏官・印綬・倒食・劫敗、'
        'の順に星が巡ります。'
        '巡って来ている星の場所がピンクで表されています。';
    moji[1] = '　日支も順に巡っていきます。こちらも支合・三合・支冲・害・刑が複雑に現れます。'
        'その現れるところがピンクで表されています。';
    moji[2] = '　さらに甲と己・ 丙と辛・ 戊と癸・ 庚と乙・ 壬と丁は干合関係にあり、'
        '運勢を押しあげます。'
        '';
    moji[3] = '　おおよその運勢を示すと、'
        '吉は、食神・偏財・正財・正官・倒食・印綬・干合・支合・三合、'
        '凶は、劫敗・傷官・偏官・支冲・害・刑、'
        '半吉半凶は、比肩です。'
        'それをポイントにしておおよその鑑定日の運勢を、'
        '大吉・中吉・小吉・平・小凶・中凶・大凶の7段階で表示しています。'
        '';
    moji[4] = '　しかし、例えば、凶星の傷官ですが、よく感が働くという点では、感が要求される職場では、吉ともとれますし、'
        '同様に、凶星の偏官も体を痛めるほど仕事が忙しいという点では、例えば水商売的なの職場の人にとっては吉ともとれます。'
        '詳細は、各星の内容を見る必要があります。'
        'また、総合で吉でも、支冲や害や刑がある場合は、'
        '売り上げは伸びてもトラブルがあるように吉凶両面含むので、気を付ける必要があります。';
    moji[5] = '１．「日干」からみた $nowMoji の運勢';
    moji[6] = '　　生年月日の日干：壬（みずのえ）';
    moji[7] = '　　　鑑定日の日干：丁（ひのと）';
    moji[8] = '　　鑑定日の通変星：$nowTuhen（$tuhenYomi）';
    takasaMoji[0] = 200.0;
    takasaMoji[1] = 100.0;
    takasaMoji[2] = 80.0;
    takasaMoji[3] = 180.0;
    takasaMoji[4] = 240.0;
    takasaMoji[5] = 30.0;
    takasaMoji[6] = 30.0;
    takasaMoji[7] = 30.0;
    takasaMoji[8] = 50.0;
    iroMoji[8] = iroPink1;
    iroMoji[5] = iroGreen;
    //　通変星の解説文作成
    if (nowTuhen == '比肩') {
      moji[9] = '比肩　の日は、次の星が巡ってきます。';
      moji[10] = '・意志と信念の星';
      moji[11] = '・独立と改革の星';
      moji[12] = '・出費の星';
      moji[13] = '・妻・女性を刻する星';
      moji[14] = '・ライバルの星';
      moji[15] = '・自己中心の星';
      moji[16] = '・弁が立つ口の星';
      moji[17] = '・大胆な星';
      moji[18] = '・孤独な星';
      moji[19] = '';
      moji[20] = '';
      moji[21] = '';
      moji[22] = '';
      moji[23] = '';
      moji[24] = '';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、プラスマイナス０です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 40;
      takasaMoji[19] = 0;
      takasaMoji[20] = 0;
      takasaMoji[21] = 0;
      takasaMoji[22] = 0;
      takasaMoji[23] = 0;
      takasaMoji[24] = 0;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = 0;
    } else if (nowTuhen == '劫敗') {
      moji[9] = '劫敗　の日は、次の星が巡ってきます。';
      moji[10] = '・意志と信念の星';
      moji[11] = '・独立と改革の星';
      moji[12] = '・出費の星';
      moji[13] = '・妻・女性を刻する星';
      moji[14] = '・ライバルの星';
      moji[15] = '・自己中心の星';
      moji[16] = '・弁が立つ口の星';
      moji[17] = '・大胆な星';
      moji[18] = '・孤独な星';
      moji[19] = '';
      moji[20] = '';
      moji[21] = '';
      moji[22] = '';
      moji[23] = '';
      moji[24] = '';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、マイナス10です。';
      takasaMoji[9] = 25;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 40;
      takasaMoji[19] = 0;
      takasaMoji[20] = 0;
      takasaMoji[21] = 0;
      takasaMoji[22] = 0;
      takasaMoji[23] = 0;
      takasaMoji[24] = 0;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = -10;
    } else if (nowTuhen == '食神') {
      moji[9] = '食神　の日は、次の星が巡ってきます。';
      moji[10] = '・感のよい星';
      moji[11] = '・機転が効き、頭の良い星';
      moji[12] = '　（手抜きをした割にには勉強ができる';
      moji[13] = '　　遊んでから勉強する';
      moji[14] = '　　直前に徹夜で勉強する）';
      moji[15] = '・一言多い口の星（実際は半言多い程度）';
      moji[16] = '・正義感が強い星';
      moji[17] = '・せっかちで慌て者の星';
      moji[18] = '・プライドの星';
      moji[19] = '・寿星（功労の星';
      moji[20] = '　　　　神がつくのはこの星だけ）';
      moji[21] = '・衣食に恵まれる星';
      moji[22] = '　　（食べること着ることが大好き）';
      moji[23] = '・明るく聡明な星';
      moji[24] = '・恥ずかしがりやな星';
      moji[25] = '・健康的な色星';
      moji[26] = '・財星を生じ財星を助ける星';
      moji[27] = '・吉星なのでポロッと白状してしまう星';
      moji[28] = '・笑顔とユーモアで、';
      moji[29] = '　　　　　口で人を傷つけない吉星';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、プラス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 25;
      takasaMoji[23] = 25;
      takasaMoji[24] = 25;
      takasaMoji[25] = 25;
      takasaMoji[26] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 25;
      takasaMoji[23] = 25;
      takasaMoji[24] = 25;
      takasaMoji[25] = 25;
      takasaMoji[26] = 25;
      takasaMoji[27] = 25;
      takasaMoji[28] = 25;
      takasaMoji[29] = 40;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = 10;
    } else if (nowTuhen == '傷官') {
      moji[9] = '傷官　の日は、次の星が巡ってきます。';
      moji[10] = '・感のよい星';
      moji[11] = '・機転が効き、頭の良い星';
      moji[12] = '　（手抜きをした割にには勉強ができる、';
      moji[13] = '　　遊んでから勉強する、';
      moji[14] = '　　直前に徹夜で勉強する）';
      moji[15] = '・一言多い口の星（実際は二言三言多い）';
      moji[16] = '・正義感が強い星';
      moji[17] = '・せっかちで慌て者の星';
      moji[18] = '・特にプライドの高い星';
      moji[19] = '・個性の強い星';
      moji[20] = '・譲らない信念の星';
      moji[21] = '・こだわって生きている星';
      moji[22] = '・約束の変更を嫌がる星';
      moji[23] = '・相手に対して要求が強い星';
      moji[24] = '・体を張って生命をかける星';
      moji[25] = '・失敗を素直に認めず、';
      moji[26] = '　　すみませんと言えない星';
      moji[27] = '・人から命令されたり';
      moji[28] = '　　頭を抑えつけられたりするのが';
      moji[29] = '　　大嫌いな星';
      moji[30] = '・やるなと言われればやりたくなる星';
      moji[31] = '・夫が悪いことをしていないか';
      moji[32] = '　　チェックする星';
      moji[33] = '・凶星なのでアリバイ作りがうまく、';
      moji[34] = '　　悪知恵も働きボロを出さず';
      moji[35] = '　　白状しない星';
      moji[36] = '・逃げ場が無いほど口で人を傷つける凶星';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、マイナス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 25;
      takasaMoji[23] = 25;
      takasaMoji[24] = 25;
      takasaMoji[25] = 25;
      takasaMoji[26] = 25;
      takasaMoji[27] = 25;
      takasaMoji[28] = 25;
      takasaMoji[29] = 25;
      takasaMoji[30] = 25;
      takasaMoji[31] = 25;
      takasaMoji[32] = 25;
      takasaMoji[33] = 25;
      takasaMoji[34] = 25;
      takasaMoji[35] = 25;
      takasaMoji[36] = 40;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = -10;
    } else if (nowTuhen == '偏財') {
      moji[9] = '偏財　の日は、次の星が巡ってきます。';
      moji[10] = '・商売・営業の星';
      moji[11] = '・人に好かれる星';
      moji[12] = '・交際上手な星';
      moji[13] = '・話上手な星';
      moji[14] = '　　（「奥さん、奥さん」と言って';
      moji[15] = '　　さっと懐に入る、アメ横で';
      moji[16] = '　　バナナの叩き売りをするイメージ）';
      moji[17] = '・「No！」と言えない星';
      moji[18] = '・駆け引き上手な星';
      moji[19] = '・金に縁のある星';
      moji[20] = '・口先だけでボロ儲けする星';
      moji[21] = '・流通に関する商売の星';
      moji[22] = '・ボーナスのように金が大きく入るが';
      moji[23] = '　　　大きく出ていく星';
      moji[24] = '';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、プラス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 25;
      takasaMoji[23] = 40;
      takasaMoji[24] = 0;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = 10;
    } else if (nowTuhen == '正財') {
      moji[9] = '正財　の日は、次の星が巡ってきます。';
      moji[10] = '・商売・営業の星';
      moji[11] = '・人に好かれる星';
      moji[12] = '・交際上手な星';
      moji[13] = '　（「奥様、奥様」と言って松坂屋で';
      moji[14] = '　　　　高級服や貴金属を売る';
      moji[15] = '　　　　上品なイメージ）';
      moji[16] = '・話上手な星';
      moji[17] = '・「No！」と言えない星';
      moji[18] = '・駆け引き上手な星';
      moji[19] = '・金に縁のある星';
      moji[20] = '・コツコツ汗水流して得る確実な収入';
      moji[21] = '・給料のように決められた金が確実に';
      moji[22] = '　　入り、無茶な金遣いを好まない星';
      moji[23] = '';
      moji[24] = '';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、プラス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 40;
      takasaMoji[23] = 0;
      takasaMoji[24] = 0;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = 10;
    } else if (nowTuhen == '偏官') {
      moji[9] = '偏官　の日は、次の星が巡ってきます。';
      moji[10] = '・人間にとって最も重要な日干';
      moji[11] = '　　（自分の肉体）を激しく刻する星';
      moji[12] = '　　（偏官は殺と言われる、';
      moji[13] = '　　　　健康に注意すること）';
      moji[14] = '・女性にとっては官星は男性運を表す';
      moji[15] = '　（遊び、恋愛、若いツバメ、再婚）';
      moji[16] = '・活発で行動力があり、動き回る星';
      moji[17] = '・笑顔もなく、ひきつった顔で';
      moji[18] = '　　　動き回る星';
      moji[19] = '・星気も短く、落ち着きにかける星';
      moji[20] = '　　（仕事や付き合いで動き回り';
      moji[21] = '　　　　帰りが遅い）';
      moji[22] = '';
      moji[23] = '';
      moji[24] = '';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、マイナス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 40;
      takasaMoji[22] = 0;
      takasaMoji[23] = 0;
      takasaMoji[24] = 0;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;

      kitiPointNikann = -10;
    } else if (nowTuhen == '正官') {
      moji[9] = '正官　の日は、次の星が巡ってきます。';
      moji[10] = '・誠実、真面目、品格、正直、温厚、';
      moji[11] = '　　　　　　　　　　品行方正な星';
      moji[12] = '・上流社会に住む人のイメージで、';
      moji[13] = '　　良いとこのお坊ちゃんお嬢ちゃん';
      moji[14] = '・一つの与えられた仕事をきちんとする';
      moji[15] = '　　　　　　　　　　四角四面の星';
      moji[16] = '・面白みのない要領の悪い星';
      moji[17] = '・地位、名誉、肩書きの星';
      moji[18] = '　　　　　　　（地位を得やすい）';
      moji[19] = '';
      moji[20] = '';
      moji[21] = '';
      moji[22] = '';
      moji[23] = '';
      moji[24] = '';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、プラス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 40;
      takasaMoji[19] = 0;
      takasaMoji[20] = 0;
      takasaMoji[21] = 0;
      takasaMoji[22] = 0;
      takasaMoji[23] = 0;
      takasaMoji[24] = 0;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;

      kitiPointNikann = 10;
    } else if (nowTuhen == '倒食') {
      moji[9] = '倒食　の日は、次の星が巡ってきます。';
      moji[10] = '・人気運の星　（人当たりがよく、';
      moji[11] = '　　　ユーモアのある楽しい星）';
      moji[12] = '・明るく融通性があり調子の良い星';
      moji[13] = '・バタバタと忙しい星';
      moji[14] = '　　（サザエさんのような星、';
      moji[15] = '　　　返事はよいがわかっていない、';
      moji[16] = '　　　気ばかり先にいって';
      moji[17] = '　　　肝心な所を見落とす）';
      moji[18] = '・飽きっぽく忘れやすい星';
      moji[19] = '　　（あれもこれもそれもして、';
      moji[20] = '　　　奥がなく一つを極めない）';
      moji[21] = '・趣味、副業の星';
      moji[22] = '・福分の星、衣食に困らない星';
      moji[23] = '・人の世話や厄介事を引き受ける星';
      moji[24] = '・名誉の星';
      moji[25] = '・文化、芸術、学術、宗教の星';
      moji[26] = '　　（日干を強め栄養を送る星）';
      moji[27] = '・人助けの星、ボランティアの星';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';

      /*moji[33] = '（印星からの栄養は親の愛であり、目に見えない精神的な栄養をあらわす。';
      moji[34] = '　この印星によって人は救われるので、困ったときの助けの神となる。';
      moji[35] = '　困った時に立ち直れる人とは、';
      moji[36] = '　　ⅰ）良きアドバイザーを持つこと・・親、先生、師匠、、コーチ、学術';
      moji[37] = '　　ⅱ）良き趣味を持つこと・・・文化、芸術';
      moji[38] = '　　ⅲ）神に助けてもらうこと・・宗教';
      ;*/
      moji[40] = '■吉ポイントは、プラス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 25;
      takasaMoji[23] = 25;
      takasaMoji[24] = 25;
      takasaMoji[25] = 25;
      takasaMoji[26] = 25;
      takasaMoji[27] = 40;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;

      takasaMoji[40] = 80;

      kitiPointNikann = 10;
    } else if (nowTuhen == '印綬') {
      moji[9] = '印綬　の日は、次の星が巡ってきます。';
      moji[10] = '・名誉の星';
      moji[11] = '・文化、芸術、学術、宗教の星';
      moji[12] = '　（日干を強め栄養を送る星）';
      moji[13] = '　（印星からの栄養は親の愛であり、';
      moji[14] = '　目に見えない精神的な栄養をあらわす。';
      moji[15] = '　この印星によって人は救われるので、';
      moji[16] = '　困ったときの助けの神となる。';
      moji[17] = '　では困った時に立ち直れる人とは、';
      moji[18] = '　　ⅰ）良きアドバイザーを持つこと・・';
      moji[19] = '　　　　　親、先生、師匠、コーチ、学術';
      moji[20] = '　　ⅱ）良き趣味を持つこと・・・';
      moji[21] = '　　　　　文化、芸術';
      moji[22] = '　　ⅲ）神に助けてもらうこと・・・';
      moji[23] = '　　　　　宗教　）';
      moji[24] = '・人助けの星、ボランティアの星';
      moji[25] = '';
      moji[26] = '';
      moji[27] = '';
      moji[28] = '';
      moji[29] = '';
      moji[30] = '';
      moji[31] = '';
      moji[32] = '';
      moji[33] = '';
      moji[34] = '';
      moji[35] = '';
      moji[36] = '';
      moji[37] = '';
      moji[38] = '';
      moji[39] = '';
      moji[40] = '■吉ポイントは、プラス10です。';
      takasaMoji[9] = 40;
      takasaMoji[10] = 25;
      takasaMoji[11] = 25;
      takasaMoji[12] = 25;
      takasaMoji[13] = 25;
      takasaMoji[14] = 25;
      takasaMoji[15] = 25;
      takasaMoji[16] = 25;
      takasaMoji[17] = 25;
      takasaMoji[18] = 25;
      takasaMoji[19] = 25;
      takasaMoji[20] = 25;
      takasaMoji[21] = 25;
      takasaMoji[22] = 25;
      takasaMoji[23] = 25;
      takasaMoji[24] = 40;
      takasaMoji[25] = 0;
      takasaMoji[26] = 0;
      takasaMoji[27] = 0;
      takasaMoji[28] = 0;
      takasaMoji[29] = 0;
      takasaMoji[30] = 0;
      takasaMoji[31] = 0;
      takasaMoji[32] = 0;
      takasaMoji[33] = 0;
      takasaMoji[34] = 0;
      takasaMoji[35] = 0;
      takasaMoji[36] = 0;
      takasaMoji[37] = 0;
      takasaMoji[38] = 0;
      takasaMoji[39] = 0;
      takasaMoji[40] = 80;
      kitiPointNikann = 10;
    }
//  支合・支冲等関係図を算出する
    // 解説２
    moji[44] = '２．「日支」からみた今日の運勢';
    moji[45] = '';
    moji[46] = '';
    moji[47] = '';
    moji[48] = '';
    takasaMoji[44] = 40;
    takasaMoji[45] = 0;
    takasaMoji[46] = 0;
    takasaMoji[47] = 0;
    takasaMoji[48] = 0;

    iroMoji[44] = iroGreen;
    //　支合を算出する
    var sigouNow = sigouKei.substring(
        nitiSi * 12 + nowNitiSi * 1, nitiSi * 12 + nowNitiSi * 1 + 1);
    if (sigouNow == '合') {
      moji[49] = '支合（しごう）があります';
      moji[50] = '　支合　が巡ってくる日は、仲のいい恋人や夫婦のように、'
          '大きな気が発生します。';

      moji[51] = '■吉ポイントは、プラス20です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 50;
      takasaMoji[51] = 80;
      kitiPointNissi = 20;
    } else if (sigouNow == '三') {
      moji[49] = '三合（さんごう）があります';
      moji[50] = '　三合 が巡ってくる日は、女子学生三人組のような関係で、'
          '一人一人は弱くても三人そろうと大きな気を発生します。'
          '二人そろった半会（はんかい）でもそれなりの気を発生します。';
      moji[51] = '■吉ポイントは、プラス10です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 100;
      takasaMoji[51] = 80;
      kitiPointNissi = 10;
    } else if (sigouNow == '冲') {
      moji[49] = '冲（ちゅう）があります';
      moji[50] = '　冲　が巡ってくる日は、トラブルに巻き込まれないように注意が必要です。'
          '冲 は、同性同士の殴り合いを意味します。'
          '同性同士なので、激しく殴り合ったり、ひっかきあったり、気がうばわれます。';
      moji[51] = '■吉ポイントは、マイナス20です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 100;
      takasaMoji[51] = 80;
      kitiPointNissi = -20;
    } else if (sigouNow == '害') {
      moji[49] = '害（がい）があります';
      moji[50] = ' 害　が巡ってくる日は、トラブルに巻き込まれないように注意が必要です。'
          '冲　に比べれば軽く、激しい喧嘩はしませんが、やはりトラブルなので、気はうばわれます。';
      moji[51] = '■吉ポイントは、マイナス10です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 80;
      takasaMoji[51] = 80;
      kitiPointNissi = -10;
    } else if (sigouNow == '刑') {
      moji[49] = '刑（けい）があります';
      moji[50] = '　刑 が巡ってくる日は、トラブルに巻き込まれないように注意が必要です。'
          '冲　に比べれば軽く、激しい喧嘩はしませんが、トラブルなので、やはり気はうばわれます。';
      moji[51] = '■吉ポイントは、マイナス10です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 80;
      takasaMoji[51] = 80;
      kitiPointNissi = -10;
    } else if (sigouNow == '一') {
      moji[49] = '冲（ちゅう）と刑（けい）があります';
      moji[50] = '　トラブルに巻き込まれないように注意しましょう。'
          '悪い作用が重なるのではなく、あるときは冲になり、あるときは刑になります。'
          '冲は、同性同士の殴り合いを意味します。'
          '刑は冲に比べれば軽く、激しい喧嘩はしませんが、やはりトラブルなので、気はうばわれます。';
      moji[51] = '■吉ポイントは、マイナス15です。　';
      takasaMoji[49] = 40;
      takasaMoji[50] = 140;
      takasaMoji[51] = 80;
      kitiPointNissi = -15;
    } else if (sigouNow == '二') {
      moji[49] = '害（がい）と刑（けい）があります';
      moji[50] = '　トラブルに巻き込まれないよう注意しましょう。'
          '悪い作用が重なるのではなく、あるときは害になり、あるときは刑になります。'
          '刑は重いトラブル、害は軽いトラブルを意味します。トラブルなのでやはり気はうばわれます。';
      moji[51] = '■吉ポイントは、マイナス10です。　';
      takasaMoji[49] = 40;
      takasaMoji[50] = 120;
      takasaMoji[51] = 80;
      kitiPointNissi = -10;
    } else if (sigouNow == '四') {
      moji[49] = '支合（しごう）と刑（けい）があります';
      moji[50] = '　良い作用の支合と悪い作用の刑が重なります。'
          '普段は仲のいい夫婦が急に大げんかするようなような意味です。'
          '仲がいいときは気を発生してますが、急に喧嘩して気がうばわれることもあります。';
      moji[51] = '■吉ポイントは、プラス10です。　';
      takasaMoji[49] = 40;
      takasaMoji[50] = 100;
      takasaMoji[51] = 80;
      kitiPointNissi = 10;
    } else if (sigouNow == '五') {
      moji[49] = '卯辰の害(うだつのがい）があります';
      moji[50] = '　トラブルに注意が必要です。卯辰の害は、冲（ちゅう）のなぐりあいに匹敵する喧嘩を意味します。'
          '夫婦の激しい喧嘩の意味です。気は激しくうばわれます。';
      moji[51] = '■吉ポイントは、マイナス15です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 80;
      takasaMoji[51] = 80;
      kitiPointNissi = -15;
    } else {
      moji[49] = '　支合・三合・冲・害・刑はありません';
      moji[50] = '';
      moji[51] = '■吉ポイントは、プラスマイナス０です。';
      takasaMoji[49] = 40;
      takasaMoji[50] = 0;
      takasaMoji[51] = 80;
      kitiPointNissi = 0;
    }

    //吉凶ポイント算出
    kitiPoint = kitiPointNikann + kitiPointNissi + kitiPointKangou;
    if (kitiPoint > 24) {
      kitiKyou = '大吉';
    } else if (kitiPoint > 14) {
      kitiKyou = '中吉';
    } else if (kitiPoint > 4) {
      kitiKyou = '小吉';
    } else if (kitiPoint > -5) {
      kitiKyou = '平';
    } else if (kitiPoint > -15) {
      kitiKyou = '小凶';
    } else if (kitiPoint > -25) {
      kitiKyou = '中凶';
    } else {
      kitiKyou = '大凶';
    }

    // 解説３
    moji[52] = '３．総合ポイント';
    moji[53] = '　　　　　　日干：　$kitiPointNikann';
    moji[54] = '　　　　　　干合：　$kitiPointKangou';
    moji[55] = '　　　　　　日支：　$kitiPointNissi';
    moji[56] = '　　　ーーーーーーーーーー';
    moji[57] = '　　　　　　総合；　$kitiPoint';
    moji[59] = '　　　吉凶レベル：　$kitiKyou';
    iroMoji[52] = iroGreen;
    takasaMoji[52] = 40;
    takasaMoji[53] = 25;
    takasaMoji[54] = 25;
    takasaMoji[55] = 25;
    takasaMoji[56] = 25;
    takasaMoji[57] = 25;
    takasaMoji[59] = 80;
    iroMoji[59] = iroPink1;
  }
}
