import 'package:flutter/material.dart';

class Update4d extends StatelessWidget {
  const Update4d({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg',
      'images/main/取説4e.jpg',
      'images/main/取説4f.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
    ];
    List<double> takasaZu = [
      0,
      370,
      370,
      0,
      0,
      0,
    ];
    List<String> moji = [
      '概要',
      '',
      '詳細',
      '1.　多くの方から,今日の運勢だけではなく、明日やその後の一週間の運勢を知りたいとか、'
          '昨日はトラブルが多かったけど占いではどういう運勢だったか確認したいとか、'
          '要望がありましたので、それに応えるべく、機能追加いたしました。',
      '2.　上記のように、ページの下の方にある4つのボタンをタップすることで、'
          '鑑定日を変化させることができます。'
          '日の＋−は、1日ずつ、月の＋−は、30日ずつ増減させることができます。',
      '3.　今回のアップデートで、プロバイダー＆モデル形式で画面を変化させるスキルを習得できました。'
          '要望をよせていただいた皆様に感謝申し上げます。',
    ];
    List<int> iroMoji = [
      -1407770,
      -1,
      -1407770,
      -1,
      -1,
      -1,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第4.4版（ver.4.4.2)',
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
              itemCount: 6,
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
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: SizedBox(
          //     width: 300,
          //     height: 36,
          //     child: ElevatedButton(
          //       child: const Text('命式チャートページ（工事中）'),
          //       onPressed: () {
          //         // Navigator.push(
          //         //     context,
          //         //     MaterialPageRoute(
          //         //       builder: (context) => const MeisikiChartPage2(),
          //         //     ));
          //       },
          //     ),
          //   ),
          // ),
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
