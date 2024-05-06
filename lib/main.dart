import 'package:flutter/material.dart';
import 'package:promnotic/Screen/home_screen.dart';

import 'Screen/Intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Promnotic',
        theme: ThemeData(colorScheme: const ColorScheme.light()
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
            ),
        home: const IntroScreen()
        // HomeScreen(),
        );
  }
}
