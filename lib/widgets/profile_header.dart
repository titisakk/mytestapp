import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          Text(
            'Thitisak',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          
          Text(
            'Aragok || Sushi lover ',
            style: TextStyle( fontSize: 20),
          ),
        ],
      )
      ],
    );
    
  }
}
