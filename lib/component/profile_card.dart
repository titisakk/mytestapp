import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String id;
  const ProfileCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // --- ส่วนที่ 1: ข้อความด้านนอก ---
          Container(width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
            child:Text(
              "HI!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 15),

          // --- ส่วนที่ 2: ตัว Card (Container) ---
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(15),
            width: 250,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                 Image.asset(
                  imagePath,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),

                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  id,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
