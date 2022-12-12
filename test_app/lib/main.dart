// // import Material pacakge.
// // Material is a design stadnard from Google
// // Allow us to use various Widgets
// import "package:flutter/material.dart";
// import "dart:math";

// import "second.dart";

// // Flutter start run from here
// void main() {
//   runApp(MyApp()); // global function runApp() to start the application
// }

// class MyApp extends StatefulWidget {
//   MyApp({super.key}); // init the class with superclass by sending the keys

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int idx = 0;
//   String title = "";

//   randomColors() {
//     return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
//   }

//   @override
//   void initState() {
//     // called when widget created
//     super.initState();
//     title = "Set title inside init state for the widget myapp";
//     print("test");
//   }

//   @override
//   void dispose() {
//     // Done with the widget
//     super.dispose();
//     title = "When disposed";
//     print("test2");
//   }

//   // Get called when flutter need to rebuild the UI
//   @override
//   Widget build(BuildContext context) {
//     // Return a template using MaterialApp
//     // https://api.flutter.dev/flutter/material/MaterialApp-class.html
//     return MaterialApp(
//       // https://api.flutter.dev/flutter/material/Scaffold-class.html
//       home: Scaffold(
//         body: ListView.builder(itemBuilder: ((context, index) {
//           // return Center(child: Text("I am $index"));
//           idx = index;
//           return Center(
//             child: Container(
//               color: randomColors(),
//               width: idx.toDouble() * 5,
//               height: 500,
//               child: Center(child: Text("I am index $index")),
//             ),
//           );
//         })),
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Center(child: Text("$title")),
//         ),
//         floatingActionButton: FloatingActionButton(
//           hoverColor: Colors.amber,
//           child: Text("Next page"),
//           onPressed: () {
//             // everytime the button is pressed, we call setState
//             // and redraw the UI
//             // setState(() {});
//             print("button pressed");
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: ((context) => const SecondScreen()),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import "dart:math";

import 'package:test_app/second.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  int idx = 0;
  String title = "";

  @override
  void initState() {
    // called when widget created
    super.initState();
    title = "Set title inside init state for the widget myapp";
    print("first screen get init");
  }

  randomColors() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: ListView.builder(itemBuilder: ((context, index) {
          // return Center(child: Text("I am $index"));
          idx = index;
          return Center(
            child: Container(
              color: randomColors(),
              width: idx.toDouble() * 5,
              height: 500,
              child: Center(child: Text("I am index $index")),
            ),
          );
        })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("button pressed");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
