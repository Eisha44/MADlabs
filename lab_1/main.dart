
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Network Image Example"),
          centerTitle: true,
        ),
        body: Center(
          child: Image.network(
            'https://tse2.mm.bing.net/th/id/OIP.J8yzEi4um9MW6L8JT5noYQHaDn?pid=Api&h=220&P=0',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}