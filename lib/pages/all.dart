import 'package:flutter/material.dart';
import 'package:routing/pages/bookmarks.dart';
import 'package:routing/tools/search.dart';
import 'package:routing/widgets/popUpAlert.dart';

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
                    builder: (_) => PopUpAlert(data: allList, index: index));
              },
              trailing: IconButton(
                icon: updateBookmarks2(
                    allList[1][index].itemOne, allList[1][index].itemTwo),
                onPressed: () {
                  updateBookmarks(
                      allList[1][index].itemOne, allList[1][index].itemTwo);
                }, //updateBookmarks(allList[1][index].itemOne, allList[1][index].itemTwo),
              ),
              subtitle: Text('${allList[1][index].itemTwo}'),
              isThreeLine: true,
              leading: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              title: Text('${allList[1][index].itemOne}'),
            ),
          ),
        )),
      ),
    );
  }
}
