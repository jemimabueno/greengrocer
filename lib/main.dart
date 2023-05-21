import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenGrocer',
      theme: ThemeData(
         
         primarySwatch: Colors.green,
         scaffoldBackgroundColor: Colors.white.withAlpha(190),//alpha seria a 'opacidade'
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen()
    );
  }
}

