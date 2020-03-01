import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String i ; 
  SecondPage({this.i});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: Text(i),
      
    );
  }
}