import 'package:collegeapp/myhomepage.dart';
import 'package:flutter/material.dart';

class AdmissionFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admission Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AdmissionForm(),
    );
  }
}

class AdmissionForm extends StatefulWidget {
  @override
  _AdmissionFormState createState() => _AdmissionFormState();
}

class _AdmissionFormState extends State<AdmissionForm> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  int age = 0;
  String gender = '';
  String course = '';
  String fathername = '';
  String Mothername = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admission Form',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    name = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    age = int.parse(value!);
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Gender'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your gender';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Course'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the course you want to apply for';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    course = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Father name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the course you want to apply for';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    course = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mother Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the course you want to apply for';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    course = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Here you can process/store the collected data
                      // For example, you can print it to the console
                      print('Name: $name');
                      print('Age: $age');
                      print('Gender: $gender');
                      print('Course: $course');
                      // You can add further processing logic here (e.g., API call, database storage)
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
