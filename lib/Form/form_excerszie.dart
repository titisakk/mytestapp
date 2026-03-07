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
  final TextEditingController _userNameController =TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Simple Forms',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsGeometry.only(top: 20)),
          Text('Display Input : $strInput',),
          SizedBox(height: 10,),

          TextFormField(
            controller: _userNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'กรุณากรอกข้อมูล';
              }
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
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'กรุณากรอกข้อมูล';
              }
            },
            
            ),

            ElevatedButton(onPressed: () {
              if (_formkey.currentState!.validate()) { // validate ผ่าน
                setState(() {
                  strInput =  'Username: ${_userNameController.text} Password : ${_passwordController.text}';
                });
              }
              else { // validate ไม่ผ่าน
               setState(() {
                 strInput = 'Form is Invalid';
               });
              }
            }, child: Text('ลงชื่อเข้าใช้')),
            
            ElevatedButton(onPressed: () {
              _userNameController.clear();
              _passwordController.clear();

            }, child: Text('เคลียร์ข้อมูล')),

            ElevatedButton(onPressed: () {
              setState(() {
                _userNameController.text = 'Han';
              });
            }, child: Text('Auto fill'))
        ],),));
  }
}
