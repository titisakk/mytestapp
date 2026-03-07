import 'package:flutter/material.dart';

class SubmitForm extends StatelessWidget {
  final String username;
  final String password;
  final String firstName;
  final String lastName;

  const SubmitForm({
    super.key,
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 78, 42, 205),
      appBar: AppBar(
        title: Text(
          'ข้อมูลของคุณ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, right: 20, left: 20, bottom:250),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 100),
              Text(
                'สมัครสมาชิกเรียบร้อยแล้ว',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Colors.grey),
              ),
              SizedBox(height: 20,),
              Divider(
                thickness: 1, // ความหนาเส้น
                color: Colors.grey, // สี
              ),
            SizedBox(height: 10,),
            Text('Username : $username',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 20,),
            Text('Password : ${'*' * password.length }',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ,SizedBox(height: 20,),
              Divider(
                thickness: 1, // ความหนาเส้น
                color: Colors.grey, // สี
              ),SizedBox(height: 20,),

            Text('Firstname : $firstName',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 20,),
            Text('Lastname : $lastName',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),



            ],
          ),
        ),
      ),
    );
  }
}
