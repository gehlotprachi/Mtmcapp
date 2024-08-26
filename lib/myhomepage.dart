import 'package:collegeapp/Aboutus.dart';
import 'package:collegeapp/admissionform.dart';
import 'package:collegeapp/contactus.dart';
import 'package:collegeapp/gallerypage.dart';
import 'package:collegeapp/library/elibraryscreen.dart';
import 'package:collegeapp/myapp.dart';
import 'package:collegeapp/navbar.dart';
import 'package:flutter/material.dart';
import 'package:collegeapp/Courses.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Navbar()));
            //Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              //padding: EdgeInsets.all(8.0),
              //child: Image.asset('assets/images/homescreenimage.jpeg'),
            ),
            SizedBox(height: 0.0),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutusScreen()));
                  },
                  child: _buildButton(Icons.info, 'About Us',
                      Colors.yellow[600]!, Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdmissionFormApp()));
                  },
                  child: _buildButton(Icons.school, 'Admission',
                      Colors.green[400]!, Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ELibraryScreen()));
                  },
                  child: _buildButton(Icons.book, 'E Library',
                      Colors.lightBlue[300]!, Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  child: _buildButton(Icons.event, 'Gallery',
                      Colors.purple[300]!, Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Courses()));
                  },
                  child: _buildButton(
                      Icons.book, 'Course', Colors.red[400]!, Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: _buildButton(Icons.description, 'Papers',
                      Colors.orange[400]!, Colors.white),
                ),
              ],
            ),
            SizedBox(height: 2.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Contact()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      IconData icon, String text, Color color, Color textColor) {
    return Card(
      elevation: 1.0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 48.0, color: textColor),
              SizedBox(height: 8.0),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
      color: color,
    );
  }
}
