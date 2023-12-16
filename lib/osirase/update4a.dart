import 'package:flutter/material.dart';

class Update4a extends StatelessWidget {
  const Update4a({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
      'images/0.jpg',
    ];
    List<double> takasaZu = [
      0,
      0,
      0,
      0,
    ];
    List<String> moji = [
      '1.　天運の年ページに対しても、節入り時刻前後ボタンを追加しました。',
      '2.　十二運の解説に図を追加しました。',
      '3.　表示上は変化はありませんが、今後の機能追加が容易にできるように、'
          '① 画面生成部分と、画面内容データ部分を分離しました、さらに、'
          '② 画面遷移からstatefullWidgetにしました。',
      '4.　端末機に生年月日を記録できなくなったバグを修正しました。'
    ];
    List<int> iroMoji = [
      -1,
      -1,
      -1,
      -1,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第4.1版（ver.4.1.12)',
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
              itemCount: 4,
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
