import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Class to store all the user information within the current app
// Need to enable the auth inside firebase for different sign-in methods

class AuthServices {
  // user login state as a Stream, where the UI get notified when the
  // stream change its state
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

  // Sign in for anonymous login
  Future<void> anonLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException {
      // handle error
      print("Error on Anonymous Login");
    }
  }

  // Sign out for anonymous login
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
