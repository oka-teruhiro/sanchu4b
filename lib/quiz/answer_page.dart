import 'package:flutter/material.dart';
import 'package:sanchu4b/main.dart';

class AnswerPage extends StatelessWidget {
  AnswerPage({Key? key}) : super(key: key);

  bool quizLast = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('1. 易とは'),
        ),
        body: Container(
            color: Colors.black,
            child: ListView(children: <Widget>[
              Column(children: [
                ListTile(
                  title: Image.asset('images/quiz/Q001/A0010.png'),
                ),
                ListTile(
                  title: Image.asset('images/quiz/Q001/A0011.png'),
                ),
                ListTile(
                  title: Image.asset('images/quiz/Q001/A0012.png'),
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      //ElevatedButton(onPressed: () {}, child: Text('1')),
                      //ElevatedButton(onPressed: () {}, child: Text('2')),
                      //ElevatedButton(onPressed: () {}, child: Text('3')),
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
                                    //Navigator.push(
                                    //context,
                                    //MaterialPageRoute(
                                    //builder: (context) => QuizPage(
                                    //quizNoMoji: quizNoMoji,
                                    //bestQuizNoMoji: bestQuizNoMoji,
                                    //),
                                    //),
                                    //);
                                  }
                                },
                              ),
                            ])))
              ]),
            ])));
  }
}
