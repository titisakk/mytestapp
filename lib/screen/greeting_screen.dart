import 'package:flutter/material.dart';
import 'package:mytestapp/component/like_card.dart';
import 'package:mytestapp/component/profile_card.dart';
import 'package:mytestapp/screen/content_screen.dart';

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
           ProfileCard(name: "Thitisak Phanthip",imagePath: 'assets/download.jpg',id: '660710593',),
           SizedBox(height: 10,),
           LikeCard(),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) =>  const ContentScreen()
                  ));
            }, child: Text("Go to Content =>"))
            ],
        

        ),),
    );
  }
}
