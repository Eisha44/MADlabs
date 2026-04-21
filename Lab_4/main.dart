import 'package:flutter/material.dart';
// import 'task1.dart';
//  import 'task2.dart';
// import 'task3.dart';
// import 'task4.dart';
// import 'task5.dart';
// import 'task6.dart';
// import 'task7.dart';
import 'task8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interactive Profile Dashboard',

      
      // home: Task1(),
      // home: Task2(),
        // home: Task3(),
      // home: Task4(),
      // home:Task5(),
      // home: Task6(),
      // home: Task7(),
      home: Task8(),
    );
  }
}