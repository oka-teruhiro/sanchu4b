import 'package:flutter/material.dart';

class Update4b extends StatelessWidget {
  const Update4b({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg',
      'images/main/取説4c.jpg',
      'images/main/取説4d.jpg',
      'images/0.jpg',
      'images/0.jpg',
    ];
    List<double> takasaZu = [
      0,
      340,
      370,
      0,
      0,
    ];
    List<String> moji = [
      '概要',
      '',
      '詳細',
      '1.　多くの方から結婚運や子供運について相談を受けます。これらは、通変星を図で表示すること'
          'によって、簡単に判断することができます。今回の「命式チャート」ページを追加しました'
          '。「命式」ページ右下にある「チャート」ボタンをタップすると、そのページに入ることが'
          'できます。',
      '2.　「命式」ページにおいて、節入り時刻が正しく表示されない不具合を修正しました。'
    ];
    List<int> iroMoji = [
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
          '第4.2版（ver.4.2.0)',
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
              itemCount: 5,
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
