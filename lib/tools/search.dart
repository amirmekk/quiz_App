import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  List data;
  DataSearch({this.data});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_forward),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query = '';
      },
      icon: Icon(Icons.clear),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List newData = data
        .where((f) => f.hadath.contains(query) || f.tarikh.contains(query))
        .toList();
    return ListView.builder(
      itemCount: newData.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
              isThreeLine: true,
              leading: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: AlertDialog(
                            title: Text('${newData[index].tarikh}'),
                            content: Text('${newData[index].hadath}'),
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
              title: Text(newData[index].tarikh),
              subtitle: Text(newData[index].hadath),
              trailing: IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {},
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List newData = data
        .where((f) => f.hadath.contains(query) || f.tarikh.contains(query))
        .toList();
    return ListView.builder(
      itemCount: newData.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
              isThreeLine: true,
              leading: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: AlertDialog(
                            title: Text('${newData[index].tarikh}'),
                            content: Text('${newData[index].hadath}'),
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
              title: Text(newData[index].tarikh),
              subtitle: Text(newData[index].hadath),
              trailing: IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {},
              ),
            ),
          ),
        );
      },
    );
  }
}
