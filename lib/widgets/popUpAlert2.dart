import 'package:flutter/material.dart';

class PopUpAlert2 extends StatelessWidget {
  final data ;
  PopUpAlert2( {this.data});
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
                  );
  }
}