import 'package:flutter/material.dart';

class FormExcerszie extends StatefulWidget {
  const FormExcerszie({super.key});

  @override
  State<FormExcerszie> createState() => _FormExcerszieState();
}

class _FormExcerszieState extends State<FormExcerszie> {
  String strInput = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Simple Forms',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsetsGeometry.only(top: 20)),
          Text('ชื่อ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username'),
            validator: (String? value) {},
            onChanged: (String value) {
              setState(() {
                strInput = value;
              });
            },),
          SizedBox(height: 20,),


          Padding(padding: EdgeInsetsGeometry.only(top: 20)),
          Text('รหัสผ่าน',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: 10,),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password'),
            validator: (String? value) {},
            onChanged: (String value) {
              setState(() {
                strInput = value;
              });
            },),
        ],),);
  }
}
