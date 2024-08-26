import 'package:collegeapp/myhomepage.dart';
import 'package:flutter/material.dart';

import 'elib.dart';

class ELibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E Library',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(8.0),
        //   gradient: LinearGradient(
        //     colors: [Color(0xFFCDFADB), Color(0xFF7FC7D9)],
        //     begin: Alignment.bottomLeft,
        //     end: Alignment.topRight,
        //   ),
        // ),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              title: Text('Best Open Access Resources'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Elib(
                            // title: '',
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
