import 'package:flutter/material.dart';
import 'package:news/screens/authentication/sign_in.dart';
import 'package:news/screens/authentication/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignUp(),
    );
  }
}
