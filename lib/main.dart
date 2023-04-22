import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:sanchu4b/output/kyou_unsei.dart';
import 'package:sanchu4b/quiz/quiz_page_001.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'osirase/update.dart';
import 'output/output.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 端末の文字の大きさ設定を変えても、アプリで文字の大きさが変わらないようにする
      /*builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },*/
      // 端末の文字の大きさ設定を変えても、アプリで文字の大きさが変わらないようにする ここまで
      // DatePickerを日本語化する
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      locale: const Locale('ja', 'JP'),
      //　日本語化ここまで

      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: '天運三柱推命 ver.4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //String quizNoMoji = '1';
  String _birthday = '';
  String _birthdaya = '2000-01-01';
  String birthdayHyouji = '';
  String birthdayOld = '';
  final List<String> _birthD = [
    'yyyy/mm/dd',
    'yyyy/mm/dd',
    'yyyy/mm/dd',
    'yyyy/mm/dd',
    'yyyy/mm/dd'
  ];
  final List<String> _birthH = [
    '1 : yyyy/mm/dd ?',
    '2 : yyyy/mm/dd ?',
    '3 : yyyy/mm/dd ?',
    '4 : yyyy/mm/dd ?',
    '5 : yyyy/mm/dd ?'
  ];
  final List<String> _birthO = [
    'yyyy/mm/dd',
    'yyyy/mm/dd',
    'yyyy/mm/dd',
    'yyyy/mm/dd',
    'yyyy/mm/dd'
  ];
  final List<String> _memoH = ['メモ', 'メモ', 'メモ', 'メモ', 'メモ'];

  String _birthday0 = '';
  String _birthday1 = '';
  String _birthday2 = '';
  String _birthday3 = '';
  String _birthday4 = '';

  String _memo0 = 'メモ';
  String _memo1 = 'メモ';
  String _memo2 = 'メモ';
  String _memo3 = 'メモ';
  String _memo4 = 'メモ';
  String seinengappiMojia = '';

  //var bestQuizNoMoji;

  DateTime newDate = DateTime.now();

  DateTime date9 = DateTime(DateTime.now().year - 30);

  int item = 0;

  // shareed Preference に保存されているデータを読み込んで、_counterにセットする
  _getPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _birthday0 = prefs.getString('birthday0') ?? 'yyyy/mm/dd';
      _birthday1 = prefs.getString('birthday1') ?? 'yyyy/mm/dd';
      _birthday2 = prefs.getString('birthday2') ?? 'yyyy/mm/dd';
      _birthday3 = prefs.getString('birthday3') ?? 'yyyy/mm/dd';
      _birthday4 = prefs.getString('birthday4') ?? 'yyyy/mm/dd';
      _memo0 = prefs.getString('memo0') ?? 'メモ';
      _memo1 = prefs.getString('memo1') ?? 'メモ';
      _memo2 = prefs.getString('memo2') ?? 'メモ';
      _memo3 = prefs.getString('memo3') ?? 'メモ';
      _memo4 = prefs.getString('memo4') ?? 'メモ';
      //bestQuizNoMoji = prefs.getString('bestQuizNoMojiP') ?? '0';
    });
    _birthD.removeAt(0);
    _birthD.insert(0, _birthday0);
    _birthD.removeAt(1);
    _birthD.insert(1, _birthday1);
    _birthD.removeAt(2);
    _birthD.insert(2, _birthday2);
    _birthD.removeAt(3);
    _birthD.insert(3, _birthday3);
    _birthD.removeAt(4);
    _birthD.insert(4, _birthday4);

    _memoH.removeAt(0);
    _memoH.insert(0, _memo0);
    _memoH.removeAt(1);
    _memoH.insert(1, _memo1);
    _memoH.removeAt(2);
    _memoH.insert(2, _memo2);
    _memoH.removeAt(3);
    _memoH.insert(3, _memo3);
    _memoH.removeAt(4);
    _memoH.insert(4, _memo4);

    for (int i = 0; i < 5; i++) {
      int j = i + 1;
      _birthday = _birthD[i];
      if (_birthday == 'yyyy/mm/dd') {
        birthdayHyouji = '$j : yyyy/mm/dd ?';
      } else {
        birthdayHyouji = '$j : $_birthday 生';
      }
      _birthH.removeAt(i);
      _birthH.insert(i, birthdayHyouji);
      _birthO.removeAt(i);
      _birthO.insert(i, _birthday);
    }
    setState(() {});
  }

  //データを書き込む
  _setPrefMemo(int item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (item == 0) {
        prefs.setString('memo0', _memoH[item]);
      } else if (item == 1) {
        prefs.setString('memo1', _memoH[item]);
      } else if (item == 2) {
        prefs.setString('memo2', _memoH[item]);
      } else if (item == 3) {
        prefs.setString('memo3', _memoH[item]);
      } else if (item == 4) {
        prefs.setString('memo4', _memoH[item]);
      } else {}
    });
  }

  //データを書き込む
  _setPrefItems(int item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int j = item + 1;
    _birthD.removeAt(item);
    _birthD.insert(item, _birthday);
    _birthO.removeAt(item);
    _birthO.insert(item, _birthday);
    _birthH.removeAt(item);
    _birthH.insert(item, '$j : $_birthday 生');
    if (item == 0) {
      _birthday0 = _birthday;
      prefs.setString('birthday0', _birthD[item]);
    } else if (item == 1) {
      prefs.setString('birthday1', _birthD[item]);
    } else if (item == 2) {
      prefs.setString('birthday2', _birthD[item]);
    } else if (item == 3) {
      prefs.setString('birthday3', _birthD[item]);
    } else if (item == 4) {
      prefs.setString('birthday4', _birthD[item]);
    } else {}

    setState(() {});
  }

  //データを削除する
  _removePrefItems(int item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    seinengappiMojia = '';
    int j = item + 1;
    _birthD.removeAt(item);
    _birthD.insert(item, 'yyyy/mm/dd');
    _birthO.removeAt(item);
    _birthO.insert(item, 'yyyy/mm/dd');
    _birthH.removeAt(item);
    _birthH.insert(item, '$j : yyyy/mm/dd 生');
    _memoH.removeAt(item);
    _memoH.insert(item, 'メモ');
    if (item == 0) {
      setState(() {
        prefs.remove('birthday0');
        prefs.remove('memo0');
      });
    } else if (item == 1) {
      setState(() {
        prefs.remove('birthday1');
        prefs.remove('memo1');
      });
    } else if (item == 2) {
      setState(() {
        prefs.remove('birthday2');
        prefs.remove('memo2');
      });
    } else if (item == 3) {
      setState(() {
        prefs.remove('birthday3');
        prefs.remove('memo3');
      });
    } else if (item == 4) {
      setState(() {
        prefs.remove('birthday4');
        prefs.remove('memo4');
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('天運三柱推命 ver.4.0.49',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Next page',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Update(),
                    ));
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 4,
              ),
              Container(
                height: 44,
                width: 440,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text(
                    '易占クイズに挑戦する',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    //TODO: 易占検定画面へ飛ぶ
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage001(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 90,
                width: 440,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '天運の年を算出するには、yyyy/mm/dd ? をタップして、生年月日を入力後、＞ボタンをタップして下さい。',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 260,
                width: 440,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.tealAccent,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // 生年月日表示欄
                            SizedBox(
                                height: 44,
                                width: 174,
                                child: TextButton(
                                  child: Text(
                                    _birthH[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  onPressed: () {
                                    //ToDo　生年月日入力画面に飛ぶ
                                    _birthday = _birthD[index];
                                    if (_birthday == 'yyyy/mm/dd') {
                                      date9 = DateTime(
                                          DateTime.now().year - 30,
                                          DateTime.now().month,
                                          DateTime.now().day);
                                      //print('a:date9:$date9');
                                    } else if (_birthday == '') {
                                      date9 = DateTime(
                                          DateTime.now().year - 30,
                                          DateTime.now().month,
                                          DateTime.now().day);
                                      //print('b:date9:$date9');
                                    } else {
                                      _birthdaya =
                                          '${_birthday.substring(0, 4)}-${_birthday.substring(5, 7)}-${_birthday.substring(8, 10)}';
                                      date9 = DateTime.parse(_birthdaya);
                                      //print('c:date9:$date9');
                                    }
                                    _showCupertinoDatePicker(context, index);
                                    setState(() {});
                                  },
                                )),

                            // メモ　欄　の表示
                            SizedBox(
                              width: 70,
                              child: TextButton(
                                child: Text(
                                  _memoH[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                onPressed: () {
                                  //ToDo　メモ入力画面に飛ぶ
                                  _showInputDialog(context, index);
                                },
                              ),
                            ),

                            // 今日の運勢　ボタン
                            SizedBox(
                              height: 24,
                              width: 40,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  elevation: 0,
                                  shadowColor: Colors.red,
                                ),
                                child: const Icon(Icons.bar_chart, size: 16),
                                onPressed: () {
                                  //ToDo　今日の運勢画面に飛ぶ
                                  seinengappiMojia = _birthD[index];
                                  if (seinengappiMojia == 'yyyy/mm/dd') {
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => KyouUnsei(
                                          titleSeinengappi: seinengappiMojia,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),

                            // 性格・天地徳合　ボタン
                            SizedBox(
                              height: 24,
                              width: 40,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  elevation: 8,
                                  shadowColor: Colors.red,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                                onPressed: () {
                                  //ToDo　出力画面に飛ぶ
                                  seinengappiMojia = _birthD[index];
                                  if (seinengappiMojia == 'yyyy/mm/dd') {
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Output(
                                          titleSeinengappi: seinengappiMojia,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(flex: 2, child: Image.asset('images/main/gogyou1.png')),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  // 画面下からDatePickerを表示する
  void _showCupertinoDatePicker(BuildContext context, int i) {
    int j = i + 1;
    _birthday = _birthD[i];
    birthdayOld = _birthD[i];
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 260,
            child: Column(
              children: [
                // iOS タイプのDatePickerを表示
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.black54,
                    initialDateTime: date9,
                    minimumYear: 1921,
                    maximumYear: 2029,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (newDate) {
                      _birthday = DateFormat('yyyy/MM/dd').format(newDate);
                      birthdayHyouji = '($j : $_birthday 生';
                      //print('newDate:$newDate');
                      setState(() {});
                    },
                  ),
                ),

                // 「キャンセル」「削除」「登録」ボタン
                SizedBox(
                  //color: Colors.blue,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // キャンセル　ボタン
                      TextButton(
                        child: const Text(
                          'キャンセル',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          _birthday = birthdayOld;
                          if (_birthday == 'yyyy/mm/dd') {
                            birthdayHyouji = '$j : yyyy/mm/dd ?';
                          } else {
                            birthdayHyouji = '$j : $_birthday 生';
                          }
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                      ),

                      // 「削除」ボタン
                      TextButton(
                          child: const Text(
                            '削除',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            _birthday = _birthO[i];
                            if (_birthday == 'yyyy/mm/dd') {
                            } else {
                              //var result =
                              await showDialog<int>(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  // 削除のダイアログを表示
                                  return AlertDialog(
                                    content: Text('$_birthday を削除しますか？'),
                                    actions: <Widget>[
                                      // 「Cancel」ボタン
                                      TextButton(
                                          child: const Text(
                                            'Cancel',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          }),

                                      // 「OK」ボタン
                                      TextButton(
                                          child: const Text(
                                            'OK',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          onPressed: () {
                                            //birthdayHyouji =
                                            //   '$j : yyyy/mm/dd 生';
                                            //TODO: 削除処理検討する必要あり
                                            _removePrefItems(i);
                                            Navigator.of(context).pop();
                                            Navigator.of(context).pop();
                                            setState(() {});
                                          }),
                                    ],
                                  );
                                },
                              );
                              //print('dialog result: $result');
                            }
                          }),

                      // 「登録」　ボタン
                      TextButton(
                          child: const Text(
                            '登録',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            //TODO;
                            if (_birthday == 'yyyy/mm/dd') {
                              _birthday = DateFormat('yyyy/MM/dd')
                                  .format(DateTime.now());
                            } else {}
                            //var result =
                            await showDialog<int>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                // 登録　ダイアログを表示する
                                return AlertDialog(
                                  content: Text('$_birthday で登録しますか？'),
                                  actions: <Widget>[
                                    //「Cancel」ボタン
                                    TextButton(
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                          Navigator.of(context).pop();
                                        }),

                                    // 「OK」ボタン
                                    TextButton(
                                        child: const Text(
                                          'OK',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {
                                          //TODO: sakujo?
                                          birthdayHyouji = ' : $_birthday 生';
                                          birthdayOld = _birthday;
                                          seinengappiMojia = _birthday;
                                          //TODO:セットを検討する必要あり
                                          _setPrefItems(i);
                                          setState(() {});
                                          Navigator.of(context).pop();
                                          Navigator.of(context).pop();
                                          setState(() {});
                                        }),
                                  ],
                                );
                              },
                            );
                            //print('dialog result: $result');
                          }),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  // 画面下からDatePickerを表示する
  void _showInputDialog(BuildContext context, int i) {
    String _memo = _memoH[i];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text('タイトル'),
          content: TextField(
            decoration: InputDecoration(
              hintText: _memo,
            ),
            onChanged: (text) {
              _memo = text;
            },
          ),
          actions: <Widget>[
            TextButton(
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            TextButton(
                child: const Text(
                  '削除',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  _memo = 'メモ';
                  _memoH.removeAt(i);
                  _memoH.insert(i, _memo);
                  _setPrefMemo(i);
                  Navigator.of(context).pop();
                }),
            TextButton(
                child: const Text(
                  '登録',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  _memoH.removeAt(i);
                  _memoH.insert(i, _memo);
                  _setPrefMemo(i);
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }
}

//todo 生年月日が節入り日の時の処理
//todo 今日の運勢表示が乱れる問題
