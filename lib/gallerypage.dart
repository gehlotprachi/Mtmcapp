import 'package:collegeapp/myhomepage.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<String> images = [
    // 'assets/images/foundation day.jpg',
    // 'assets/images/teachers day.jpg',
    // 'assets/images/labf.jpg',
    // 'assets/images/certificate.jpg',
    // 'assets/images/auditoriumf.jpg',
    // 'assets/images/activityf.jpg',
    // 'assets/images/gruop1.jpg',
    // 'assets/images/prinicipal1.jpg',
    //'assets/images/rangoli1.jpeg',
    // 'assets/images/',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gallery',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
            // Implement navigation back logic here.
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(images[index]),
          );
        },
      ),
    );
  }
}
