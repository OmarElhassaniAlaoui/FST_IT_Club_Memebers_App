import 'package:flutter/material.dart';
import 'package:itclubemembers/view/screen/aboutus.dart';
import 'package:itclubemembers/view/screen/members.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Image(image: AssetImage("assets/images/it3.png")),
          ),
          ListTile(
            leading: Icon(Icons.badge),
            title: Text("Members"),
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => MemberList()));
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_rounded),
            title: Text("Aboutus"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
        ],
      ),
    );
  }
}
