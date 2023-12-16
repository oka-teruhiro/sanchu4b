import 'package:flutter/material.dart';

class Setuiribi extends StatelessWidget {
  const Setuiribi({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> zu = [
      'images/main/taxi.png',
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
      'images/0.jpg',
    ];
    List<double> takasaZu = [
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
      0,
      0,
    ];
    List<String> moji = [
      '　節入り日時とは、簡単にいうと、四柱推命で使う暦（こよみ）の月の始まり日時を意味します。',
      '　誕生日がこの節入り日に一致する方で、この節入り時刻前に生まれている場合は、月の柱の天干地支を前の月として計算する必要があります。',
      '①　節入り時刻よりも前に誕生した方は、右上の「節入り時刻前」ボタンを押してください。',
      '②　節入り時刻よりも後に誕生した方は、このままの命式表になります。',
      '③　誕生時刻がわからない方は、「節入り時刻前」ボタンも押して2種類の命式表で鑑定し比べ、自分にしっくりくる命式表で鑑定してください。',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '　　　　　　　　　以上'
    ];
    List<int> iroMoji = [
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
      -1,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '節入り日時とは',
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
                        tileColor: Colors.black,
                        //tileColor: Colors.cyan,
                        title: Image.asset(zu[index]),
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
          ElevatedButton(
            child: const Text('戻る'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          // Ads
        ],
      ),
    );
  }
}
