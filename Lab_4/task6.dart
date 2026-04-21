import 'package:flutter/material.dart';

class Task6 extends StatefulWidget {
  @override
  _Task6State createState() => _Task6State();
}

class _Task6State extends State<Task6> {

  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 6 - StatefulWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Followed: $isFollowed"),
            Text("Score: $score"),

          ],
        ),
      ),
    );
  }
}