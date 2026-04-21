import 'package:flutter/material.dart';

class Task8 extends StatefulWidget {
  @override
  _Task8State createState() => _Task8State();
}

class _Task8State extends State<Task8> {

  int score = 0;

  void increaseScore() {
    setState(() {
      score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 8 - Material Card"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Score"),
                subtitle: Text("$score Likes"),
              ),
            ),

            SizedBox(height: 20),

            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: increaseScore,
            ),

          ],
        ),
      ),
    );
  }
}