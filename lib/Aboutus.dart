import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'aboutusmodel.dart';

class AboutusScreen extends StatefulWidget {
  const AboutusScreen({super.key});

  @override
  State<AboutusScreen> createState() => _AboutusState();
}

class _AboutusState extends State<AboutusScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchabotus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About Us',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: FutureBuilder(
          future: fetchabotus(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            } else {
              return Text("No Data Found!!");
            }
          },
        ));
  }

  Future<AboutUsModel> fetchabotus() async {
    final response = await http
        .get(Uri.parse("https://mtmc.vercel.app/mtmc/aboutus"), headers: {
      "Content-Type": "application/json",
      "Authorization":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NmNjMDM5MjVkZTE0MWI1NTBlZjhkZDAiLCJpYXQiOjE3MjQ2NTgwNDIsImV4cCI6MTczMjQzNDA0Mn0.vq8C3npMnsvM_3FBLlVf29jbv0qDxjAP-ZQikFkCgKo"
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = await jsonDecode(response.body);
      AboutUsModel aboutusModel = AboutUsModel.fromJson(responsedata);
      return aboutusModel;
    } else {
      return AboutUsModel();
    }
  }
}
