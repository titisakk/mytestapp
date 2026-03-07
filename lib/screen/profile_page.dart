import 'package:flutter/material.dart';
import 'package:mytestapp/widgets/action_button.dart';
import 'package:mytestapp/widgets/post_grid.dart';
import 'package:mytestapp/widgets/profile_header.dart';
import 'package:mytestapp/widgets/profile_stat.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Row(
          children: [
            SizedBox(width: 90),
            Text('thitisak', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(width: 110),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 10), child: ProfileStat()),

            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(children: [ProfileHeader()]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: ActionButton(),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, color: Colors.grey),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: PostGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
