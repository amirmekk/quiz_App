import 'package:flutter/material.dart';
import 'package:routing/tools/search.dart';

class All extends StatelessWidget {
  final List allList;
  All({this.allList});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('جميع ${allList[0]}'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: DataSearch(data: allList[1]));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: Container(
            child: ListView.builder(
          itemCount: allList[1].length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: AlertDialog(
                            title: Text('${allList[1][index].tarikh}'),
                            content: Text('${allList[1][index].hadath}'),
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
              trailing: IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {},
              ),
              subtitle: Text('${allList[1][index].hadath}'),
              isThreeLine: true,
              leading: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              title: Text('${allList[1][index].tarikh}'),
            ),
          ),
        )),
      ),
    );
  }
}