import 'package:flutter/material.dart';

import 'myhomepage.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  String? _selectedCourse;
  String? _selectedModule;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Courses',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          )),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            DropdownButton(
              value: _selectedCourse,
              hint: Text('Select a course'),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCourse = newValue!;
                  _selectedModule = null; // reset module selection
                });
              },
              items: [
                DropdownMenuItem(child: Text('Course'), value: 'Course '),
                DropdownMenuItem(child: Text('MCA'), value: 'MCA'),
                DropdownMenuItem(child: Text('MBA'), value: 'MBA'),
              ],
            ),
            SizedBox(height: 20),
            _selectedCourse != null
                ? DropdownButton(
                    value: _selectedModule,
                    hint: Text('Select a module'),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedModule = newValue!;
                      });
                    },
                    items: _getModulesForCourse(_selectedCourse!),
                  )
                : Container(),
            SizedBox(height: 20),
            Text('Selected course: $_selectedCourse'),
            Text('Selected semester: $_selectedModule'),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _getModulesForCourse(String course) {
    switch (course) {
      case 'MCA':
        return [
          DropdownMenuItem(child: Text('Sem1'), value: 'Sem1'),
          DropdownMenuItem(child: Text('Sem2'), value: 'Sem2'),
          DropdownMenuItem(child: Text('Sem3'), value: 'Sem3'),
          DropdownMenuItem(child: Text('Sem4'), value: 'Sem4'),
        ];

      case 'MBA':
        return [
          DropdownMenuItem(child: Text('Sem1'), value: 'Sem1'),
          DropdownMenuItem(child: Text('Sem2'), value: 'Sem2'),
          DropdownMenuItem(child: Text('Sem3'), value: 'Sem3'),
          DropdownMenuItem(child: Text('Sem4'), value: 'Sem4'),
        ];
      default:
        return [];
    }
  }
}
