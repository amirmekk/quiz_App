import 'package:flutter/material.dart';
import 'package:routing/pages/bookmarks.dart';
import 'package:routing/tools/search.dart';



class All extends StatefulWidget {
  final List allList;
  All({Key key ,this.allList}): super(key: key);
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('جميع ${widget.allList[0]}'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: DataSearch(data: widget.allList[1]));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: Container(
            child: ListView.builder(
          itemCount: widget.allList[1].length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              onTap: () {
                
              },
              trailing: IconButton(
                icon: checkIfExist(widget.allList[1][index].itemOne),
                onPressed: () {
                  setState(() {
                    updateBookmarks(
                      widget.allList[1][index].itemOne, widget.allList[1][index].itemTwo);
                  });
                  
                }, 
              ),
              subtitle: Text('${widget.allList[1][index].itemTwo}'),
              isThreeLine: true,
              leading: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              title: Text('${widget.allList[1][index].itemOne}'),
            ),
          ),
        )),
      ),
    );
  }
}