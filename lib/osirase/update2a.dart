import 'package:flutter/material.dart';

class Update2a extends StatelessWidget {
  const Update2a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          '第2.1版（2021.4.18）',
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
            title: Text(
              '天地徳合/干支併臨 画面でnullが表示されるのを修正',
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          const ListTile(
            title: Text('挿絵のサイズを調整'),
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
