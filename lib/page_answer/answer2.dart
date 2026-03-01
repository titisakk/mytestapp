import 'package:flutter/material.dart';

class SocialMediaPost extends StatelessWidget {
  const SocialMediaPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 184, 221, 227),
      appBar: AppBar(title: Text('Social Media Post'), backgroundColor:  Colors.orange, centerTitle: true),
      body:Center(child:Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 100,width: 100,decoration:BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.purpleAccent),margin: EdgeInsets.all(20),),
              Column(
                children: [
                  Text("THITISAK PHANTHIP",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Padding(
                  padding: EdgeInsetsGeometry.only(right: 50,top: 5),
                  child: Text("5 minute ago",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child:Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey,border: Border.all(color: Colors.black)),
                margin: EdgeInsets.all(20),
              ))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent
                ),
                onPressed: () {
              }, child: Text("Like",style: TextStyle(color: Colors.purple),)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent
                ),
                onPressed: () {
              }, child: Text("Comment",style: TextStyle(color: Colors.purple),)),
             ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent
                ),
                onPressed: () {
              }, child: Text("Share",style: TextStyle(color: Colors.purple),)),
            ],
          )
        ],
      )));
  }

}