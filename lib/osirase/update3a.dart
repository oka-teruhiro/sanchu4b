import 'package:flutter/material.dart';

import 'consept.dart';

class Update3a extends StatelessWidget {
  const Update3a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第3.1版（2022.4.18）',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            title: Text('■概要'),
          ),
          const ListTile(
            title:
                Text('１．アプリのコンセプトを、「占い」から、「易占の学習」に変更した。それにともない、ホームページのデザインを変更'),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
              child: ElevatedButton(
                child: const Text('アプリのコンセプト詳細'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Consept(),
                      ));
                },
              ),
            ),
          ),
          const ListTile(
            title: Text('２．全体の表示をダークモードにして、今日の運勢のページを見やすくした。'),
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
        ],
      ),
    );
  }
}
