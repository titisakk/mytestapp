import 'package:flutter/material.dart';

class LayoutProfile extends StatelessWidget {
  const LayoutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,height: 150,color: Colors.blueAccent,
              ),
              Positioned(
                top: 15,left: 15,right: 15,bottom: 5,
                child: Column(
                  children: [
                    Container(width: 80,height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'THITISAK PHANTHIP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(width: 50,),
                  Icon(Icons.email,color: Colors.blue,size: 20,),
                  SizedBox(width: 15,),
                  Text('Titofodp778@gmail.com'),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 50,),
                  Icon(Icons.phone,color: Colors.blue,size: 20,),
                  SizedBox(width: 15,),
                  Text('78894515321'),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 50,),
                  Icon(Icons.pin_drop,color: Colors.blue,size: 20,),
                  SizedBox(width: 15,),
                  Text('Silpakorn'),
                ],
              )
            ],
          ),
          Padding(padding:EdgeInsetsGeometry.only(top: 375),
          child:Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ 
                  ElevatedButton(onPressed: () {

                  }, child: Text('Edit Profile')),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: () {

                  }, child: Text('Logout')),
                ],
              )
            ],
          ))
        ],
        ),        
    );
  }
}
