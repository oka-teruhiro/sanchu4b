import 'package:flutter/material.dart';

class Mokuyoku extends StatelessWidget {
  const Mokuyoku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '十二運：沐浴（もくよく）',
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
              title: Image.asset('images/juuniun/12沐.jpg'),
            ),
            const ListTile(
              title: Text('　地上に誕生し、産湯につかることを意味します。'),
            ),
            //ListTile(
            //  title: Image.asset('images/nikkan/丙_太陽.jpg'),
            //),
            const ListTile(
              title: Text('　沐浴を持つ人の特徴は、'),
            ),
            const ListTile(
              title: Text(
                  '①　誕生により、人々から祝福されるが、生を受けたので、先祖の罪も背負い、死に向かう。喜びと悲しみの表裏一体の星'),
            ),
            //ListTile(
            // title: Image.asset('images/nikkan/丙_朝日.jpg'),
            //),
            const ListTile(
              title: Text('② 生まれたばかりで、力がなく、経験もないので、迷いが生ずる。迷いの星。決断できない星。'),
            ),
            const ListTile(
              title: Text('③ 思慮深い星。先の先まで読む星。'),
            ),
            const ListTile(
              title: Text('④ 恋に喜び、恋になく星。色恋の星。'),
            ),
            const ListTile(
              title: Text('　また、能力面は、'),
            ),
            const ListTile(
              title: Text('　ものの見方が新しく、時流についていける能力があり、変化についていける能力があります。'),
            ),
            const ListTile(
              title: Text('　アイディアが新鮮でどんどんと新しい発想をし、将来のビジョンを描くのが得意です。'),
            ),
            const ListTile(
              title: Text(
                  '　商売の方法も人とは異なった変化に富む方法でやってのけます。したがって、次世代の商品コンセプトを企画したり、新製品の開発などを担当すれば能力を発揮しますが、必ず実利面をサポートする人が必要となります。'),
            ),
            const ListTile(
              title: Text(
                  '　一方で新しいものばかりに気をとられて、予算の使い方がいきあたりばったりで、実際的に実利に結び付けることができないこともあります。'),
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
