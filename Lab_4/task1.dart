import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1 - Safe Scaffold"),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "SafeArea Example",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}