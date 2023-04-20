import 'package:flutter/material.dart';
import 'package:sanchu4b/juuniun/juni_7_sui.dart';
import 'package:sanchu4b/juuniun/juni_8_byou.dart';
import 'package:sanchu4b/juuniun/juni_9_si.dart';
import 'package:sanchu4b/juuniun/juni_b_zetu.dart';

class Sisui extends StatelessWidget {
  String hasira;
  String juuniUnNiti;
  String juuniUnGatu;
  String juuniUnNen;

  Sisui(
      {Key? key,
      required this.hasira,
      required this.juuniUnNiti,
      required this.juuniUnGatu,
      required this.juuniUnNen})
      : super(key: key);

  String hasiraBun = '';
  String juuniUn = '';
  String juuniUnBotton = '';

  @override
  Widget build(BuildContext context) {
    if (hasira == '日') {
      hasiraBun = '　日の柱の十二運なので、下記の特徴を持っています。';
      juuniUn = juuniUnNiti;
    } else if (hasira == '月') {
      hasiraBun = '　月の柱は、日の柱の隣なので、下記の特徴を多少持ちます。';
      juuniUn = juuniUnGatu;
    } else {
      hasiraBun = '　年の柱は、日の柱から離れているので、下記の特徴をわずかに持ちます。';
      juuniUn = juuniUnNen;
    }
    juuniUnBotton = 'さらに『$juuniUn』を詳しくみる ';

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          '十二運：$juuniUn・四衰（しすい）',
          textScaleFactor: 1.0,
          style: const TextStyle(
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
            ListTile(
              title: Text(hasiraBun),
            ),
            ListTile(
              title: Text('　十二運は、$juuniUn で、四旺（しすい）です。'),
            ),
            const ListTile(
              title: Text('　四衰とは、運勢の力なし,少しの荷物を持つのがやっと、といった運勢を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/大きい石小さい石.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　十二運のうち、衰・病・死・絶が四衰に属します。基本はこの四つですが、実際には、衰や絶は、四平（しへい）レベルの運勢を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の強弱.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　力なしといっても必ずしも悪いわけではありません。緻密で、先の先を考え、計算強く、よく悔い改め、二度と同じ失敗は起こさないように心がけます。石橋をたたいて渡るように何事に対しても慎重です。'),
            ),
            const ListTile(
              title: Text('　一方で、神経質で、取り越し苦労しやすく、なかなか決定できないといった側面もあります。'),
            ),
            const ListTile(
              title: Text(
                  '　町内会で清掃をすることに例えると、掃除したところを振り返り、本当に綺麗になったか、何度も確認するので、進み方は遅くなります。'),
            ),
            const ListTile(
              title: Text(
                  '　また、町内会の役員選出などでは、おだてられて引き受けることはありません。できる限り避けようとします。引き受けるにしても、日曜と月曜だけだよという具合に必ず条件を取ろうとします。'),
            ),
            const ListTile(
              title: Text('　勢いがないので、川を上流から下流へ下るように少ない労力で大きな効果を狙います。流れに逆らいません。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/上流下流.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　また、荷物をもってエレベータの前に立っている場合、階段を使うことはありません。エレベータが来るまで待ちます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/エレベータ階段.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　運勢が弱い分、関西の泣き婆さんのようになりやすいです。なので発想の転換が必要です。運勢が弱いといって嘆くことはありません。運勢が強い人にはできない才能があります。それは、人の痛みを理解し、親身になって寄り添ってあげられることです。より辛い立場や環境にいる人の為に、寄り添うことが開運方法です。ちなみに易者には、このタイプが向いています。'),
            ),
            ListTile(
              title: Text('　十二運は、$juuniUn　です'),
            ),
            ElevatedButton(
              child: Text(juuniUnBotton),
              onPressed: () {
                if (juuniUn == '衰') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Sui(),
                      ));
                } else if (juuniUn == '病') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Byou(),
                      ));
                } else if (juuniUn == '死') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Si(),
                      ));
                } else if (juuniUn == '絶') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Zetu(),
                      ));
                } else {
                  //print('■■■■■■■■■エラーだよ');
                }
              },
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
