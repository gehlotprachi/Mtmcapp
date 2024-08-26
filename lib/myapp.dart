import 'package:collegeapp/myhomepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExamPapersScreen(),
    );
  }
}

class ExamPapersScreen extends StatelessWidget {
  const ExamPapersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Exam Papers',
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
      body: ListView(
        children: [
          ExamPaperSection(
            subjectName: 'MCA',
            papers: [
              ExamPaper(
                paperName: 'Sem 1',
              ),
              ExamPaper(
                paperName: 'Sem 2',
              ),
              ExamPaper(
                paperName: 'Sem 3',
              ),
              ExamPaper(
                paperName: 'Sem 4',
              ),
            ],
          ),
          ExamPaperSection(
            subjectName: 'MBA',
            papers: [
              ExamPaper(
                paperName: 'Sem 1',
              ),
              ExamPaper(
                paperName: 'Sem 2',
              ),
              ExamPaper(
                paperName: 'Sem 3',
              ),
              ExamPaper(
                paperName: 'Sem 4',
              ),
            ],
          ),
          // ExamPaperSection(
          //   subjectName: 'Chemistry',
          //   papers: [
          //     ExamPaper(
          //       paperName: 'Chemistry Paper 1',
          //       date: '2022-01-05',
          //       time: '01:00 PM',
          //     ),
          //     ExamPaper(
          //       paperName: 'Chemistry Paper 2',
          //       date: '2022-01-06',
          //       time: '02:00 PM',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class ExamPaperSection extends StatelessWidget {
  const ExamPaperSection({
    super.key,
    required this.subjectName,
    required this.papers,
  });

  final String subjectName;
  final List<ExamPaper> papers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subjectName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...papers.map((paper) => ExamPaperCard(paper: paper)),
        ],
      ),
    );
  }
}

class ExamPaper {
  ExamPaper({
    required this.paperName,
    // required this.date,
    // required this.time,
  });

  final String paperName;
// final String date;
// final String time;
}

class ExamPaperCard extends StatelessWidget {
  const ExamPaperCard({
    super.key,
    required this.paper,
  });

  final ExamPaper paper;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              paper.paperName,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            // Text(
            //   'Date: ${paper.date}',
            //   style: TextStyle(
            //     color: Colors.grey[600],
            //   ),
            // ),
            // Text(
            //   'Time: ${paper.time}',
            //   style: TextStyle(
            //     color: Colors.grey[600],
            //   ),
            // ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to paper details screen
              },
              child: const Text('View Paper'),
            ),
          ],
        ),
      ),
    );
  }
}
