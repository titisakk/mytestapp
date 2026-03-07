import 'package:flutter/material.dart';

class ProfileStat extends StatelessWidget {
  const ProfileStat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://i.scdn.co/image/ab6761610000e5eb877d4c061d08c040974224be'),
    ),
    SizedBox(width: 20,),
      Column(
        children: [
            Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            Text('Posts',style: TextStyle(fontSize: 18),),
        ],
      ),
          SizedBox(width: 30,),

    Column(children: [
      Text('122',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      Text('Followers',style: TextStyle(fontSize: 18)),
    ],),
        SizedBox(width:20,),

    Column(
      children: [
        Text('123',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        Text('Following',style: TextStyle(fontSize: 18)),
      ],
    )
    ]);
  }
}
