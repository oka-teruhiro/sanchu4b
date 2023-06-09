import 'package:flutter/material.dart';
import 'package:sanchu4b/kaisetu/tenti_tokugou.dart';
import 'package:sanchu4b/nikkan/nikkan_hinoe.dart';
import 'package:sanchu4b/nikkan/nikkan_hinoto.dart';
import 'package:sanchu4b/nikkan/nikkan_kanoe.dart';
import 'package:sanchu4b/nikkan/nikkan_kanoto.dart';
import 'package:sanchu4b/nikkan/nikkan_kinoe.dart';
import 'package:sanchu4b/nikkan/nikkan_kinoto.dart';
import 'package:sanchu4b/nikkan/nikkan_tutinoto.dart';
import 'package:sanchu4b/output/meisiki_page.dart';

import '../nikkan/nikkan_mizunoe.dart';
import '../nikkan/nikkan_mizzunoto.dart';
import '../nikkan/nikkan_tutinoe.dart';

class Output extends StatelessWidget {
  Output({Key? key, required this.titleSeinengappi}) : super(key: key);

  String titleSeinengappi;

  //■■　変数初期設定　■■
  DateTime date0 = DateTime(1900, 1, 1);
  int nikkan = -1;
  //List<String> nikkanName = ["甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"];
  String jukkan = "甲乙丙丁戊己庚辛壬癸"; //十干リスト
  String jukkanYomi = "甲【きのえ】　乙【きのと】　丙【ひのえ】　丁【ひのと】　戊【つちのえ】"
      "己【つちのと】庚【かのえ】　辛【かのと】　壬【みずのえ】癸【みずのと】"; //十干リスト【よみ】
  String juunisi = "子丑寅卯辰巳午未申酉戌亥"; //十二支リスト
  String rokujukkansi = "甲子乙丑丙寅丁卯戊辰己巳庚午辛未壬申癸酉"
      "甲戌乙亥丙子丁丑戊寅己卯庚辰辛巳壬午癸未"
      "甲申乙酉丙戌丁亥戊子己丑庚寅辛卯壬辰癸巳"
      "甲午乙未丙申丁酉戊戌己亥庚子辛丑壬寅癸卯"
      "甲辰乙巳丙午丁未戊申己酉庚戌辛亥壬子癸丑"
      "甲寅乙卯丙辰丁巳戊午己未庚申辛酉壬戌癸亥"; //
  //void jukkanName = null;
  List nitikansiHeirin = [0, 0, 0, 0, 0, 0];
  List kansiHeirinList = [0, 0, 0, 0, 0, 0];

