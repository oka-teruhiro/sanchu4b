import 'package:flutter/material.dart';

class Update4 extends StatelessWidget {
  const Update4({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg',
      'images/main/取説4a.jpg',
      'images/main/取説4b.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
    ];
    List<double> takasaZu = [
      0,
      340,
      370,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
    ];
    List<String> moji = [
      '■概要',
      '',
      '① 万年暦（1920年〜2029年）の節入り日時データをアプリ内に搭載しました。',
      '② 1項に伴って、月の柱、年の柱の天干地支を算出でき、命式を算出できるようになりました。',
      '③ カルテ（蔵干・通変星・十二運）を表示できるようになりました。',
      '④ 十二運の鑑定結果の解説を見ることができるよになりました。',
      '⑤ 天運の年で月の柱の干支併臨の年を表示できるようになりました。',
      '⑥ ネットに接続していない状態でも、アプリを使用できるようになりました。',
      '⑦ 広告表示しないようになりました。',
      '⑧ webアプリで動作するようになりました。iPhone でも使えるようになりました。',
      '■バージョンアップの動機',
      '　第3.1版のアップデート後、2022年5月1日、膿胸で救命救急搬送され、5月20日まで入院したことを契機として、いつまでもある命ではないと感じました。当初自分が楽しくて始めたアプリ開発でしたが、本経験後、アプリ開発の動機が大きく変化しました。',
      '　具体的には、広告欄を除去して、万民に愛されるアプリにしようと思わされました。また、私が得た四柱推命のノウハウをアプリに入れ、いつでもどこでも、利用できるように、私が死んだのちも、継続して使えるように、大げさに表現すると、アプリに命を吹き込もうと考え、アップデートに取り組みました。　',
      '■詳細',
      '　ホームページ　https://okatoku331.net/sanchu4/ を参照ください。',
      '■今後の課題',
      '　通変星・空乏に解説を加える',
      '　　　　　　　　　以上'
    ];
    List<int> iroMoji = [
      -1407770,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1407770,
      -1,
      -1,
      -1407770,
      -1,
      -1407770,
      -1,
      -1,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第4版　(ver.4.1.0)',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            //height: 400,
            child: ListView.builder(
              itemCount: 18,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: takasaZu[index],
                      child: ListTile(
                        //tileColor: Colors.indigo,
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(zu[index]),
                        ),
                        tileColor: Colors.black,
                      ),
                    ),
                    ListTile(
                      tileColor: Colors.black,
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          moji[index],
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            color: Color(iroMoji[index]),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 90,
              height: 36,
              child: ElevatedButton(
                child: const Text('戻る'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
