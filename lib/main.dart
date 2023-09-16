import 'package:flutter/material.dart';
import 'package:sihapp/screens/feed.dart';
import 'package:sihapp/screens/login.dart';
import 'package:sihapp/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const login(),
        'feed':(context) => const feed(),
        'signup':(context)=>const signup(),
      },
    );
  }
}

