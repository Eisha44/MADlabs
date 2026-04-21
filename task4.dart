
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Parent alignment
        children: [

          //Blue Header
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "STATUS PANEL",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //20px Vertical Space
          const SizedBox(height: 20),

          //Button Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // Red Box
              Container(
                width: 100,
                height: 50,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Action 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // Green Box
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Action 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}