import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 2 - Margin & Padding"),
        centerTitle: true,
      ),
      body: Container(
        //Symmetric Margin (Outside Space)
        margin: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 10.0,
        ),

        child: Container(
          // Specific Left Margin
          margin: const EdgeInsets.only(left: 10),
          // Padding (Inside Space)
          padding: const EdgeInsets.all(20.0),

          decoration: BoxDecoration(
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.circular(15),
          ),

          child: const Text(
            "This is Task 2\n\n"
            "Padding: EdgeInsets.all(20)\n"
            "Margin: symmetric(vertical:50, horizontal:10)\n"
            "Extra left space using EdgeInsets.only(left:10)",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}