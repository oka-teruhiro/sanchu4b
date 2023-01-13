import 'package:flutter/material.dart';
import 'package:sanchu4b/main.dart';

class QuizPage extends StatelessWidget {
  QuizPage({Key? key}) : super(key: key);

  bool quizLast = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('質問1'),
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
                    ElevatedButton(onPressed: () {}, child: Text('1')),
                    ElevatedButton(onPressed: () {}, child: Text('2')),
                    ElevatedButton(onPressed: () {}, child: Text('3')),
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
            ])));
  }
}
