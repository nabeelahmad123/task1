import 'package:aurora_solutions_task/Login.dart';
import 'package:aurora_solutions_task/Register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange,
        backgroundColor: Colors.blue,
      ),
      home: Register(),
    );
  }
}
