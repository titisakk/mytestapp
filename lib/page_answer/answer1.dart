
import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({super.key});

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