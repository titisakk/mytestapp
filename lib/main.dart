import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.amber)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Time App'),
        backgroundColor: const Color.fromARGB(255, 167, 173, 178),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: Colors.blue,
            child: Text('Item1'),
          ),
          Container(
            height: 350,
            width: double.infinity,
            color: Colors.red,
            child: Text('Item2'),
          ),
          Container(
            height: 350,
            width: double.infinity,
            color: Colors.yellow,
            child: Text('Item3'),
          ),
        ],
      ),
    );
  }
}
