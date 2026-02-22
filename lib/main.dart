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
    return Scaffold(backgroundColor: const Color.fromARGB(255, 184, 221, 227),
      appBar: AppBar(title: Text('Grid Layout'), backgroundColor:  Colors.orange, centerTitle: true),
      body:Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100,width: 100,color: Colors.amber,),
              SizedBox(width: 20),
              Container(height: 100,width: 100,color: Colors.blue,),
              SizedBox(width: 20),
              Container(height: 100,width: 100,color: Colors.red,),
            ],
          ),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100,width: 100,color: Colors.black,),
              SizedBox(width: 20),
              Container(height: 100,width: 100,color: Colors.green,),
              SizedBox(width: 20),
              Container(height: 100,width: 100,color: Colors.pink,),
            ],
          )
        ],
      ));
  }

}