  //ver.4のための追加(2022.12.21)
  //節入り日のデータ
  //1957年
  List<int> setubi = [5, 4, 5, 5, 5, 6, 7, 7, 8, 8, 7, 7];
  List<int> setuji = [18, 5, 23, 4, 21, 1, 11, 21, 0, 1, 6, 19, 12];
  List<int> setuhun = [14, 50, 43, 20, 25, 25, 38, 29, 32, 22, 45, 46];
  //1920年1月から2029年12月までの節入り日データ、2文字
  String setuiriNitiL = '060506050606070808080807' //1920
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
  //1920年1月から2029年12月までの節入り時刻データ、5文字
  String setuiriJikokuL =
      '23:4011:2605:5011:1405:1109:5020:1805:5808:2623:2802:0418:30' //1920
      '05:3317:2011:4417:0811:0415:4102:0611:4314:0905:1007:4500:11' //1921
      '11:1623:0617:3322:5716:5221:3007:5717:3620:0611:0913:4506:10' //1922
      '17:1305:0023:2404:4522:3803:1413:4223:2401:5717:0319:4012:04' //1923
      '23:0510:4905:1210:3204:2509:0119:2905:1207:4522:5201:2917:52' //1924
      '04:5316:3610:5916:2210:1714:5601:2411:0613:3904:4707:2623:52' //1925
      '10:5422:3816:5922:1816:0820:4107:0516:4419:1510:2413:0705:38' //1926
      '16:4404:2922:5004:0521:5202:2412:4922:3101:0516:1418:5611:26' //1927
      '22:3110:1604:3709:5403:4308:1718:4404:2707:0122:0900:4917:17' //1928
      '04:2116:0810:3115:5109:4014:1000:3110:0812:3903:4606:2722:56' //1929
      '10:0221:5016:1621:3715:2619:5706:1915:5618:2809:3712:2004:50' //1930
      '15:5503:4022:0103:2021:0901:4112:0521:4400:1715:2618:0910:40' //1931
      '21:4409:2903:4909:0602:5407:2717:5203:3106:0221:0923:4916:18' //1932
      '03:2315:0909:3114:5008:4113:1723:4409:2511:5703:0305:4222:10' //1933
      '09:1621:0315:2620:4314:3019:0105:2415:0317:3508:4411:2603:56' //1934
      '15:0202:4821:1002:2620:1100:4111:0520:4723:2314:3517:1709:44' //1935
      '20:4608:2902:4808:0601:5606:3016:5802:4305:2020:3223:1415:42' //1936
      '02:4314:2508:4414:0107:5012:2222:4508:2510:5902:1004:5521:26' //1937
      '08:3120:1414:3319:4813:3518:0604:3114:1216:4708:0110:4803:21' //1938
      '14:2702:1020:2601:3719:2023:5110:1820:0322:4113:5616:4309:16' //1939
      '20:2308:0702:2307:3401:1605:4316:0701:5104:2919:4222:2614:57' //1940
      '02:0313:4908:0913:2407:0911:3922:0207:4510:2301:3804:2320:55' //1941
      '08:0219:4814:0919:2313:0617:3203:5113:3016:0607:2110:1102:46' //1942
      '13:5401:3919:5801:1118:5323:1809:3819:1821:5513:1015:5808:32' //1943
      '19:3907:2201:4006:5300:3905:1015:3501:1803:5519:0821:5414:27' //1944
      '01:3413:1907:3712:5106:3611:0521:2607:0409:3800:4903:3420:07' //1945
      '07:1619:0313:2418:3812:2116:4803:1012:5115:2706:4009:2702:00' //1946
      '13:0600:5019:0700:2018:0222:3108:5518:4021:2112:3715:2407:56' //1947
      '19:0006:4100:5706:0923:5204:2014:4300:2603:0418:2021:0613:37' //1948
      '00:4112:2206:3911:5105:3610:0620:3106:1408:5400:1002:5919:33' //1949
      '06:3818:2012:3517:4411:2415:5002:1311:5514:3305:5108:4301:21' //1950
      '12:3000:1318:2623:3217:0921:3207:5317:3720:1811:3614:2607:02' //1951
      '18:0905:5200:0705:1522:5303:2013:4423:3002:1317:3220:2112:55' //1952
      '00:0111:4506:0211:1204:5209:1619:3405:1407:5223:1002:0018:36' //1953
      '05:4517:3011:4816:5910:3815:0001:1910:5913:3704:5707:5000:28' //1954
      '11:3523:1717:3022:3816:1720:4307:0516:5019:3110:5213:4506:22' //1955
      '17:3005:1123:2404:3122:0902:3512:5822:4001:1816:3519:2512:02' //1956
      '23:1010:5405:1010:1803:5808:2418:4804:3207:1222:2901:2017:55' //1957
      '05:0416:4911:0416:1209:4914:1200:3310:1712:5804:1907:1123:49' //1958
      '10:5822:4216:5622:0315:3820:0006:1916:0418:4710:0913:0205:37' //1959
      '16:4204:2322:3603:4321:2201:4812:1221:5900:4516:0819:0211:37' //1960
      '22:4210:2204:3409:4203:2107:4618:0603:4806:2921:5000:4617:25' //1961
      '04:3416:1710:2915:3409:0913:3123:5109:3312:1503:3706:3423:16' //1962
      '10:2622:0716:1721:1814:5219:1405:3715:2518:1109:3612:3205:12' //1963
      '16:2204:0422:1603:1820:5101:1111:3221:1623:5915:2118:1510:53' //1964
      '22:0209:4604:0009:0602:4107:0217:2103:0405:4721:1100:0616:45' //1965
      '03:5415:3709:5114:5608:3012:4923:0708:4911:3202:5605:5522:37' //1966
      '09:4821:3015:4120:4414:1718:3604:5314:3417:1708:4111:3704:17' //1967
      '15:2603:0721:1702:2119:5500:1910:4120:2723:1114:3417:2910:08' //1968
      '21:1608:5903:1008:1401:4906:1116:3102:1404:5520:1623:1115:51' //1969
      '03:0114:4508:5814:0107:3311:5222:1007:5410:3802:0104:5721:37' //1970
      '08:4520:2514:3419:3613:0817:2803:5113:4016:3007:5810:5603:35' //1971
      '14:4102:2020:2801:2819:0123:2109:4219:2822:1513:4116:3909:18' //1972
      '20:2508:0402:1207:1300:4605:0615:2701:1203:5919:2722:2715:10' //1973
      '02:1914:0008:0713:0406:3310:5121:1106:5709:4501:1404:1721:04' //1974
      '08:1719:5914:0519:0112:2716:4202:5912:4415:3307:0210:0202:46' //1975
      '13:5701:3919:4800:4618:1422:3108:5018:3821:2812:5815:5808:40' //1976
      '19:5107:3301:4406:4500:1504:3214:4700:3003:1518:4321:4514:30' //1977
      '01:4313:2607:3812:3906:0810:2320:3606:1709:0200:3003:3420:20' //1978
      '07:3119:1213:1918:1711:4716:0502:2412:1014:5906:3009:3202:17' //1979
      '13:2801:0919:1600:1417:4422:0308:2318:0820:5312:1915:1808:01' //1980
      '19:1206:5501:0506:0523:3403:5214:1123:5702:4318:0921:0813:51' //1981
      '01:0212:4506:5411:5205:2009:3519:5405:4108:3100:0203:0419:48' //1982
      '06:5818:3912:4717:4411:1015:2501:4311:2914:2005:5108:5201:33' //1983
      '12:4000:1818:2423:2216:5021:0807:2917:1720:0911:4214:4507:28' //1984
      '18:3506:1100:1605:1322:4202:5913:1823:0401:5317:2420:2913:16' //1985
      '00:2812:0706:1211:0604:3008:4419:0004:4507:3423:0602:1219:00' //1986
      '06:1317:5111:5316:4410:0514:1800:3810:2913:2404:5908:0500:52' //1987
      '12:0323:4217:4622:3916:0120:1406:3216:2019:1110:4413:4806:34' //1988
      '17:4505:2723:3404:2921:5302:0512:1922:0300:5316:2719:3312:20' //1989
      '23:3311:1405:1910:1203:3507:4618:0003:4506:3722:1301:2318:14' //1990
      '05:2817:0811:1216:0409:2613:3823:5309:3712:2704:0107:0723:56' //1991
      '11:0822:4816:5221:4515:0819:2205:4015:2718:1809:5112:5705:44' //1992
      '16:5604:3722:4203:3721:0101:1511:3221:1700:0715:4018:4511:33' //1993
      '22:4810:3004:3709:3102:5407:0417:1903:0405:5521:2900:3517:22' //1994
      '04:3416:1210:1615:0808:3012:4223:0008:5111:4803:2706:3523:22' //1995
      '10:3122:0716:0921:0114:2518:4005:0014:4817:4209:1812:2605:14' //1996
      '16:2404:0122:0402:5620:1900:3210:4920:3623:2815:0518:1411:04' //1997
      '22:1809:5603:5708:4402:0306:1316:3002:1905:1520:5500:0817:01' //1998
      '04:1715:5709:5714:4408:0112:0922:2408:1411:0902:4805:5722:47' //1999
      '10:0021:4015:4220:3113:5017:5804:1314:0216:5908:3811:4804:37' //2000
      '15:4903:2821:3202:2419:4423:5310:0619:5222:4614:2517:3610:28' //2001
      '21:4309:2403:2708:1801:3705:4415:5601:3904:3120:0923:2116:14' //2002
      '03:2715:0509:0413:5207:1011:1921:3507:2410:2002:0005:1322:05' //2003
      '09:1820:5614:5519:4313:0217:1303:3113:1916:1207:4910:5803:48' //2004
      '15:0302:4320:4501:3418:5223:0109:1619:0321:5613:3316:4209:32' //2005
      '20:4608:2702:2807:1500:3004:3614:5100:4003:3919:2122:3415:26' //2006
      '02:4014:1808:1713:0406:2010:2720:4106:3109:2901:1104:2421:14' //2007
      '08:2420:0013:5818:4512:0316:1102:2612:1615:1406:5610:1003:02' //2008
      '14:1401:4919:4700:3317:5021:5908:1318:0120:5712:4015:5608:52' //2009
      '20:0807:4701:4606:3023:4403:4914:0223:4902:4418:2621:4214:38' //2010
      '01:5413:3207:2912:1105:2309:2719:4205:3308:3400:1903:3420:29' //2011
      '07:4319:2213:2118:0511:1915:2501:4011:3014:2906:1109:2502:18' //2012
      '13:3301:1319:1400:0217:1821:2307:3417:2020:1611:5815:1308:08' //2013
      '19:2407:0301:0205:4622:5903:0313:1423:0202:0117:4721:0614:04' //2014
      '01:2012:5806:5511:3904:5208:5819:1205:0107:5923:4202:5819:53' //2015
      '07:0818:4612:4317:2710:4114:4801:0310:5313:5105:3308:4701:41' //2016
      '12:5500:3418:3223:1716:3120:3606:5016:4019:3811:2214:3707:32' //2017
      '18:4806:2800:2805:1222:2502:2912:4122:3001:2917:1420:3113:25' //2018
      '00:3812:1406:0910:5104:0208:0618:2004:1307:1623:0502:2419:18' //2019
      '06:3018:0311:5616:3809:5113:5800:1410:0613:0804:5508:1301:09' //2020
      '12:2323:5817:5322:3515:4719:5206:0515:5318:5210:3913:5806:57' //2021
      '18:1405:5023:4304:2021:2501:2511:3821:2900:3216:2219:4512:46' //2022
      '00:0411:4205:3610:1303:1807:1817:3003:2206:2622:1501:3518:32' //2023
      '05:4917:2711:2216:0209:1013:0923:2009:0912:1103:5907:2000:17' //2024
      '11:3223:1017:0721:4814:5718:5605:0514:5117:5109:4113:0406:04' //2025
      '17:2305:0222:5903:3920:4800:4810:5620:4223:4115:2918:5211:52' //2026
      '23:0910:4604:3909:1702:2506:2516:3702:2605:2821:1700:3817:37' //2027
      '04:5416:3110:2415:0308:1212:1522:3008:2111:2203:0806:2723:24' //2028
      '10:4122:2016:1720:5814:0718:0904:2214:1117:1108:5812:1605:13' //2029
      '';
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
  int nenchuNen = 1920;
  DateTime seinengappi = DateTime(1920, 1, 1);
  DateTime setuiribi = DateTime(1920, 1, 2);
  DateTime setuiribi2 = DateTime(1920, 1, 1);
  String nenchu = '甲子';
  String gechu = '甲子';
  String nichu = '甲子';
  String setuiriNitiS = "01";
  String setuiriJikokuS = "00:00";
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
  String seinenMoji = '1900';
  String seigatuMoji = '01';
  String seinitiMoji = '01';
  String seinengappiMoji = '1900-01-01';
  String jukkanNameYomi = 'きのえ';
  String nikkanMoji = "甲";
  String nissiMoji = '子';
  String tokugouTenMoji = '甲';
  String tokugouTiMoji = '子';
  String tentiTokugouMoji = '甲子';

