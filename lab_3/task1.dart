import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Cards & Icons"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

              //  CARD 1
              Card(
                color: Colors.blue.shade100,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.home, size: 30, color: Colors.blue),
                      Icon(Icons.star, size: 40, color: Colors.orange),
                      Icon(Icons.settings, size: 35, color: Colors.black),
                    ],
                  ),
                ),
              ),

              //  CARD 2
              Card(
                color: Colors.red.shade100,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.favorite, size: 35, color: Colors.red),
                      Icon(Icons.notifications, size: 30, color: Colors.purple),
                      Icon(Icons.thumb_up, size: 40, color: Colors.green),
                    ],
                  ),
                ),
              ),

              // CARD 3
              Card(
                color: Colors.green.shade100,
                elevation: 12,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.phone, size: 30, color: Colors.teal),
                      Icon(Icons.message, size: 35, color: Colors.indigo),
                      Icon(Icons.camera_alt, size: 45, color: Colors.brown),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}