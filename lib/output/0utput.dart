import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanchu4b/output/meisiki_page.dart';

class Output extends StatelessWidget {
  Output({Key? key, required this.titleSeinengappi}) : super(key: key);

  final String titleSeinengappi;

  //■■　変数初期設定　■■
  final DateTime date0 = DateTime(1900, 1, 1);
  final int nikkan = -1;
  //List<String> nikkanName = ["甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"];
  final String jukkan = "甲乙丙丁戊己庚辛壬癸"; //十干リスト
  final String jukkanYomi = "甲【きのえ】　乙【きのと】　丙【ひのえ】　丁【ひのと】　戊【つちのえ】"
      "己【つちのと】庚【かのえ】　辛【かのと】　壬【みずのえ】癸【みずのと】"; //十干リスト【よみ】
  final String juunisi = "子丑寅卯辰巳午未申酉戌亥"; //十二支リスト
  final String rokujukkansi = "甲子乙丑丙寅丁卯戊辰己巳庚午辛未壬申癸酉"
      "甲戌乙亥丙子丁丑戊寅己卯庚辰辛巳壬午癸未"
      "甲申乙酉丙戌丁亥戊子己丑庚寅辛卯壬辰癸巳"
      "甲午乙未丙申丁酉戊戌己亥庚子辛丑壬寅癸卯"
      "甲辰乙巳丙午丁未戊申己酉庚戌辛亥壬子癸丑"
      "甲寅乙卯丙辰丁巳戊午己未庚申辛酉壬戌癸亥"; //
  final void jukkanName = null;
  final List nitikansiHeirin = [0, 0, 0, 0, 0, 0];
  final List kansiHeirinList = [0, 0, 0, 0, 0, 0];

  //ver.4のための追加(2022.12.21)
  //節入り日のデータ
  //1957年
  List<int> setubi = [5, 4, 5, 5, 5, 6, 7, 7, 8, 8, 7, 7];
  List<int> setuji = [18, 5, 23, 4, 21, 1, 11, 21, 0, 1, 6, 19, 12];
  List<int> setuhun = [14, 50, 43, 20, 25, 25, 38, 29, 32, 22, 45, 46];
  //節入り日データここまで
  int setuIndex = 0;
  int seinen = 1920;
  int seigatu = 1;
  int seiniti = 1;
  int setuirinen = 1920;
  int setuirinenk = 1920;
  int setuirigatu = 1;
  int setuirigatuk = 1;
  int setuiriniti = 1;
  int setuiriji = 0;
  int setuirihun = 0;
  int setuirinitisuu = 0;
  DateTime seinengappi = DateTime(1920, 1, 1);
  DateTime setuiribi = DateTime(1920, 1, 2);
  String nenchu = '甲子';
  String gechu = '甲子';
  String nichu = '甲子';
  int nenchuNo = 0;
  int gechuNo = 0;
  int nichuNo = 0;
  int nenchuHosei = 36;
  int gechuHosei = 13;
  int nichuHosei = 0;
  List<int> tenun = [0, 0, 0, 0, 0, 0, 0];
  List<int> tenunNen = [1900, 1901, 1902, 1903, 1904, 1905, 1906];
  List<int> tenunNenrei = [0, 0, 0, 0, 0, 0, 0];
  List<int> tenunMei = [1, 1, 1, 1, 1, 1, 1];
  List<String> tenunMeiMoji = [
    '干支併臨',
    '干支併臨',
    '干支併臨',
    '干支併臨',
    '干支併臨',
    '干支併臨',
    '干支併臨'
  ];
  List<String> tenunKansi = ['甲子', '甲子', '甲子', '甲子', '甲子', '甲子', '甲子'];
  List<String> tenunText = ['1', '2', '3', '4', '5', '6', '7'];

