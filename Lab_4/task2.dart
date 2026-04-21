import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2:Avatar Header"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}