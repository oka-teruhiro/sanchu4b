// 関数定義　十干から十干数を算出する
//  c = zouKan(a, b)
//  b = juKanNo( a )
//   a: 十干を表す文字（'甲','乙',・・・,'癸'）
//   b: 十干を表す数字（'0','1',・・・,'9' ）

juKanNo(String a) {
  int b = 9;
  if (a == '甲') {
    b = 0;
  } else if (a == '乙') {
    b = 1;
  } else if (a == '丙') {
    b = 2;
  } else if (a == '丁') {
    b = 3;
  } else if (a == '戊') {
    b = 4;
  } else if (a == '己') {
    b = 5;
  } else if (a == '庚') {
    b = 6;
  } else if (a == '辛') {
    b = 7;
  } else if (a == '壬') {
    b = 8;
  } else if (a == '癸') {
    b = 9;
  } else {}
  return b;
}

// 関数定義　十二支から十二支数を算出する
//  b = juuniSiNo( a )
//   a: 十二支を表す文字（'子','丑',・・・,'亥'）
//   b: 十二支を表す数字（'0','1',・・・,'11' ）
juuniSiNo(String a) {
  int b = 11;
  if (a == '子') {
    b = 0;
  } else if (a == '丑') {
    b = 1;
  } else if (a == '寅') {
    b = 2;
  } else if (a == '卯') {
    b = 3;
  } else if (a == '辰') {
    b = 4;
  } else if (a == '巳') {
    b = 5;
  } else if (a == '午') {
    b = 6;
  } else if (a == '未') {
    b = 7;
  } else if (a == '申') {
    b = 8;
  } else if (a == '酉') {
    b = 9;
  } else if (a == '戌') {
    b = 10;
  } else if (a == '亥') {
    b = 11;
  } else {}
  //b = 11;
  return b;
}

