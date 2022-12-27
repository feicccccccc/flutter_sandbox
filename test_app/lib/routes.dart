// This file is used for creating route to different pages instant.
// Other screen can import this dart file and use appRoutes to get the target.
// https://docs.flutter.dev/cookbook/navigation/named-routes

import 'package:test_app/about/about.dart';
import 'package:test_app/profile/profile.dart';
import 'package:test_app/login/login.dart';
import 'package:test_app/topcis/topcis.dart';
import 'package:test_app/home/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(), // this is the default home screen
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
