// Packages must be imported at the top of the application
// "material.dart" unlocks core features needed to run the app
import 'package:flutter/material.dart';

void main() {
  // Default function that will be run first
  // "runApp()" is provided by "material.dart"
  runApp(MyApp());
}

// StatelessWidget allows for the creation of custom widgets
// "build" only takes one positional argument of class BuildContext, the argument
// is labeled "ctx"
// The "build()" method is located in the "Widget" class
// Returns "MaterialApp()" class which takes multiple optional named arguments
// "MaterialApp()" is provided by "material.dart", it is utilizing a constructor
// "home" is the core widget which flutter will bring onto the screen

class MyApp extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return MaterialApp(home: Text("Hello!"));
  }
}
