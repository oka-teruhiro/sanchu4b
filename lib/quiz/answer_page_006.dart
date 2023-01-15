import 'package:flutter/material.dart';
import 'package:sanchu4b/main.dart';
import 'package:sanchu4b/quiz/quiz_page_007.dart';

class AnswerPage006 extends StatelessWidget {
  AnswerPage006({Key? key}) : super(key: key);

  bool quizLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('6. 四季と五行について'),
        ),
        body: Container(
            color: Colors.black,
            child: ListView(children: <Widget>[
              Column(children: [
                ListTile(
                  title: Image.asset('images/quiz/Q006/A0060.png'),
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
                                    //_showQuizLast(context);
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
                            ])))
              ]),
            ])));
  }
}
