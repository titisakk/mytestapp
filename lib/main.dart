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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Container(height: 100, width: 100, color: Colors.pink),
              SizedBox(width: 20),
              Container(height: 100, width: 100, color: Colors.yellow),
              SizedBox(width: 20),
              Container(height: 100, width: 100, color: Colors.blue),
            ],),
            SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Expanded(flex: 1,child :Container(height: 100, color: Colors.cyan)),
              SizedBox(width: 20),
              Expanded(flex: 2,child :Container(height: 100, color: Colors.black)),
              SizedBox(width: 20)
            ],
          )
        ]));
  }
}
