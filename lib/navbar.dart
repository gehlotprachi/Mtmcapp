import 'package:collegeapp/Courses.dart';
import 'package:collegeapp/library/elibraryscreen.dart';
import 'package:collegeapp/myhomepage.dart';

import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://img.freepik.com/free-photo/happy-young-female-student-holding-notebooks-from-courses-smiling-camera-standing-spring-clothes-against-blue-background_1258-70161.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[200],
              image: DecorationImage(
                image: NetworkImage(
                  '',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              // onPressed: (){},
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyHomePage()),
                // );
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: IconButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              iconSize: 30,
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_add_outlined),
            title: Text('Change Exam'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('My Account'),
            onTap: () => null,
          ),

          // ListTile(
          //   leading: Icon(Icons.ios_share_rounded),
          //   title: Text('External Links'),
          //   onTap: () => null,
          // ),
          ListTile(
              leading: Icon(Icons.computer),
              title: Text('E Library'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ELibraryScreen()));
              }),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('courses'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Courses()));
              // Handle events section tap
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_circle_up_sharp),
            title: Text('Logout'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
