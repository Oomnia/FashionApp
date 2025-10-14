import 'package:fashion_app/screens/home_screen.dart';
import 'package:fashion_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
