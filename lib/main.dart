// Packages must be imported at the top of the application
// "material.dart" unlocks core features needed to run the app
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
// Default function that will be run first - automatically executed
// "runApp()" is provided by "material.dart" - function that takes a widget
// and runs it on the screen - needs to extended either StatelessWidget or
// StatefulWidget
// runApp(MyApp());
//}

void main() => runApp(MyApp());

// StatelessWidget allows for the creation of custom widgets
// "build" only takes one positional argument of class BuildContext, the argument
// is labeled "ctx"
// The "build()" method is located in the "Widget" class
// Returns "MaterialApp()" class which takes multiple optional named arguments
// "MaterialApp()" is provided by "material.dart", it is utilizing a constructor
// "home" is the core widget which flutter will bring onto the screen

class MyApp extends StatefulWidget {
  // data here can be rebuilt

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // data here is persistent
  // State holds the data used by the build()
  // Map where 'questionText' is the key and 'answers' is the value
  // Map within a Map where 'text' is the key and 'score' is the value
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    // _totalScore = _totalScore + score - this performs the same operation
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    // setState() updates Widget by calling the build() again
    // build() rebuilds the Widget Tree
    // Flutter is not going to re-render everything on the screen

    if (_questionIndex < _questions.length) {
      // the length is 3
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // Ternary expressions - condition ? x1 expression (only column) : else block
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
    // Scaffold gives a base page design, basic design, structure, and color scheme
    // Objects or Classes should always work standalone, everything for a widget
    // should be located in the same class
  }
}
