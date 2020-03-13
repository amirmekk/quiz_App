import 'package:flutter/material.dart';
import 'package:routing/pages/bookmarks.dart';

class PopUpAlert2 extends StatefulWidget {
  final data;
  PopUpAlert2({this.data});

  @override
  _PopUpAlert2State createState() => _PopUpAlert2State();
}

class _PopUpAlert2State extends State<PopUpAlert2> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        title: Text('${widget.data.itemOne}'),
        content: Text('${widget.data.itemTwo}'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: checkIfExist(widget.data.itemOne),
                  onTap: () {
                    setState(() {
                      updateBookmarks(
                          widget.data.itemOne, widget.data.itemTwo);
                    });

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
