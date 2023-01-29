import 'package:flutter/material.dart';
import 'package:sanchu4b/juuniun/0_tai.dart';
import 'package:sanchu4b/juuniun/1_yuu.dart';
import 'package:sanchu4b/juuniun/3_mokuyoku.dart';
import 'package:sanchu4b/juuniun/a_bo.dart';

class Sihei extends StatelessWidget {
  String hasira;
  String juuniUnNiti;
  String juuniUnGatu;
  String juuniUnNen;

  Sihei(
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
          '十二運：$juuniUn・四平（しへい）',
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
              title: Text('　十二運は、$juuniUn で、四平（しへい）です。'),
            ),
            const ListTile(
              title: Text(
                  '　四平とは、四旺（しおう）のような運勢の力持ちでもなく、四衰（しすい）のような運勢の力なしでもなく、中間の運勢を持っています。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/大きい石小さい石.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　十二運のうち、胎・養・沐・墓　が四平に属します。基本はこの四つですが、ここに衰・絶も加えてもいいくらいです。'),
            ),
            ListTile(
              title: Image.asset('images/juuniun/十二運の強弱.jpg'),
            ),
            ListTile(
              title: Text('　十二運は、$juuniUn　です'),
            ),
            ElevatedButton(
              child: Text(juuniUnBotton),
              onPressed: () {
                if (juuniUn == '養') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const You(),
                      ));
                } else if (juuniUn == '沐') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mokuyoku(),
                      ));
                } else if (juuniUn == '墓') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Bo(),
                      ));
                } else if (juuniUn == '胎') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tai(),
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
