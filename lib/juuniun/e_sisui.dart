import 'package:flutter/material.dart';
import 'package:sanchu4b/juuniun/7_sui.dart';
import 'package:sanchu4b/juuniun/8_byou.dart';
import 'package:sanchu4b/juuniun/9_si.dart';
import 'package:sanchu4b/juuniun/b_zetu.dart';

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
        title: const Text(
          '十二運：四衰（しすい）',
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
            ListTile(
              title: Text(hasiraBun),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　四旺（しすい）です。'),
            ),
            const ListTile(
              title: Text(
                  '　四衰とは、運勢の力なし,少しの荷物を持つのがやっといった運勢を持っています。力なしといっても必ずしも悪いわけではありません。十二運のうち、衰・病・死・絶が四衰に属します。基本はこの四つですが、実際には、衰や絶は、四平（しへい）レベルの運勢を持っています。'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text(
                  '　ちみつで、先の先を考え、計算強く、よく悔い改め、二度と同じ失敗は起こしません。石橋をたたいて渡るように何事に対しても慎重です。'),
            ),
            const ListTile(
              title: Text('　一方で、取り越し苦労しやすく、決定できず、神経質といった側面もあります。'),
            ),
            const ListTile(
              title: Text(
                  '　例えば、町内会で清掃をすれば、掃除したところを振り返り、本当に綺麗になったか、何度も確認するので、進み方は遅くなります。'),
            ),
            const ListTile(
              title: Text(
                  '　また、町内会の役員選出などでは、おだてられて引き受けることはありません。引き受けるにしても、日曜と月曜だけだよという具合に必ず条件を取ろうとします。'),
            ),
            const ListTile(
              title: Text('　勢いがないので、川を上流から下流へ下るように少ない労力で大きな効果を狙います。流れに逆らいません。'),
            ),
            const ListTile(
              title: Text(
                  '　また、荷物をもってエレベータの前に立っている場合、階段を使うことはありません。エレベータが来るまで待ちます。'),
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
                  print('■■■■■■■■■エラーだよ');
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
