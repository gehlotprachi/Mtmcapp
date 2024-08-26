import 'package:collegeapp/library/swayam.dart';
import 'package:flutter/material.dart';

import 'elibraryscreen.dart';

class Elib extends StatefulWidget {
  @override
  _ElibState createState() => _ElibState();
}

class _ElibState extends State<Elib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Best Open Access Resources',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ELibraryScreen()));
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            colors: [Color(0xFFCDFADB), Color(0xFF7FC7D9)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text(
                  'SWAYAM Online Courses',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'Read More',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => swayam(
                                title: '',
                              )));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
