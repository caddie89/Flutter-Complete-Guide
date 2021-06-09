// Packages must be imported at the top of the application
// "material.dart" unlocks core features needed to run the app
import 'package:flutter/material.dart';

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
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // data here is persistent
  // State holds the data used by the build()
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  answerQuestion, // passing a pointer to the function, not the function result
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () =>
                  print('Answer 2 chosen!'), // anonymous function/method
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                print('Answer 3 chosen!');
              },
            ),
          ],
          // the <Widget>[] tells Dart it will hold a list of Widgets
        ),
      ),
    );
    // Scaffold gives a base page design, basic design, structure, and color scheme
    // Objects or Classes should always work standalone, everything for a widget
    // should be located in the same class
  }
}
