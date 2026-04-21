import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false; // toggle variable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // 🌙 Light Theme
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),

        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),

        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 5,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ),

      // Dark Theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),

        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),

        cardTheme: CardThemeData(
          color: Colors.grey[900],
          elevation: 5,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[800],
          ),
        ),
      ),
      // Applying theme using ternary operator
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      home: HomeScreen(
        isDark: isDark,
        toggleTheme: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final bool isDark;
  final VoidCallback toggleTheme;

  HomeScreen({required this.isDark, required this.toggleTheme});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),

        //Toggle Icon Button
        actions: [
          IconButton(
            icon: Icon(
              isDark ? Icons.light_mode : Icons.dark_mode, // ternary
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            //Heading Text
            Text(
              "Mobile Application Development",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20),
            // Paragraph
            Text(
              "My name is Eisha and this is a flutter app aimed to show theme conversions.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
            // Card with theme
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "This is a themed card.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Button with theme
            ElevatedButton(
              onPressed: () {},
              child: Text("Themed Button"),
            ),
          ],
        ),
      ),
    );
  }
}