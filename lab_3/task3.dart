import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 3 - Profile UI"),
        centerTitle: true,

        // 🔹 CircleAvatar inside AppBar (Local Image)
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 20,
              backgroundImage:
                  const AssetImage("assets/images/profile.jpeg"),
              onBackgroundImageError: (_, __) {},
              child: const Text(
                "EM", // Initials if image fails
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),

      body: Center(
        // CircleAvatar in Body (Network Image)
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Colors.grey.shade300,
          backgroundImage: const NetworkImage(
            "https://s.yimg.com/fz/api/res/1.2/CWqD0AbS47HW5RVzQPkW7w--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpbGw7aD00MTI7cHhvZmY9NTA7cHlvZmY9MTAwO3E9ODA7c3M9MTt3PTM4OA--/https://i.pinimg.com/736x/a6/45/86/a64586d418b0557c3ef0bf33247b6523.jpg", 
          ),
          onBackgroundImageError: (_, __) {},
          child: const Text(
            "EM", // Fallback initials
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}