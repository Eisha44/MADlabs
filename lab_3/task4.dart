import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 4 - Card & ListTile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            // First Version Card
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text(
                  "Eisha Muzaffar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Registration No: 12345"),
              ),
            ),

            const SizedBox(height: 20),

            // Second Version 
            Card(
              color: Colors.green.shade100,
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Colors.green,
                ),
                title: Text(
                  "Maha",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text("Registration No: 67890"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}