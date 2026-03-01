import 'package:flutter/material.dart';

class FormExcerszie extends StatefulWidget {
  const FormExcerszie({super.key});

  @override
  State<FormExcerszie> createState() => _FormExcerszieState();
}

class _FormExcerszieState extends State<FormExcerszie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Forms',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle:  true,
      ),
      body: Center(
        child: TextFormField(
          decoration: InputDecoration(labelText: 'Name'),
          validator: (String? value) {},
          onChanged: (String value){
            print(value);
          },
        ),
      ),
    );
  }
}
