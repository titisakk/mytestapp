import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final String text;
  final Color color;
  const TextCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: color,),
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),);
  }
}
