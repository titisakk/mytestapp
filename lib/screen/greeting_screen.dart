import 'package:flutter/material.dart';
import 'package:mytestapp/component/text_card.dart';

class GreetingScreen extends StatelessWidget {
  final String name;
  final Color bgColor;

  // Added the missing semicolon here;
  const GreetingScreen({super.key, required this.name, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextCard(text: "Good Afternoon", color: Colors.yellow,),
            SizedBox(height: 10,),
           TextCard(text: name, color: Colors.brown,),
            SizedBox(height: 10),
            TextCard(text: "Good luck have fun", color: Colors.blue),
            ],
        ),
      ),
    );
  }
}