  @override
  Widget build(BuildContext context) {
    //■■画面生成のための各種データを生成する■■

    //　受けっとった　生年月日をタイトル型から文字列に変換する
    var seinenMoji = titleSeinengappi.substring(0, 4);
    var seigatuMoji = titleSeinengappi.substring(5, 7);
    var seinitiMoji = titleSeinengappi.substring(8, 10);
    seinenMoji = '1957';
    //seigatuMoji = '03';
    //seinitiMoji = '31';
    //var seinengappiMojia = '$seinenMoji．$seigatuMoji．$seinitiMoji';
    var seinengappiMoji = '$seinenMoji-$seigatuMoji-$seinitiMoji';
    //var seinengappiMoji = '1957-03-31'; //デバッグ用表示の調整用
    //　生年月日を　文字列から　DateTime型　に変換する
    DateTime datetSeinengappi = DateTime.parse(seinengappiMoji); // StringからDate

    //ver4追加
    //生年と生月から仮の節入り日・時・分を算出する
    seinen = int.parse(seinenMoji);
    seigatu = int.parse(seigatuMoji);
    seiniti = int.parse(seinitiMoji);
    //仮の節入り日を算出する
    setuirinenk = seinen;
    setuirigatuk = seigatu;
    //節入り日リストから節入り日・時・分を取得する
    //ToDo 節入り日データ1957年から12ヶ月分の場合
    setuIndex = (setuirinenk - 1957) * 12 + (setuirigatuk - 1);
    //print('■■■■■■■■■setuIndex:$setuIndex');
    setuiriniti = setubi[setuIndex];
    //print('■■■■■■■■■setuiribi:$setuiriniti');
    setuiriji = setuji[setuIndex];
    //print('■■■■■■■■■setuiriji:$setuiriji');
    setuirihun = setuhun[setuIndex];
    //print('■■■■■■■■■setuirihun:$setuirihun');
    //取得した節入り日・時・分から仮の節入り日を算出する
    seinengappi = DateTime(seinen, seigatu, seiniti);
    //print('■■■■■■■■■seinengappi:$seinengappi');
    setuiribi =
        DateTime(setuirinenk, setuirigatuk, setuiriniti, setuiriji, setuirihun);
    //print('■■■■■■■■■setuiribi:$setuiribi');
    setuirinitisuu = seinengappi.difference(setuiribi).inDays;
    //print('■■■■■■■■■setuirinitisuu:$setuirinitisuu');
    if (setuirinitisuu < 0) {
      if (seinen < 3) {
        setuirinen = seinen - 1;
        setuirigatu = seigatu - 1;
      } else {
        setuirinen = seinen;
        setuirigatu = seigatu - 1;
      }
    } else {
      if (seinen < 2) {
        setuirinen = seinen - 1;
        setuirigatu = seigatu;
      } else {
        setuirinen = seinen;
        setuirigatu = seigatu;
      }
    }
    setuiribi =
        DateTime(setuirinen, setuirigatu, setuiriniti, setuiriji, setuirihun);
    setuirinitisuu = seinengappi.difference(setuiribi).inDays;
    //print('■■■■■■■■■生年月日：$seinengappi');
    //print('■■■■■■■■■節入り日：$setuiribi');
    //print('■■■■■■■■■節入り日からの日数:$setuirinitisuu');

    //月柱の六十干支を算出する
    gechuNo =
        ((setuirinen * 12 + setuirigatu) - (1900 * 12 + 1) + gechuHosei) % 60;
    //print('■■■■■■■■■gechuNo:$gechuNo');
    gechu = rokujukkansi.substring((gechuNo * 2), (gechuNo * 2) + 2);
    //print('■■■■■■■■■月柱：$gechu');

    //年柱の六十干支を算出する
    nenchuNo = (setuirinen - 1900 + nenchuHosei) % 60;
    //print('■■■■■■■■■nenchuNo:$nenchuNo');
    nenchu = rokujukkansi.substring((nenchuNo * 2), (nenchuNo * 2) + 2);
    //print('■■■■■■■■■年柱：$nenchu');

    //日柱の六十干支を算出する
    //　1900.1.1 (甲辰）から誕生日までの日数を算出する
    var nissuu = datetSeinengappi.difference(date0).inDays;
    //  日干を算出する
    var nikkan = nissuu % 10;
    // 十干リスト【よみ】から日干【よみ】を取り出し、空白を削除する
    var jukkanNameYomi =
        jukkanYomi.substring(nikkan * 7, (nikkan + 1) * 7).trimRight();
    //　日支を算出する
    var nissi = (nissuu + 10) % 12;
    //　日干画面遷移用の文字データを生成する
    var gamenNikkan = '/nikkan$nikkan';
    // 六十干支から干支併臨を算出する
    //日柱の六十干支を算出する
    String nikkanMoji = jukkan.substring(nikkan, nikkan + 1);
    String nissiMoji = juunisi.substring(nissi, nissi + 1);
    String nichu = "$nikkanMoji$nissiMoji";
    //print('■■■■■■■■■日柱：$nichu');
    // 六十干支リストから日柱の六十干支を検索して、六十干支番号を算出する
    int nichuNo = nanmojime(rokujukkansi, nichu);
    //print('■■■■■■■■■nichuNo:$nichuNo');

    // 干支併臨(日)を算出する　1924年は「甲子」
    //print('■■■■■■■■■nichuNo:$nichuNo');
    //print('■■■■■■■■■seinengappiMoje:$seinengappiMoji');
    var nitiKansiHeirin = kansiHeirin(nichuNo, seinengappiMoji);
    //print('■■■■■■■■■nitiKansiHeirin:$nitikansiHeirin');
    // 干支併臨(月)を算出する。節入り日時データがないので現時点では算出出来ない。
    var getuKansiHeirin = kansiHeirin(gechuNo, seinengappiMoji);
    // 干支併臨(年)を算出する
    var nenKansiHeirinSuu = nentyuu(seinengappiMoji);
    var nenKansiHeirin = kansiHeirin(nenKansiHeirinSuu, seinengappiMoji);
    // 天地徳合を算出する
    var tokugouTen = (nikkan + 5) % 10;
    var tokugouTi = (13 - nissi) % 12;
    String tokugouTenMoji = jukkan.substring(tokugouTen, tokugouTen + 1);
    String tokugouTiMoji = juunisi.substring(tokugouTi, tokugouTi + 1);
    String tentiTokugouMoji = '$tokugouTenMoji$tokugouTiMoji';
    int tentiTokugouSuu = nanmojime(rokujukkansi, tentiTokugouMoji);
    var tentiTokugou = kansiHeirin(tentiTokugouSuu, seinengappiMoji);
    // 干支併臨リスト・天地徳合リストから年と年齢を生成する
    List tenunList = tenUn(nenKansiHeirin, getuKansiHeirin, nitiKansiHeirin,
        tentiTokugou, seinengappiMoji);
    //print('tenunList:$tenunList');
    // 天運リストの要素数を7にするため0を追加する
    int tenunLength = tenunList.length;
    for (int i = 0; i < (7 - tenunLength); ++i) {
      tenunList.add(0);
    }
    // 天運リストの１番目のテキスト文を作成する

    for (int i = 0; i < 7; ++i) {
      print('■■■■■■■■■tenun:$tenun');
      tenun[i] = tenunList.removeAt(0);
      tenunNen[i] = tenun[i] ~/ 10000;
      tenunNenrei[i] = tenun[i] % 10000 ~/ 10;
      tenunMei[i] = tenun[i] % 10;
      if (tenunMei[i] == 1) {
        tenunMeiMoji[i] = '干支併臨';
        tenunKansi[i] = nenchu;
      } else if (tenunMei[i] == 2) {
        tenunMeiMoji[i] = '干支併臨';
        tenunKansi[i] = gechu;
      } else if (tenunMei[i] == 3) {
        tenunMeiMoji[i] = '干支併臨';
        tenunKansi[i] = nichu;
      } else if (tenunMei[i] == 4) {
        tenunMeiMoji[i] = '天地徳合';
        tenunKansi[i] = tentiTokugouMoji;
      } else {}
      //print('■tenunNen:$tenunNen');
      //print('■■tenunMeiMoji:$tenunMeiMoji');
      //print('■■■teunuKansi:$tenunKansi');

      tenunText[i] =
          '${tenunNen[i]}（${tenunKansi[i]}）年（${tenunNenrei[i]}歳）：${tenunMeiMoji[i]}';
      //    as String; //( + tenunNenrei[i] + tenunMeiMoji[i] + tenunKansi[i];
      //print('■■■■tenunText:$tenunText');
    }
    //tenunText = tenunMei + tenunKansi;
    //■■　画面を生成する　■■

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'あなたの天運の年は',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    //'$titleSeinengappi 生まれの',
                    '$seinengappiMoji 生まれの',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'あなたの日干は、$jukkanNameYomiです。',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 220,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          elevation: 4,
                          shadowColor: Colors.yellow,
                        ),
                        onPressed: () {
                          //Navigator.pushNamed(context, gamenNikkan);
                        },
                        child: const Text('日干からみた性格は'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  const Text(
                    '天運の年は、',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    tenunText[0],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    tenunText[1],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    tenunText[2],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    tenunText[3],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    tenunText[4],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    tenunText[5],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    tenunText[6],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      width: 220,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          elevation: 4,
                          shadowColor: Colors.yellow,
                        ),
                        onPressed: () {
                          /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Tentitokugou(
                                    //titleSeinengappi: seinengappiMoji,
                                  ),
                                ),
                              );*/
                        },
                        child: const Text('天地徳合/干支併臨とは'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  const Text(
                    '命式は',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '年柱：$nenchu',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '月柱：$gechu',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '日柱：$nichu',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 220,
                height: 36,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 4,
                    shadowColor: Colors.yellow,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MeisikiPage(
                          titleSeinengappi: titleSeinengappi,
                          nenchu: nenchu,
                          gechu: gechu,
                          nichu: nichu,
                          //setuiribi: setuiribi,
                          seinen: seinen,
                          seigatu: seigatu,
                          seiniti: seiniti,
                          setuirinen: setuirinen,
                          setuirigatu: setuirigatu,
                          setuiriniti: setuiriniti,
                          setuiriji: setuiriji,
                          setuirihun: setuirihun,
                          setuirinitisuu: setuirinitisuu,
                        ),
                      ),
                    );
                  },
                  child: const Text('さらに詳しくみる'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 220,
                height: 36,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 4,
                    shadowColor: Colors.yellow,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('戻る'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

// 関数定義　文字列リストから検索文字列が先頭から何文字目にあるか返す
//  c = nanmojime(a,b)
//  a:　120文字（2文字×60組）の文字列リスト
//  b:　2文字の検索文字
//  c:　-2：一致が2組以上ある
//      -1:一致する組がない
//      0 ～ 59 : 組めに1組だけある
int nanmojime(String mojilist, String kensaku2moji) {
  int nanbanme = -1;
  int ittisuu = 0;
  for (int i = 0; i < 60; i++) {
    String nimoji = mojilist.substring(i * 2, i * 2 + 2);
    if (nimoji == kensaku2moji) {
      nanbanme = i;
      ittisuu = ittisuu + 1;
    } else {}
  }
  if (ittisuu > 1) {
    nanbanme = -2;
  } else if (ittisuu < 1) {
    nanbanme = -1;
  } else {}
  return nanbanme;
}

// 関数定義　干支から対応する西暦年と年齢を99歳までの間で算出する
//   c = kannsiHeirin(a,b)
//   a: 干支No.を表す0～59の数字　（　0:甲子　1:乙丑　～　58:壬戌　59:癸亥　）
//   b: 生年月日を表す文字列　（yyyy-MM-dd）
//   c: 干支併臨の年を表す 数字の配列（　[0,0,1961,2021,0] )
//
List kansiHeirin(int kansiSuu, String seinengappiMojiretu) {
  List kansiHeirinList = [];
  // 生年月日（文字列）を　（DateTime型）に変換する
  DateTime date3 = DateTime.parse(seinengappiMojiretu); // StringからDate
  int seinen = int.parse(seinengappiMojiretu.substring(0, 4));
  DateTime date4 = DateTime(seinen, 2, 4);
  //　1900.1.1 (甲辰）から誕生日までの日数を算出する
  var nissuu = date3.difference(date4).inDays;
  if (nissuu < 0) {
    --seinen;
  }
  int nen = 0;
  for (int i = 0; i < 6; ++i) {
    nen = 1864 + 60 * i + kansiSuu;
    if (nen <= seinen) {
      kansiHeirinList.add(0);
    } else if (nen > seinen + 120) {
      kansiHeirinList.add(0);
    } else {
      kansiHeirinList.add(nen);
    }
  }
  //print('■■■■kansiHeirinList:$kansiHeirinList');
  return kansiHeirinList;
}

// 関数定義　生年月日から　年柱の六十干支を算出する
//  b = nentyuu(a)
//   a: 生年月日を表す文字列　（yyyy-MM-dd）
//   b: 年柱の六十干支を表す数字　（0～59）（例　0:　甲子）
//
int nentyuu(String a) {
  // 生年月日（文字列）を　（DateTime型）に変換する
  DateTime date3 = DateTime.parse(a); // StringからDate
  int seinen = int.parse(a.substring(0, 4));
  DateTime date4 = DateTime(seinen, 2, 4);
  //　1900.1.1 (甲辰）から誕生日までの日数を算出する
  var nissuu = date3.difference(date4).inDays;
  if (nissuu < 0) {
    --seinen;
  }
  var kansiSui = (seinen - 1924) % 60;
  return kansiSui;
}

// 関数定義　天運到来の西暦とその時を迎える満年齢と種類を西暦昇順に並べる配列を生成する
//  f = tenUn(a,b,c,d,e)
//  a: 干支併臨（年）の年を表す 数字の配列（　[0,0,0,2017,0] )
//  b: 干支併臨（月）の年を表す 数字の配列（　[0,0,0,0,0] )
//  c: 干支併臨（日）の年を表す 数字の配列（　[0,0,1962,2022,0] )
//  d: 天地徳合　　　の年を表す 数字の配列（　[0,0,0,2007,0] )
//  e: 生年月日を表す文字列　（yyyy-MM-dd）
//　f: 天運到来の年yyyy立春時の満年齢GG種類nを表す数字配列
//              [yyyyGGn]  n: 1: 干支併臨（年柱）
//                            2: 干支併臨 (月柱）
//                            3: 干支併臨 (日柱）
//                            4: 天地徳合
//          例　[19620053,19630062,20070504,20170601,20220653,20230662]
//
List tenUn(List a, List b, List c, List d, String e) {
  List<int> tenunNen = [];
  int nen = 0;
  // 生年月日（文字列）を　（DateTime型）に変換する
  DateTime date3 = DateTime.parse(e); // StringからDate
  int tenunMei;
  List nenList = [];
  // 年柱
  nenList = a;
  tenunMei = 1;
  for (int i = 0; i < 6; ++i) {
    nen = nenList.removeAt(0);
    if (nen != 0) {
      DateTime date4 = DateTime(nen, 2, 4);
      var nissuu = date4.difference(date3).inDays;
      //print('nissuu:$nissuu');
      var nenrei = nissuu ~/ 365.2422;
      var tenunDate = nen * 10000 + nenrei * 10 + tenunMei;
      tenunNen.add(tenunDate);
    } else {}
  }
  // 月柱
  nenList = b;
  tenunMei = 2;
  for (int i = 0; i < 6; ++i) {
    nen = nenList.removeAt(0);
    if (nen != 0) {
      DateTime date4 = DateTime(nen, 2, 4);
      var nissuu = date4.difference(date3).inDays;
      var nenrei = nissuu ~/ 365.2422;
      var tenunDate = nen * 10000 + nenrei * 10 + tenunMei;
      tenunNen.add(tenunDate);
    } else {}
  }
  // 日柱
  nenList = c;
  tenunMei = 3;
  for (int i = 0; i < 6; ++i) {
    nen = nenList.removeAt(0);
    if (nen != 0) {
      DateTime date4 = DateTime(nen, 2, 4);
      var nissuu = date4.difference(date3).inDays;
      var nenrei = nissuu ~/ 365.2422;
      var tenunDate = nen * 10000 + nenrei * 10 + tenunMei;
      tenunNen.add(tenunDate);
    } else {}
  }
  // 天地徳合
  nenList = d;
  tenunMei = 4;
  for (int i = 0; i < 6; ++i) {
    nen = nenList.removeAt(0);
    if (nen != 0) {
      DateTime date4 = DateTime(nen, 2, 4);
      var nissuu = date4.difference(date3).inDays;
      var nenrei = nissuu ~/ 365.2422;
      var tenunDate = nen * 10000 + nenrei * 10 + tenunMei;
      tenunNen.add(tenunDate);
    } else {}
  }
  // 西暦昇順にソートする
  tenunNen.sort((num1, num2) => num1 - num2);
  //print('■■■■tenunNen:$tenunNen');
  return tenunNen;
}

// 六十干支リストを生成する　（String rokujukkansi　の文字列をつくるため）
//String rokujuuKansi = '';
//for (int i = 0; i < 60; i++) {
//  var j = i % 10;
//  var k = i % 12;
//  var kan = jukkan.substring(j, j + 1);
//  var si = juunisi.substring(k, k + 1);
//  rokujuuKansi = rokujuuKansi + kan + si;
//  print('$i');
//  print('$j');
//  print('$k');
//  print('$rokujuuKansi');
//};
