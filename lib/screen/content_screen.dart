import 'package:flutter/material.dart';
import 'package:mytestapp/component/text_card.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [
            TextCard(text: "Personal Growth", color: Colors.yellow)
          ,SizedBox(
            height: 10,
          ),  
          TextCard(text: "Dsdadadaddddddddddddddddddddddd", color: Colors.orange),
          SizedBox( height: 10),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Back Home"))],
        ),
      ),
    );
  }
}