// 関数定義　文字列リストから検索文字列が先頭から何文字目にあるか返す
//  c = nanmojime(a,b)
//  a:　120文字（2文字×60組）の文字列リスト
//  b:　2文字の検索文字
//  c:　-2：一致が2組以上ある
//      -1:一致する組がない
//      0 ～ 59 : 組めに1組だけある
int rokujuKansiNo(String mojilist, String kensaku2moji) {
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

// 関数定義　干支から対応する西暦年と年齢を119歳までの間で算出する
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

// // 関数定義　生年月日から　年柱の六十干支を算出する
// //  b = nentyuu(a)
// //   a: 生年月日を表す文字列　（yyyy-MM-dd）
// //   b: 年柱の六十干支を表す数字　（0～59）（例　0:　甲子）
// //
// int nentyuu(String a) {
//   // 生年月日（文字列）を　（DateTime型）に変換する
//   DateTime date3 = DateTime.parse(a); // StringからDate
//   int seinen = int.parse(a.substring(0, 4));
//   DateTime date4 = DateTime(seinen, 2, 4);
//   //　1900.1.1 (甲辰）から誕生日までの日数を算出する
//   var nissuu = date3.difference(date4).inDays;
//   if (nissuu < 0) {
//     --seinen;
//   }
//   var kansiSui = (seinen - 1924) % 60;
//   return kansiSui;
// }

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
// 関数定義　地支から蔵干を算出する

//   a: 地支を表す文字列　（'子','丑','寅',・・・,'戌','亥')
//   b: 節入り日からの日数を表す数字　（1～31）（節入り日は、1　とする）
//   c: 蔵干を表す文字列　（'甲','乙','甲',・・・'壬','癸')
zouKan(String a, int b) {
  //蔵干表
  String zouKanHyou = //蔵干表
      '戊戊戊戊戊戊戊丙丙丙丙丙丙丙甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲甲' //寅
      '甲甲甲甲甲甲甲甲甲甲乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙乙' //卯
      '乙乙乙乙乙乙乙乙乙癸癸癸戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊' //辰
      '戊戊戊戊戊庚庚庚庚庚庚庚庚庚庚丙丙丙丙丙丙丙丙丙丙丙丙丙丙丙丙' //巳
      '丙丙丙丙丙丙丙丙丙丙己己己己己己己己己己丁丁丁丁丁丁丁丁丁丁丁' //午
      '丁丁丁丁丁丁丁丁丁乙乙乙己己己己己己己己己己己己己己己己己己己' //未
      '己己己己己己己壬壬壬壬壬壬庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚庚' //申
      '庚庚庚庚庚庚庚庚庚庚辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛辛' //酉
      '辛辛辛辛辛辛辛辛辛丁丁丁戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊戊' //戌
      '戊戊戊戊戊戊戊甲甲甲甲甲壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬壬' //亥
      '壬壬壬壬壬壬壬壬壬壬癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸癸' //子
      '癸癸癸癸癸癸癸癸癸辛辛辛丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁'; //丑

  int d = 12;
  int i = 372;
  String c = '・';
  //地支（文字データ）を地支数（数字）に変換する
  if (a == '子') {
    d = 10;
  } else if (a == '丑') {
    d = 11;
  } else if (a == '寅') {
    d = 0;
  } else if (a == '卯') {
    d = 1;
  } else if (a == '辰') {
    d = 2;
  } else if (a == '巳') {
    d = 3;
  } else if (a == '午') {
    d = 4;
  } else if (a == '未') {
    d = 5;
  } else if (a == '申') {
    d = 6;
  } else if (a == '酉') {
    d = 7;
  } else if (a == '戌') {
    d = 8;
  } else if (a == '亥') {
    d = 9;
  } else {
    //print('■■■■■■■■■蔵干算出でエラーが発生しました。十二支以外の文字を検出しました。');
  }
//文字を取り出す場所（index）を算出する
  i = (d * 31) + b - 1;
  //print('■■■■a:$a');
  //print('■■■■b:$b');
  //print('■■■■d:$d');
  //print('■■■■i:$i');
  c = zouKanHyou.substring(i, i + 1);

  return c;
}

// 関数定義
//  d = meisiki(a,b,c)
// a: 西暦年（1920年〜2029年）数字
// b: 月の数字
// c: 日の習字
// d: 命式（年柱/月柱/日柱）（例：甲子乙丑丙寅）の6文字
String meisiki(int a, int b, int c) {
  // 定数定義
  int nenchuNen = a;
  String jukkan = "甲乙丙丁戊己庚辛壬癸"; //十干リスト
  String juunisi = "子丑寅卯辰巳午未申酉戌亥"; //十二支リスト
  String rokujukkansi = // 60干支リスト
      "甲子乙丑丙寅丁卯戊辰己巳庚午辛未壬申癸酉"
      "甲戌乙亥丙子丁丑戊寅己卯庚辰辛巳壬午癸未"
      "甲申乙酉丙戌丁亥戊子己丑庚寅辛卯壬辰癸巳"
      "甲午乙未丙申丁酉戊戌己亥庚子辛丑壬寅癸卯"
      "甲辰乙巳丙午丁未戊申己酉庚戌辛亥壬子癸丑"
      "甲寅乙卯丙辰丁巳戊午己未庚申辛酉壬戌癸亥";
  String setuiriNitiL = // 節入り日リスト・2文字・1920年1月から2029年12月まで
      '060506050606070808080807' //1920
      '060406050606080808090808' //1921
      '060406050606080808090808' //1922
      '060506060607080809090808' //1923
      '060506050606070808080807' //1924
      '060406050606080808090807' //1925
      '060406050606080808090808' //1926
      '060506060607080809090808' //1927
      '060506050606070808080807' //1928
      '060406050606080808090807' //1929
      '060406050606080808090808' //1930
      '060506060607080809090808' //1931
      '060506050606070808080707' //1932
      '060406050606070808090807' //1933
      '060406050606080808090808' //1934
      '060506060607080808090808' //1935
      '060506050606070808080707' //1936
      '060406050606070808090807' //1937
      '060406050606080808090808' //1938
      '060506060606080808090808' //1939
      '060506050606070808080707' //1940
      '060406050606070808090807' //1941
      '060406050606080808090808' //1942
      '060506060606080808090808' //1943
      '060506050606070808080707' //1944
      '060406050606070808090807' //1945
      '060406050606080808090808' //1946
      '060506060606080808090808' //1947
      '060506050506070808080707' //1948
      '060406050606070808090807' //1949
      '060406050606080808090808' //1950
      '060506050606080808090808' //1951
      '060506050506070708080707' //1952
      '060406050606070808080807' //1953
      '060406050606080808090808' //1954
      '060406050606080808090808' //1955
      '060505050506070708080707' //1956
      '050406050606070808080807' //1957
      '060406050606080808090807' //1958
      '060406050606080808090808' //1959
      '060505050506070708080707' //1960
      '050406050606070808080807' //1961
      '060406050606070808090807' //1962
      '060406050606080808090808' //1963
      '060505050506070707080707' //1964
      '050406050606070808080807' //1965
      '060406050606070808090807' //1966
      '060406050606080808090808' //1967
      '060505050506070707080707' //1968
      '050406050606070808080707' //1969
      '060406050606070808090807' //1970
      '060406050606080808090808' //1971
      '060505050505070707080707' //1972
      '050406050606070808080707' //1973
      '060406050606070808090807' //1974
      '060406050606080808090808' //1975
      '060505050505070707080707' //1976
      '050406050606070808080707' //1977
      '060406050606070808090807' //1978
      '060406050606080808090808' //1979
      '060505050505070707080707' //1980
      '050406050506070708080707' //1981
      '060406050606070808090807' //1982
      '060406050606080808090808' //1983
      '060505040505070707080707' //1984
      '050406050506070708080707' //1985
      '060406050606070808080807' //1986
      '060406050606080808090808' //1987
      '060405040505070707080707' //1988
      '050405050506070708080707' //1989
      '050406050606070808080807' //1990
      '060406050606070808090807' //1991
      '060405040505070707080707' //1992
      '050405050506070708080707' //1993
      '050406050606070808080807' //1994
      '060406050606070808090807' //1995
      '060405040505070707080707' //1996
      '050405050506070707080707' //1997
      '050406050606070808080807' //1998
      '060406050606070808090807' //1999
      '060405040505070707080707' //2000
      '050405050505070707080707' //2001
      '050406050606070808080707' //2002
      '060406050606070808090807' //2003
      '060405040505070707080707' //2004
      '050405050505070707080707' //2005
      '050406050606070808080707' //2006
      '060406050606070808090807' //2007
      '060405040505070707080707' //2008
      '050405050505070707080707' //2009
      '050406050506070708080707' //2010
      '060406050606070808090807' //2011
      '060405040505070707080707' //2012
      '050405050505070707080707' //2013
      '050406050506070708080707' //2014
      '060406050606070808080807' //2015
      '060405040505070707080707' //2016
      '050405040505070707080707' //2017
      '050406050506070708080707' //2018
      '060406050606070808080807' //2019
      '060405040505070707080707' //2020
      '050305040505070707080707' //2021
      '050405050506070708080707' //2022
      '060406050606070808080807' //2023
      '060405040505060707080707' //2024
      '050305040505070707080707' //2025
      '050405050506070707080707' //2026
      '050406050606070808080807' //2027
      '060405040505060707080706' //2028
      '050305040505070707080707' //2029
      '';
  // 日柱の六十干支を算出する
  DateTime nenGaPi = DateTime(a, b, c); // 年月日のDateTime型
  int nissuu = nenGaPi.difference(DateTime(1900, 1, 1)).inDays; // 1900.1.1からの日数
  int nikkan = nissuu % 10; // 日干No.を算出
  String nikkanMoji = jukkan.substring(nikkan, nikkan + 1); //日干を算出
  int nissi = (nissuu + 10) % 12; // 日支No.を算出
  String nissiMoji = juunisi.substring(nissi, nissi + 1); //日支を算出
  String nichu = nikkanMoji + nissiMoji;
  // 年と月から仮の節入り日・時・分を算出する
  int setuiriNen = a; // 仮の節入り年として、年を代入する
  int setuiriGe = b; // 仮の節入り月として、月を代入する
  int setuIndex = (setuiriNen - 1920) * 12 + (setuiriGe - 1); //
  String setuiriNitiS = // 仮の節入り日の文字
      setuiriNitiL.substring(setuIndex * 2, (setuIndex + 1) * 2);
  int setuiriNiti = int.parse(setuiriNitiS); // 仮の節入り日
  DateTime setuiribi2 = DateTime(setuiriNen, setuiriGe, setuiriNiti);
  int setuirinitisuu = nenGaPi.difference(setuiribi2).inDays; // 仮の節入り日からの日数
  // 仮の節入り日を迎えていない場合
  if (setuirinitisuu < 0) {
    if (b == 1) {
      setuiriNen = setuiriNen - 1; // 1月の場合
      nenchuNen = a - 1;
    } else if (b == 2) {
      nenchuNen = a - 1; // 2月の場合
    } else {} // 3月〜12月の場合
    setuiriGe = (b - 2) % 12 + 1;
  } else {
    if (b == 1) {
      nenchuNen = a - 1;
    } else {}
  }
  // 修正された節入り日時のためのIndexから節入り日時を算出する
  setuIndex = (setuiriNen - 1920) * 12 + (setuiriGe - 1); //
  // 年柱を算出する
  int nenchuNo = (nenchuNen - 1900 + 36) % 60; // 年柱No.を算出する・補正値36
  String nenchu =
      rokujukkansi.substring(nenchuNo * 2, (nenchuNo + 1) * 2); // 年柱
  // 月柱を算出する
  int gechuNo = (setuIndex + 13) % 60; // 月柱No.を算出する・補正値13
  String gechu = rokujukkansi.substring(gechuNo * 2, (gechuNo + 1) * 2); // 月柱
  // String setuiriNitiS = // 仮の節入り日の文字
  String d = nenchu + gechu + nichu;
  return d;
}
