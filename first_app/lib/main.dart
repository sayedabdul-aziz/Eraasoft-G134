import 'package:first_app/first_screen.dart';
import 'package:flutter/material.dart';

// Person p = Person(name: "Alice", age: 30, gender: "female");

void main() {
  runApp(MyApp());
}

// custom widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}


