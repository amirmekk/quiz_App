import 'package:flutter/material.dart';

class PopUpAlert extends StatelessWidget {
  final List data ;
  final int index ; 
  PopUpAlert( {this.data , this.index});
  @override
  Widget build(BuildContext context) {
    return Directionality(
                    textDirection: TextDirection.rtl,
                    child: AlertDialog(
                      title: Text('${data[1][index].itemOne}'),
                      content: Text('${data[1][index].itemTwo}'),
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