import 'package:flutter/material.dart';
import 'package:routing/data/tawarikh.dart';

class CourseAndQuiz extends StatefulWidget {
  final List courseAndQuiz;
  CourseAndQuiz({Key key , this.courseAndQuiz}):super(key: key);

  @override
  _CourseAndQuizState createState() => _CourseAndQuizState();
}

class _CourseAndQuizState extends State<CourseAndQuiz> {
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
            title: Text('${widget.courseAndQuiz[1]} ${widget.courseAndQuiz[0]}'),
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
                    List newTwaraikh = tawarikh.where((i) => i.wad3iya ==index+1 && i.wihda==widget.courseAndQuiz[4]).toList();
                    Navigator.pushNamed(context, '/wad3iyaPage',
                        arguments: [wad3iyat[index], newTwaraikh]);
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
              itemCount: widget.courseAndQuiz[2],
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
              itemCount: widget.courseAndQuiz[3],
            ),
          ]),
        ),
      ),
    );
  }
}
