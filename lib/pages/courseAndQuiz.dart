import 'package:flutter/material.dart';

class CourseAndQuiz extends StatelessWidget {
  final List courseAndQuiz;
  CourseAndQuiz({this.courseAndQuiz});

  @override
  Widget build(BuildContext context) {
    final List wad3iyat = [
      'الوضعية الاولى',
      'الوضعية الثانية',
      'الوضعية الثالثة',
      'الوضعية الرابعة',
      'do not exist'
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('${courseAndQuiz[1]} ${courseAndQuiz[0]}'),
            bottom: TabBar(tabs: [
              Tab(text: 'عناصر للحفظ'),
              Tab(text: 'امتحان قصير'),
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {
                    print('saber');
                  },
                  leading: Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(wad3iyat[index]),
                ),
              ),
              itemCount: courseAndQuiz[2],
            ),
            ListView.builder(
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {
                    print('amir');
                  },
                  leading: Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  title: Text(wad3iyat[index]),
                ),
              ),
              itemCount: courseAndQuiz[3],
            ),
          ]),
        ),
      ),
    );
  }
}
