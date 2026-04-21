import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 5:SizedBox Spacing"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(radius: 50),

            SizedBox(height: 20),

            Text(
              "Eisha",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 10),

            Text("Flutter Developer"),

          ],
        ),
      ),
    );
  }
}