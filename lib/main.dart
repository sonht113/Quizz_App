import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex == 1) {
      setState(() {
        _questionIndex = 0;
      });
    } else {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite food?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quizz App',
          ),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
