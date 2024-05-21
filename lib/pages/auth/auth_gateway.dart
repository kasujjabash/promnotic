import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:promnotic/Screen/Intro_screen.dart';
import 'package:promnotic/Screen/home_screen.dart';

class AuthGateWay extends StatelessWidget {
  const AuthGateWay({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //is the user logged in
          if (snapshot.hasData) {
            return HomeScreen(); //return the home screen
          }
          //Is the user not loged in,
          else {
            return const IntroScreen(); //return the intro screen.
          }
        });
  }
}
