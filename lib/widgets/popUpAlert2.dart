import 'package:flutter/material.dart';
import 'package:routing/pages/bookmarks.dart';

class PopUpAlert2 extends StatelessWidget {
  final data;
  PopUpAlert2({this.data});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        title: Text('${data.itemOne}'),
        content: Text('${data.itemTwo}'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: updateBookmarks2(data.itemOne, data.itemTwo),
                  onTap: () {
                    String isThere =
                        updateBookmarks(data.itemOne, data.itemTwo);
                    //there is an error down here
                    //Scaffold.of(context).showSnackBar(
                    //SnackBar(content: Text('تم الاضافة الى المفضلة')));
                    Navigator.pop(context, 'OK');

                    showDialog(
                      context: context,
                      child: AlertDialog(
                        title: Text(isThere),
                      ),
                    );
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
    );
  }
}
