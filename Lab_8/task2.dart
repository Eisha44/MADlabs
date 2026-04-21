import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Task2 extends StatefulWidget {
  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task 2: Sliders")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Value: ${value.toStringAsFixed(1)}",
            style: TextStyle(fontSize: 24),
          ),

          SizedBox(height: 30),

          // Material Slider
          Slider(
            value: value,
            min: 0,
            max: 100,
            divisions: 10,
            label: value.toStringAsFixed(1),
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),

          SizedBox(height: 30),

          // Cupertino Slider
          CupertinoSlider(
            value: value,
            min: 0,
            max: 100,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}