import 'package:flutter/material.dart';
import 'package:sanchu4b/main.dart';
import 'package:sanchu4b/quiz/quiz_page_007.dart';

class AnswerPage007 extends StatelessWidget {
  AnswerPage007({Key? key}) : super(key: key);

  bool quizLast = true;
  String kotaeMoji = '全問終了しました。次のアップデートでさらに問題を追加しますので、またチャレンジしてください。お疲れ様でした。';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('7. 季節と五行'),
        ),
        body: Container(
            color: Colors.black,
            child: ListView(children: <Widget>[
              ListTile(
                title: Image.asset('images/quiz/Q007/A0070.png'),
              ),
              ListTile(
                title: Image.asset('images/quiz/Q006/A0061.png'),
              ),
              ListTile(
                title: Image.asset('images/quiz/Q006/A0062.png'),
              ),
              SizedBox(
                  height: 60,
                  child: Container(
                      constraints: const BoxConstraints.expand(),
                      color: Colors.black,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: const Text('<< ホームページ'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MyHomePage(
                                        title: '',
                                      ),
                                    ));
                              },
                            ),
                            ElevatedButton(
                              child: const Text('次の問題 >'),
                              onPressed: () {
                                if (quizLast == true) {
                                  _showQuizLast(context);
                                } else {
                                  //quizNoMoji = (quizNo + 2).toString();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizPage007(
                                          //quizNoMoji: quizNoMoji,
                                          //bestQuizNoMoji: bestQuizNoMoji,
                                          ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ]))),
            ])));
  }

  void _showQuizLast(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.blue,
            height: 250,
            child: Column(
              children: [
                SizedBox(
                  height: 230,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        child: Text(
                          kotaeMoji,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                title: '',
                              ),
                            ),
                          );
                        },
                      ),
                      TextButton(
                        child: const Text(
                          'OK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                title: '',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
