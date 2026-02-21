import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User extends StatefulWidget {
  final int? id;
  final String? firstName;
  final String? lastName;
  var userName;
  var gmail;
  const User({
    super.key,
    this.id,
    this.firstName,
    this.lastName,
    this.userName,
    this.gmail,
  });

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  List<dynamic> listUser = [];
  void getUser() async {
    try {
      var response = await http.get(Uri.parse('https://dummyjson.com/users'));
      if (response.statusCode == 200) {
        print(response.body);
        var data = jsonDecode(response.body);
        List<dynamic> jsonList = data['users'];
        setState(() {
          listUser = jsonList;
        });
      }
    } catch (e) {
      print('Error : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Api Call')),
      body: ListView.separated(
        itemCount: 25, 
        separatorBuilder: (BuildContext context, int index) => const Divider(), 
        itemBuilder: (BuildContext context ,int index){
          return ListTile()
        } ,)
        );
  }
}
