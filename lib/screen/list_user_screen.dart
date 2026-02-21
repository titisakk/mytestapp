import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListUserScreen extends StatefulWidget {
  const ListUserScreen({super.key});

  @override
  State<ListUserScreen> createState() => _ListUserScreen();
}

class _ListUserScreen extends State<ListUserScreen> {

  void getUser() async {
    try {
      var response = await http.get(Uri.parse('https://dummyjson.com/users'));
      if (response.statusCode == 200) {
        print(response.body);
        var data =jsonDecode(response.body);
        List<dynamic> jsonList = data['users'];
        print(jsonList[0]);
      }
    } catch (e) {
      print('Error : $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Call Api')),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          getUser();
        }, child: Text('Call Api'))
      ],

      ),
    );
  }
}