import 'package:flutter/material.dart';

class Teiou extends StatelessWidget {
  const Teiou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：帝旺（ていおう）',
          //textScaleFactor: 1.0,
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
              title: Image.asset('images/juuniun/12帝.jpg'),
            ),
            const ListTile(
              title: Text('　登り切って山の頂上にいる状態を意味します。　下を見るので、人間的に丸みを帯びます。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　帝旺をもつ人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 社長を経験した会長としての丸みがある。'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② 人生のピークであり、満月である。'),
            ),
            const ListTile(
              title: Text('③ 年金生活に入る一歩手前。'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            const ListTile(
              title: Text(
                  '　とにかく、パワーと迫力と相手を圧倒させる力強さを秘めており、社会においても、どんな組織や環境にあっても活動的でどんどん新しい分野に取り組み、時に大きな勢いで発展し成功する可能性を秘めています。'),
            ),
            const ListTile(
              title: Text('　すなわち一か八かの勝負事に強く投機的で冒険的です。'),
            ),
            const ListTile(
              title: Text('　予算も派手に使います。新しい事業を立ち上げたり、起業の草創期には大変能力を発揮します。'),
            ),
            const ListTile(
              title: Text('　一方で、見境なく突進しますので、他人から嫌がられたり、大失敗をすることもあります。'),
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
