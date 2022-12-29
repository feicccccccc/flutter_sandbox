import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:test_app/topcis/topcis.dart';
import 'package:test_app/login/login.dart';
import 'package:test_app/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example for navigation using button
    // return Scaffold(
    //   body: Center(
    //     child: ElevatedButton(
    //       child: Text(
    //         'about',
    //         style: Theme.of(context).textTheme.button,
    //       ),
    //       onPressed: () => Navigator.pushNamed(context, '/topics'),
    //     ),
    //   ),
    // );

    // TODO: Change to switch
    return StreamBuilder(
      stream: AuthServices().userStream, // build UI base on this current stream
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print("Waiting for user auth");
          return const Text('Loading');
        } else if (snapshot.hasError) {
          print("Auth Error");
          return const Text('Error');
        } else if (snapshot.hasData) {
          print("Connected");
          return const TopicsScreen();
        } else {
          print("Waiting for loging");
          return const LoginScreen();
        }
      },
    );
  }
}
