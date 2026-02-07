import 'package:flutter/material.dart';
import 'package:mytestapp/screen/greeting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Added ColorScheme class name here
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const GreetingScreen(
        name: 'Thitisak',
        bgColor: Colors.pink,
      ),
    );
  }
}

