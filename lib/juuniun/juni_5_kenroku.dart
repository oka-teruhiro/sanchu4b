import 'package:flutter/material.dart';

class Kenroku extends StatelessWidget {
  const Kenroku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：建禄（けんろく）',
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
              title: Image.asset('images/juuniun/12建.jpg'),
            ),
            const ListTile(
              title: Text(
                  '　山登りで例えると八合目、九合目を登っている状態を意味します。ここまで来たら登るっきゃないと強力に頂上を目指す思考があります。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　建禄を持つ人の特徴は、'),
            ),
            const ListTile(
              title: Text('① 無から有を生ずる星。開拓者の星。'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② スピーディな星。前へ前への星。'),
            ),
            const ListTile(
              title: Text('③ 立ち上がりが早い星。反省できない星。'),
            ),
            const ListTile(
              title: Text('④ 社長として責任感を持つ星。体を張って生きる星。'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            const ListTile(
              title: Text(
                  '　社会の厳しさと自分の能力をよく知っているので、大変現実的で、物事の見方がシビアで大地に根をおろした考え方をします。社会や環境を判断する冷静な目を持っており、無謀な行動をすることはありませんので、人からだんだんと信用されるようになります。'),
            ),
            const ListTile(
              title: Text('　着実に一歩一歩ビジネスを成功させ、途中で投げやりになることはありません。'),
            ),
            const ListTile(
              title: Text('　金銭感覚も優れているので、利益を生み出すのが、得意です。'),
            ),
            const ListTile(
              title: Text(
                  '　したがって、理解のあるトップがいれば、ある事業の全部を任せても良い能力があります。新しく会社を起こしても大きく失敗したり、損害を被ることはありません。'),
            ),
            const ListTile(
              title: Text('　一方現実的すぎて、少し人間的に柔らかみがなく目先の利益にとらわれる傾向があります。'),
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
