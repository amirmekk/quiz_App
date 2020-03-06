import 'package:flutter/material.dart';
import 'dart:math';
import 'package:routing/data/tawarikh.dart';

class Tawarikh extends StatefulWidget {
  @override
  _TawarikhState createState() => _TawarikhState();
}

class _TawarikhState extends State<Tawarikh> {
  List<String> _wa7adat = [
    'الوحدة الاولى',
    'الوحدة الثانية',
    'الوحدة الثالثة',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/courseAndQuiz',
                    arguments: [_wa7adat[index], 'تواريخ', 4, 2, index + 1]);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Text(
                      _wa7adat[index],
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'Amiri'),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'عناصر متفرقة',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[800]),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.timer),
                title: Text('امتحان مصغر - 5 دقائق'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.library_books),
                title: Text('تاريخ عشوائي'),
                onTap: () {
                  var rng = new Random();
                  var randomItem = tawarikh[rng.nextInt(tawarikh.length)];
                  showDialog(
                      context: context,
                      builder: (_) => Directionality(
                            textDirection: TextDirection.rtl,
                            child: AlertDialog(
                              title: Text('${randomItem.tarikh}'),
                              content: Text('${randomItem.hadath}'),
                              actions: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      GestureDetector(
                                        child: Icon(
                                          Icons.star_border,
                                          size: 30,
                                        ),
                                        onTap: () {
                                          print('stared');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  child: Icon(
                                    Icons.check_circle,
                                    size: 30,
                                  ),
                                  onTap: () {
                                    Navigator.pop(context, 'OK');
                                  },
                                ),
                              ],
                            ),
                          ));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.timer),
                title: Text('امتحان مصغر - 10 دقائق'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.format_align_left),
                title: Text('جميع التواريخ'),
                onTap: () {
                  Navigator.pushNamed(context, '/all',
                      arguments: ['التواريخ', tawarikh]);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}