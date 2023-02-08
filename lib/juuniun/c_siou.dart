import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sanchu4b/juuniun/2_%20tyousei.dart';
import 'package:sanchu4b/juuniun/4_kantai.dart';
import 'package:sanchu4b/juuniun/5_kenroku.dart';
import 'package:sanchu4b/juuniun/6_%20teiou.dart';

class Siou extends StatelessWidget {
  String hasira;
  String juuniUnNiti;
  String juuniUnGatu;
  String juuniUnNen;

  Siou(
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
          '十二運：$juuniUn・四旺（しおう）',
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
              title: Text('　十二運は、$juuniUn で、四旺（しおう）です。'),
            ),
            const ListTile(
              title: Text('　四旺とは、運勢の力持ち、重いものをもって進んでいくような運勢を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/大きい石小さい石.jpg'),
            ),
            const ListTile(
              title: Text('　十二運のうち、長・冠・建・帝が四旺に属します。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の強弱.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　活発で、勇気があり、エネルギッシュ、行動力あり、負けず嫌い、過去のことをくよくよしなく、諦めも早い、といった特徴があります。'),
            ),
            const ListTile(
              title: Text(
                  '　一方で、短気、反省が足りない、準備不足、指示や命令されるのが嫌い、できればはやく独立したいといった特徴もあります。'),
            ),
            const ListTile(
              title: Text('　とにかく勢いがあります。'),
            ),
            const ListTile(
              title: Text(
                  '　例えば、町内会で掃除をすれば、どんどん掃除し早く済ませますが、綺麗になっているか振り返ることはありません。'),
            ),
            const ListTile(
              title: Text(
                  '　また、町内会の役員の選出などでは、役職、地位に弱く、おだてられると木に登るタイプなので、すぐ引き受けてしまいます。'),
            ),
            const ListTile(
              title: Text(
                  '　川を下流から上流にのぼっていくような勢いを持っています。流れに逆行することもいといません。人のできないようなことをしていきます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/上流下流.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　また、荷物をもってエレベータの前に立っている場合、エレベータが来るのを待つぐらいなら、階段で行ってしまいます。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/エレベータ階段.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　四旺の人がついしてしまう過ちがあります。自分の追うべき荷物を、四衰の人に負わせる時、自分ができるからといって人もできるわけではありません。相手にとっては、大きな重荷になることがあります。言動や行動に気をつけましょう。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/自分の荷をあげる.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　強いその運勢を自分だけのために使うと、周りの人を意図せずに傷つけてしまうところがあります。自分ができるからといって、周りの人もできるわけではありません。結果、周りの人からうとまれ、運勢を失います。その強い運勢は、積極的に他の人を助けるために天が与えたものと思って、他の為に使っていくことによって、より一層開運していきます。'),
            ),
            ListTile(
              title: Text('　十二運は、$juuniUn　です'),
            ),
            ElevatedButton(
              child: Text(juuniUnBotton),
              onPressed: () {
                if (juuniUn == '長') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tyousei(),
                      ));
                } else if (juuniUn == '冠') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kantai(),
                      ));
                } else if (juuniUn == '建') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kenroku(),
                      ));
                } else if (juuniUn == '帝') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Teiou(),
                      ));
                } else {
                  if (kDebugMode) {
                    print('■■■■■■■■■エラーだよ');
                  }
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
