import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  @override
  _Task3State createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  double red = 0;
  double green = 0;
  double blue = 0;

  double boxSize = 150;

  String getHexColor() {
    int r = red.toInt();
    int g = green.toInt();
    int b = blue.toInt();

    return '#${r.toRadixString(16).padLeft(2, '0')}'
        '${g.toRadixString(16).padLeft(2, '0')}'
        '${b.toRadixString(16).padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    Color color = Color.fromARGB(255, red.toInt(), green.toInt(), blue.toInt());

    return Scaffold(
      appBar: AppBar(title: Text("Task 3: Mood & Color Mixer")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onLongPress: () {
              print("Copied HEX: ${getHexColor()}");
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Hex Copied to Console")),
              );
            },
            onHorizontalDragUpdate: (details) {
              setState(() {
                boxSize += details.delta.dx;
                if (boxSize < 50) boxSize = 50;
                if (boxSize > 300) boxSize = 300;
              });
            },
            child: Container(
              width: boxSize,
              height: boxSize,
              color: color,
            ),
          ),

          SizedBox(height: 30),

          Text("HEX: ${getHexColor()}"),

          Slider(
            value: red,
            min: 0,
            max: 255,
            onChanged: (val) => setState(() => red = val),
          ),

          Slider(
            value: green,
            min: 0,
            max: 255,
            onChanged: (val) => setState(() => green = val),
          ),

          Slider(
            value: blue,
            min: 0,
            max: 255,
            onChanged: (val) => setState(() => blue = val),
          ),
        ],
      ),
    );
  }
}