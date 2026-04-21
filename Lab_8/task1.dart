import 'package:flutter/material.dart';
import 'dart:math';

class Task1 extends StatefulWidget {
  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  Color boxColor = Colors.blue;
  double borderRadius = 0;

  final Color initialColor = Colors.blue;
  final double initialRadius = 0;

  void changeColor() {
    final random = Random();
    setState(() {
      boxColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  void toggleShape() {
    setState(() {
      borderRadius = borderRadius == 0 ? 100 : 0;
    });
  }

  void resetBox() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Resetting...")),
    );

    setState(() {
      boxColor = initialColor;
      borderRadius = initialRadius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task 1: GestureDetector")),
      body: Center(
        child: GestureDetector(
          onTap: changeColor,
          onDoubleTap: toggleShape,
          onLongPress: resetBox,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}