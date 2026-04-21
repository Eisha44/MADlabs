import 'package:flutter/material.dart';
// import 'task1.dart';
// import 'task2.dart';
import 'task3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     
      home: Task3(), 
    );
  }
}