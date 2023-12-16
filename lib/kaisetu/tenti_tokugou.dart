import 'package:flutter/material.dart';

class TentiTokugou extends StatelessWidget {
  const TentiTokugou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '天地徳合/干支併臨とは',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            title: Text(
              '　天地徳合（てんちとくごう）/干支併臨（かんしへいりん）とは、'
              '人生における天の上昇気流(天の風)が吹き、大飛躍を遂げることが出来る時を示します。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              //color: Colors.white70,
              child: ListTile(
                title: Image.asset('images/tentitokugou/anehaturu1.jpg'),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　天の上昇気流はよく、アネハ鶴がヒマラヤ山脈を越えていく様子に例えられます。'
              '繁殖を終えたアネハ鶴は、越冬のためにシベリアやチベットからインドへと渡る際、'
              '8,000メートル級の山々が連なるヒマラヤ山脈を越えていかなければなりません。'
              '鶴自身の力だけではとても不可能ですが、渓谷に発生する台風並の強い上昇気流を'
              '巧みに利用して越えていきます。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          ListTile(
            title: Image.asset('images/tentitokugou/anehaturu.jpg'),
          ),
          const ListTile(
            title: Text(
              '　同じように、人の努力だけでは越えられない壁も、この時吹く天の上昇気流に'
              'うまく乗ることによって、大きな飛躍を遂げることができるのです。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　天地徳合は60年に一度、干支併臨は60年に三度存在し、この年と前後1年、'
              '合わせた3年間がその期間になります。ところで易学の世界では、立春'
              '（年の節入日：おおよそ2月4日）を一年の始まり、節分（立春の一日前の日）を'
              '一年の終わりとみます。例えば天地徳合が2022年ならば、'
              '2021年立春～2023年節分（2021/2/3～2024/2/3)が天運の期間となります。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　天の上昇気流が吹くからといって、自分の努力が不要になる訳ではありません。'
              '準備なく飛び込んだ鶴は風の強さにたじろぎ、上昇気流に飛び込めず、'
              'ケガをしてしまうこともあります。しかし、体力を蓄え再び挑戦し、'
              '強い上昇気流の中をさらに羽ばたいて高度を上げていくのです。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Image.asset('images/tentitokugou/anehaturu2.jpg'),
            ),
          ),
          const ListTile(
            title: Text(
              '　同様に、天運期間を迎えるにあたって、自身の準備を怠らないことが大切です。'
              '天運期間には、自分の努力ではなんともし難い、環境の大きな変化が予想されます。'
              'そこで躊躇することなく、チャンスととらえ、今までの苦労はこの時のためにあった'
              'ぐらいの気持ちで果敢にチャレンジしましょう。'
              'どこに天が準備した贈り物があるかわかりません。'
              '身の回りの小さな変化も見逃さず、ここに天の意向があるかもしれないと思って'
              '関心を持ちましょう。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '　表示されている年齢は、天地徳合/干支併臨の立春日の満年齢を示しています。',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text(''),
          ),
          ElevatedButton(
            child: const Text('戻る'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const ListTile(
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