  int nissuu = 1;
  int nissi = -1;

  @override
  Widget build(BuildContext context) {
    //■■画面生成のための各種データを生成する■■

    //　受けっとった　生年月日をタイトル型から文字列に変換する
    seinenMoji = titleSeinengappi.substring(0, 4);
    seigatuMoji = titleSeinengappi.substring(5, 7);
    seinitiMoji = titleSeinengappi.substring(8, 10);
    seinengappiMoji = '$seinenMoji-$seigatuMoji-$seinitiMoji';
    //　生年月日を　文字列から　DateTime型　に変換する
    DateTime datetSeinengappi = DateTime.parse(seinengappiMoji); // StringからDate

    //日柱の六十干支を算出する
    //　1900.1.1 (甲辰）から誕生日までの日数を算出する
    nissuu = datetSeinengappi.difference(date0).inDays;
    //  日干を算出する
    nikkan = nissuu % 10;
    // 十干リスト【よみ】から日干【よみ】を取り出し、空白を削除する
    jukkanNameYomi =
        jukkanYomi.substring(nikkan * 7, (nikkan + 1) * 7).trimRight();
    //　日支を算出する
    nissi = (nissuu + 10) % 12;
    // 六十干支から干支併臨を算出する
    //日柱の六十干支を算出する
    nikkanMoji = jukkan.substring(nikkan, nikkan + 1);
    nissiMoji = juunisi.substring(nissi, nissi + 1);
    nichu = "$nikkanMoji$nissiMoji";
    // 六十干支リストから日柱の六十干支を検索して、六十干支番号を算出する
    nichuNo = nanmojime(rokujukkansi, nichu);
    //生年と生月から仮の節入り日・時・分を算出する
    seinen = int.parse(seinenMoji);
    seigatu = int.parse(seigatuMoji);
    seiniti = int.parse(seinitiMoji);
    //仮の節入り日を算出する
    setuirinen = seinen;
    setuirigatu = seigatu;
    nenchuNen = seinen;
    //節入り日リストから節入り日・時刻を取得する
    setuIndex = (setuirinen - 1920) * 12 + (setuirigatu - 1);
    setuiriNitiS = setuiriNitiL.substring(setuIndex * 2, (setuIndex + 1) * 2);
    setuiriniti = int.parse(setuiriNitiS);
    setuiriJikokuS =
        setuiriJikokuL.substring(setuIndex * 5, (setuIndex + 1) * 5);
    setuiriji = int.parse(setuiriJikokuS.substring(0, 2));
    setuirihun = int.parse(setuiriJikokuS.substring(3, 5));
    //取得した節入り日・時・分から仮の節入り日を算出する
    seinengappi = DateTime(seinen, seigatu, seiniti);
    setuiribi =
        DateTime(setuirinen, setuirigatu, setuiriniti, setuiriji, setuirihun);
    setuirinitisuu = seinengappi.difference(setuiribi).inDays;
    setuiribi =
        DateTime(setuirinen, setuirigatu, setuiriniti, setuiriji, setuirihun);
    setuiribi2 = DateTime(setuirinen, setuirigatu, setuiriniti);
    setuirinitisuu = seinengappi.difference(setuiribi2).inDays + 1;
    //節入り日からの日数：節入り日と誕生日が等しいと0になる
    //節入り年月日時刻・年柱・月柱修正
    if (setuirinitisuu <= 0) {
      if (seigatu == 1) {
        setuirinen = setuirinen - 1;
        nenchuNen = seinen - 1;
      } else if (seigatu == 2) {
        nenchuNen = seinen - 1;
      } else {}
      setuirigatu = (seigatu - 2) % 12 + 1;
    } else {
      if (seigatu == 1) {
        nenchuNen = seinen - 1;
      } else {}
    }
    //節入りIndexから年柱・月柱を算出する
    setuIndex = (setuirinen - 1920) * 12 + (setuirigatu - 1);
    nenchuNo = (nenchuNen - 1900 + nenchuHosei) % 60; //年柱No.算出
    gechuNo = (setuIndex + gechuHosei) % 60;
    //節入りIndexから正しい節入り日・時刻・節入り日からの日数を算出する
    setuiriNitiS = setuiriNitiL.substring(setuIndex * 2, (setuIndex + 1) * 2);
    setuiriniti = int.parse(setuiriNitiS);
    setuiriJikokuS =
        setuiriJikokuL.substring(setuIndex * 5, (setuIndex + 1) * 5);
    setuiriji = int.parse(setuiriJikokuS.substring(0, 2));
    setuirihun = int.parse(setuiriJikokuS.substring(3, 5));
    setuiribi =
        DateTime(setuirinen, setuirigatu, setuiriniti, setuiriji, setuirihun);
    setuiribi2 = DateTime(setuirinen, setuirigatu, setuiriniti);
    setuirinitisuu = seinengappi.difference(setuiribi2).inDays + 1;
    //月柱の六十干支を算出する
    gechu = rokujukkansi.substring((gechuNo * 2), (gechuNo * 2) + 2);
    //年柱の六十干支を算出する
    nenchu = rokujukkansi.substring((nenchuNo * 2), (nenchuNo * 2) + 2);
    // 干支併臨(日)を算出する
    var nitiKansiHeirin = kansiHeirin(nichuNo, seinengappiMoji);
    // 干支併臨(月)を算出する。
    var getuKansiHeirin = kansiHeirin(gechuNo, seinengappiMoji);
    // 干支併臨(年)を算出する
    var nenKansiHeirin = kansiHeirin(nenchuNo, seinengappiMoji);
    // 天地徳合を算出する
    var tokugouTen = (nikkan + 5) % 10;
    var tokugouTi = (13 - nissi) % 12;
    tokugouTenMoji = jukkan.substring(tokugouTen, tokugouTen + 1);
    tokugouTiMoji = juunisi.substring(tokugouTi, tokugouTi + 1);
    tentiTokugouMoji = '$tokugouTenMoji$tokugouTiMoji';
    int tentiTokugouSuu = nanmojime(rokujukkansi, tentiTokugouMoji);
    var tentiTokugou = kansiHeirin(tentiTokugouSuu, seinengappiMoji);
    // 干支併臨リスト・天地徳合リストから年と年齢を生成する
    List tenunList = tenUn(nenKansiHeirin, getuKansiHeirin, nitiKansiHeirin,
        tentiTokugou, seinengappiMoji);
    // 天運リストの要素数を7にするため0を追加する
    int tenunLength = tenunList.length;
    for (int i = 0; i < (7 - tenunLength); ++i) {
      tenunList.add(0);
    }
    // 天運リストの１番目のテキスト文を作成する
    for (int i = 0; i < 7; ++i) {
      //print('■■■■■■■■■tenun:$tenun');
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

      tenunText[i] =
          '${tenunNen[i]}（${tenunKansi[i]}）年（${tenunNenrei[i]}歳）：${tenunMeiMoji[i]}';
    }

    //■■　画面を生成する　■■

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.1),
      child: Scaffold(
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
                            if (nikkan == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanKinoe(),
                                  ));
                            } else if (nikkan == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanKinoto(),
                                  ));
                            } else if (nikkan == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanHinoe(),
                                  ));
                            } else if (nikkan == 3) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanHinoto(),
                                  ));
                            } else if (nikkan == 4) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanTutinoe(),
                                  ));
                            } else if (nikkan == 5) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NikkanTutinoto(),
                                  ));
                            } else if (nikkan == 6) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanKanoe(),
                                  ));
                            } else if (nikkan == 7) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanKanoto(),
                                  ));
                            } else if (nikkan == 8) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NikkanMizunoe(),
                                  ));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const NikkanMizunoto(),
                                  ));
                            }
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TentiTokugou(),
                              ),
                            );
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
                            //titleSeinengappi: titleSeinengappi,
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
                            //setuiriJikokuS: setuiriJikokuS,
                            setuiriji: setuiriji,
                            setuirihun: setuirihun,
                            setuirinitisuu: setuirinitisuu,
                          ),
                        ),
                      );
                    },
                    child: const Text('命式を表示する'),
                  ),
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
                      Navigator.pop(context);
                    },
                    child: const Text('戻る'),
                  ),
                ),
              ),
            ],
          ),
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
