import 'package:flutter/material.dart';
import 'package:pyramid_developers/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pyramid Developers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFFBBF246)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}