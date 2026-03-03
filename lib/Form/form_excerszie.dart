import 'package:flutter/material.dart';

class FormExcerszie extends StatefulWidget {
  const FormExcerszie({super.key});

  @override
  State<FormExcerszie> createState() => _FormExcerszieState();
}

class _FormExcerszieState extends State<FormExcerszie> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String strInput = '';
  // textediting controller
  final TextEditingController _userController =TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Simple Forms',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsGeometry.only(top: 20)),
          Text('Display Input : $strInput',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'กรุณากรอกข้อมูล';
              }
              return null;
            },
            // onChanged: (String value) {
            //   setState(() {
            //     strInput = value;
            //   });
            // },
            ),

          SizedBox(height: 20,),

          Padding(padding: EdgeInsets.only(top: 20)),
          SizedBox(height: 10,),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'กรุณากรอกข้อมูล';
              }
              return null;
            },
            // onChanged: (String value) {
            //   setState(() {
            //     strInput = value;
            //    });
            // },
            ),

            ElevatedButton(onPressed: () {
              if (_formkey.currentState!.validate()) {
                setState(() {
                  strInput = 'Form is valid';
                });
              }
              else {
               setState(() {
                 strInput = 'Form is Invalid';
               });
              }
            }, child: Text('ลงชื่อเข้าใช้'))
        ],),));
  }
}
