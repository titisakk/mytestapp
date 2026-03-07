import 'package:flutter/material.dart';
import 'package:mytestapp/Form/submit_form.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 42, 205),
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'สมัครสมาชิก',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(height: 20),

                Text('ชื่อผู้ใช้'),
                SizedBox(height: 10),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Username'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกข้อมูล';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),

                Text('รหัสผ่าน'),
                SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกข้อมูล';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),

                Text('ยืนยันรหัสผ่าน'),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกข้อมูล';
                    }
                    if (value != _passwordController.text) {
                      return 'รหัสผ่านไม่ตรงกัน';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),

                Text('ชื่อ'),
                SizedBox(height: 10),
                TextFormField(
                  controller: _firstnameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Firstname'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกข้อมูล';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),

                Text('นามสกุล'),
                SizedBox(height: 10),
                TextFormField(
                  controller: _lastnameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Lastname'),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกข้อมูล';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        // validate ผ่าน
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubmitForm(
                                username: _usernameController.text,
                                password: _passwordController.text,
                                firstName: _firstnameController.text,
                                lastName: _lastnameController.text,
                              ),
                            ),
                          );
                        });
                      }
                    },
                    child: Text(
                      'สมัครสมาชิก',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
