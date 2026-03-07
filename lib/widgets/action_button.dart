import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(style:ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.2)
          ),
          minimumSize: Size(150, 40)
          ),
          onPressed: () {}, child: Text('Follow',style: TextStyle(fontSize: 17),)),

          SizedBox(width: 10,),
          ElevatedButton(style:ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[150],
          foregroundColor: Colors.black,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.2)
          ),
          minimumSize: Size(30, 40)
          ),
          onPressed: () {}, child: Text('Message',style: TextStyle(fontSize: 16),)),

          SizedBox(width: 10,),
          ElevatedButton(style:ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[150],
          foregroundColor: Colors.black,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.1)
          ),
          minimumSize: Size(30, 40)
          ),
          onPressed: () {}, child: Text('Contact',style: TextStyle(fontSize: 16),))
      ],
    );
  }
}