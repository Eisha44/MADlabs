import 'package:flutter/material.dart';

class Task7 extends StatefulWidget {
  @override
  _Task7State createState() => _Task7State();
}

class _Task7State extends State<Task7> {

  bool isFollowed = false;
  int score = 0;

  void followUser() {
    setState(() {
      isFollowed = !isFollowed;
    });
  }

  void likeUser() {
    setState(() {
      score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 7 - Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Likes: $score"),

            ElevatedButton(
              onPressed: followUser,
              child: Text(isFollowed ? "Following" : "Follow"),
            ),

            IconButton(
              onPressed: likeUser,
              icon: Icon(Icons.thumb_up),
            ),

          ],
        ),
      ),
    );
  }
}