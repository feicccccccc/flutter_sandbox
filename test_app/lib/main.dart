// import Material pacakge.
// Material is a design stadnard from Google
// Allow us to use various Widgets
import "package:flutter/material.dart";
import "dart:math";

// Flutter start run from here
void main() {
  runApp(MyApp()); // global function runApp() to start the application
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  randomColors() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  // Get called when flutter need to rebuild the UI
  @override
  Widget build(BuildContext context) {
    // Return a template using MaterialApp
    // https://api.flutter.dev/flutter/material/MaterialApp-class.html
    return MaterialApp(
      // https://api.flutter.dev/flutter/material/Scaffold-class.html
      home: Scaffold(
        body: ListView.builder(itemBuilder: ((context, index) {
          // return Center(child: Text("I am $index"));
          count++;
          return Center(
            child: Container(
              color: randomColors(),
              width: count.toDouble() * 5,
              height: 500,
              child: Center(child: Text("I am index $index")),
            ),
          );
        })),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text("I am a tilte")),
        ),
      ),
    );
  }
}
