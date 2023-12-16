import 'package:flutter/material.dart';
import 'package:sanchu4b/main.dart';
import 'package:sanchu4b/quiz/quiz_page_004.dart';

class AnswerPage003 extends StatelessWidget {
  const AnswerPage003({super.key});

  final bool quizLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('3. 四柱推命の始まり'),
        ),
        body: Container(
            color: Colors.black,
            child: ListView(children: <Widget>[
              Column(children: [
                ListTile(
                  title: Image.asset('images/quiz/Q003/A0030.png'),
                ),
                ListTile(
                  title: Image.asset('images/quiz/Q003/A0031.png'),
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
                                        builder: (context) => QuizPage004(
                                            //quizNoMoji: quizNoMoji,
                                            //bestQuizNoMoji: bestQuizNoMoji,
                                            ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ])))
              ]),
            ])));
  }
}
