import 'package:flutter/material.dart';
import 'package:mytestapp/page_answer/answer1.dart';
import 'package:mytestapp/page_answer/answer4.dart';
import 'package:mytestapp/page_answer/answer3.dart';
import 'package:mytestapp/page_answer/answer2.dart';

class Myanswer extends StatelessWidget {
  const Myanswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Answer', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(padding: EdgeInsetsGeometry.only(left: 200),child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GridLayout()),
            ),
            child: Text('Answer1'),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SocialMediaPost()),
            ),
            child: Text('Answer2'),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductLayout()),
            ),
            child: Text('Answer3'),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LayoutProfile()),
            ),
            child: Text('Answer4'),
          ),
        ],
      )),
    );
  }
}
