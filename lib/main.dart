import 'package:flutter/material.dart';
import 'package:mytestapp/screen/content_screen.dart';
import 'package:mytestapp/screen/greeting_screen.dart';
import 'package:mytestapp/screen/home_screen.dart';

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
      // initialRoute: '/greeting',
      // routes: {
      //   '/greeting':(context) => GreetingScreen(name: 'Thitisak',
      //   bgColor: Colors.blue,),
      // '/content':(context) => ContentScreen()
      // },
      
      theme: ThemeData(
        // Added ColorScheme class name here
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: BottomNavigatorExample()
    );
  }
}

