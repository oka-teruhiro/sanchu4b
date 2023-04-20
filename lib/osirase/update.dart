import 'package:flutter/material.dart';
import 'package:sanchu4b/osirase/profile.dart';
import 'package:sanchu4b/osirase/update1.dart';
import 'package:sanchu4b/osirase/update2.dart';
import 'package:sanchu4b/osirase/update2a.dart';
import 'package:sanchu4b/osirase/update3.dart';
import 'package:sanchu4b/osirase/update3a.dart';
import 'package:sanchu4b/osirase/update4.dart';

class Update extends StatelessWidget {
  const Update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'アップデート情報',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第4版　命式を表示できるようになりました。（2023/5/5 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update4(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第3.1版　コンセプト変更によるデザインの変更。（2022/4/18 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update3a(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text(
                        '第3版　今日の運勢がわかるようになりました。「易占検定」を追加しました。（2021/8/8 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update3(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第2.1版　軽微な修正（2021/4/18 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update2a(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第2版　天運の年がわかるようになりました。（2021/3/31 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update2(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text(
                        '第1版　生年月日を入力し、日干を算出し、おおよその性格を表示します。(2021/2/22 公開)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update1(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('プロフィール'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ));
                    },
                  ),
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
          ),
        ],
      ),
    );
  }
}
