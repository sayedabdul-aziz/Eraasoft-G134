import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.deepOrange),
        title: Text(
          'First Screen',
          style: TextStyle(fontSize: 22, color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Text(
          "My First App",
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
