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
      appBar: AppBar(title: Text('First Time App'), backgroundColor: const Color.fromARGB(255, 167, 173, 178), centerTitle: true),
      body: Center(
        // child: Container(
        // height: 250,
        // width: 250,
        // padding: EdgeInsets.only(left: 50,top: 30),
        // decoration:BoxDecoration( 
        //   color: const Color.fromARGB(255, 26, 20, 142),
        //   borderRadius: BorderRadius.circular(25)) ,
        // child: Text('Hello    Thitisak Phanthip 660710593',
        //   style: TextStyle(
        //     fontSize: 32,
        //     fontFamily: 'DroidSans',
        //     color: Color.fromARGB(255, 72, 226, 221),
        //     fontWeight: FontWeight.w900,
        //   ),),),
        child:Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child:Container(height: 50,width: 100,color: Colors.red)),
          Expanded(flex: 1,child:Container(height: 50,color: const Color.fromARGB(255, 78, 15, 188))),
          Expanded(flex: 2,child:Container(height: 50,color: const Color.fromARGB(255, 97, 153, 29))),
          Expanded(flex: 3,child:Container(height: 50,color: const Color.fromARGB(255, 0, 0, 0))),
        ],
        )));
  }

}
