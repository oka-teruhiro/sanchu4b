import 'package:flutter/material.dart';
import 'package:sanchu4b/main.dart';
import 'package:sanchu4b/quiz/quiz_page_002.dart';

import 'answer_page_001.dart';

// ignore: must_be_immutable
class QuizPage001 extends StatelessWidget {
  QuizPage001({Key? key}) : super(key: key);

  bool quizLast = false;
  int seikai = 2;
  String kotae = 'x';
  String kotaeMoji = 'a';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('1. 易とは'),
        ),
        body: Container(
            color: Colors.black,
            child: Column(children: [
              ListTile(
                title: Image.asset('images/quiz/Q001/Q001.png'),
                //title: Image.network(
                //'https://okatoku331.net/wp-content/uploads/2023/01/Q001-1024x1018.png',
                //),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (seikai == 1) {
                            kotae = 'o';
                          } else {
                            kotae = 'x';
                          }
                          _showKotae(context);
                        },
                        child: const Text('1')),
                    ElevatedButton(
                        onPressed: () {
                          if (seikai == 2) {
                            kotae = 'o';
                          } else {
                            kotae = 'x';
                          }
                          _showKotae(context);
                        },
                        child: const Text('2')),
                    ElevatedButton(
                        onPressed: () {
                          if (seikai == 3) {
                            kotae = 'o';
                          } else {
                            kotae = 'x';
                          }
                          _showKotae(context);
                        },
                        child: const Text('3')),
                  ],
                ),
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
                                  //_showQuizLast(context);
                                } else {
                                  //quizNoMoji = (quizNo + 2).toString();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizPage002(
                                          //quizNoMoji: quizNoMoji,
                                          //bestQuizNoMoji: bestQuizNoMoji,
                                          ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ])))
            ])));
  }

  _showKotae(BuildContext context) {
    //var kotae = 'o';
    //var kotaeMoji = '?';
    if (kotae == 'o') {
      kotaeMoji = 'すばらしい！正解です。';
    } else {
      kotaeMoji = '残念！不正解です。';
    }

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.blue,
            height: 120,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
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
                          if (kotae == 'o') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AnswerPage001(
                                    //quizNoMoji: quizNoMoji,
                                    //bestQuizNoMoji: bestQuizNoMoji,
                                    ),
                              ),
                            );
                          } else {
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                      TextButton(
                        child: const Text(
                          'OK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () {
                          if (kotae == 'o') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AnswerPage001(
                                    //quizNoMoji: quizNoMoji,
                                    //bestQuizNoMoji: bestQuizNoMoji,
                                    ),
                              ),
                            );
                          } else {
                            Navigator.of(context).pop();
                          }
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
