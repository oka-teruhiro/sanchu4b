import 'package:flutter/material.dart';

class Update4e extends StatelessWidget {
  const Update4e({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg',
      'images/main/取説4g.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
    ];
    List<double> takasaZu = [
      0,
      370,
      0,
      0,
      0,
      0,
    ];
    List<String> moji = [
      '概要',
      '詳細',
      '　通変星の詳細な解説（総論）を追加しました。',
    ];
    List<int> iroMoji = [
      -1407770,
      -1407770,
      -1,
      -1,
      -1,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第4.5版（ver.4.5.1)',
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
              itemCount: 3,
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
