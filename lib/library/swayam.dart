import 'package:collegeapp/myhomepage.dart';

import 'package:flutter/material.dart';

class swayam extends StatefulWidget {
  swayam({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _swayamState createState() => _swayamState();
}

class _swayamState extends State<swayam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Swayam Online Course',
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
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
            // Implement navigation back logic here.
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            colors: [Color(0xFFCDFADB), Color(0xFF7FC7D9)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Replace with actual asset path
              //SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Engineering Courses
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text('Engineering'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Non-Engineering Courses
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text('Non-Engineering'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text('Secondary and Sr. Secondary Courses (NIOS)'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to NCERT Textbooks
                },
                child: Text('NCERT Textbooks'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to e-Books for classes I to XII (CBSE, NCERT and States/UT)
                },
                child: Text(
                    'e-Books for classes I to XII (CBSE, NCERT and States/UT)'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Secondary and Sr. Secondary Courses (NCERT)
                },
                child: Text('Secondary and Sr. Secondary Courses (NCERT)'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Certificate/Diploma Courses (IGNOU)
                },
                child: Text('Certificate/Diploma Courses (IGNOU)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
