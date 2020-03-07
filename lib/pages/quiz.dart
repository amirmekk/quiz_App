import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  final List quizData;
  Quiz({Key key, this.quizData}) : super(key: key);
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'ما الحدث أو التاريخ الموافق للعنصر التالي ؟',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Amiri'),
                  ),
                ),
                Center(
                  child: Text(
                    '30 جوان 1999',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Amiri'),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      RadioListTile(
                        value: '',
                        groupValue: '',
                        onChanged: (String value) {},
                        title: Text('حدث شيئ خطير'),
                        activeColor: Colors.amber[800],
                      ),
                      RadioListTile(
                        value: '',
                        groupValue: '',
                        onChanged: (String value) {},
                        title: Text('لم يحدث شيء'),
                        activeColor: Colors.amber[800],
                      ),
                      RadioListTile(
                        value: '',
                        groupValue: '',
                        onChanged: (String value) {},
                        title: Text('لم يحدث شيء'),
                        activeColor: Colors.amber[800],
                      ),
                      RadioListTile(
                        value: '',
                        groupValue: '',
                        onChanged: (String value) {},
                        title: Text('لم يحدث شيء'),
                        activeColor: Colors.amber[800],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20 ) ,
                FlatButton.icon(
                  icon: Icon(Icons.arrow_back_ios , color: Colors.white,),
                  onPressed: () {},
                  label: Text('التالي', style: TextStyle(
                    fontSize: 20 , 
                    color: Colors.white
                  ),),
                )
              ],
            )),
      ),
    );
  }
}
