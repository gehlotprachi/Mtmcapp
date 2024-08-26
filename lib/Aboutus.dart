import 'dart:convert';

import 'package:collegeapp/AboutUsModel.dart';
import 'package:collegeapp/myhomepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  Future<AboutUsModel> fetchAboutus() async {
    //final url = "https://mtmc.vercel.app/mtmc/addaboutus";
    var response =
        await http.post(Uri.parse("https://mtmc.vercel.app/mtmc/addaboutus"));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return AboutUsModel.fromJson(result);
    } else {
      return AboutUsModel();
    }
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
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          )

//
          ),
      body: Center(
        child: FutureBuilder<AboutUsModel>(
            future: fetchAboutus(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}

// class Aboutus extends StatefulWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text(
//             'About Us',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.lightBlue,
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back),
//             color: Colors.white,
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => MyHomePage()));
//             },
//           )
//           //],
//           ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(9.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 25,
//               ),
//               RichText(
//                 textAlign: TextAlign.justify,
//                 text: TextSpan(
//                     text: 'Mahila Technical and Management College',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold),
//                     children: <TextSpan>[
//                       TextSpan(
//                           text:
//                               '  is a part of Shri Jai Narayan Vyasshikshan Sansthan. Keeping in mind, the importance of empowering women for nation development and the increasing use of computer technology we have courses Affiliated to BIKANER TECHNICAL UNIVERSITY,BIKANER(Rajasthan).',
//                           style: TextStyle(
//                             color: Colors.black54,
//                             fontSize: 18,
//                           )),
//                       TextSpan(
//                           text:
//                               '\n\n the Institute has very good infrastructures with well-ventilated classrooms, smart class, computer Laboratories with all required software and hardware, library and conference hall.Our well Qualified and experienced faculty are to educate and mentor the students for global competitiveness and shape them into well-rounded personalities.',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black54,
//                           )),
//                       TextSpan(
//                           text:
//                               '\n\nThe college is committed to educate the students and make them capable for ready to move, acclimatize, and lead inconnected world. The college through its experienced and qualified faculty continually innovates education techniques to make sure to fulfill the requirements of students & professional world.',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black54,
//                           ))
//                     ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
