import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:promnotic/firebase_options.dart';
import 'package:promnotic/pages/auth/auth_gateway.dart';
import 'package:promnotic/pages/auth/auth_service.dart';
import 'package:provider/provider.dart';

// import 'Screen/Intro_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: const MyApp(),
  ));
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
        home: const AuthGateWay());
  }
}
