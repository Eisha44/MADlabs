import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 4 - Expanded Layout"),
      ),
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 20),

            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),

            SizedBox(height: 20),

            Row(
              children: [

                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: Center(child: Text("Flex 2")),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    child: Center(child: Text("Flex 1")),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}