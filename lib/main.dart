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
      body: Center(child:Stack(
        children: [
          Container(width: 120, height: 300, decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(40)),),
          Positioned(top: 10,right:20 ,child: 
          Container(width: 80, height: 80, decoration:BoxDecoration(color:Colors.red, shape: BoxShape.circle))),

          Positioned(right:20,bottom: 110 ,child: 
          Container(width: 80, height: 80, decoration:BoxDecoration(color:Colors.yellow, shape: BoxShape.circle))),

          Positioned(right: 20,bottom: 20,child: 
          Container(width: 80, height: 80, decoration:BoxDecoration(color:Colors.green, shape: BoxShape.circle))),
        ]
        )));
  }
}
