import 'package:flutter/material.dart';

class LikeCard extends StatefulWidget {
  const LikeCard({super.key});

  @override
  State<LikeCard> createState() => _LikeCardState();
}

class _LikeCardState extends State<LikeCard> {
  bool  islike = true;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      height: 150,
      width: 150,
      child: Column(
        children: [
          Text(islike ? "Liked": "Disliked"),
          IconButton(onPressed: () {
            setState(() {
              islike = !islike;
            });
          }, icon: Icon(islike ? Icons.thumb_up : Icons.thumb_down))
        
        ,SizedBox(
          height: 10,
        ),
        Text("Count: $count",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        Row(mainAxisAlignment: .spaceAround,
          children: [
          IconButton(onPressed: () {
          setState(() {
            count++;
          });
        }, icon:Icon(Icons.add)),


          IconButton(onPressed: () {
          setState(() {
            if(count > 0)count--;
          });
        }, icon:Icon(Icons.remove)),

    
          IconButton(onPressed: () {
          setState(() {
            count = 0;
          });
        }, icon:Icon(Icons.refresh)),
        ],
        )
        ],
      ),
    );
  }
}