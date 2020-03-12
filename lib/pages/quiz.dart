import 'package:flutter/material.dart';
//import 'package:routing/data/tawarikh.dart';

class Quiz extends StatefulWidget {
  final List quizData;
  Quiz({Key key, this.quizData}) : super(key: key);
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  void initState() {
    super.initState();
    //_generateQAndA(tawarikh);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'السؤال',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Amiri',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'ما التاريخ أو الشرح الموافق للعنصر التالي:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Amiri',
                  ),
                ),
              ),
              Center(
                child: Text(
                  '30 جوان 1999',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Amiri',
                  ),
                ),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    isThreeLine: true,
                    subtitle: Text(
                      'الاجابة الاولى',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 27,
                        color: Colors.black , 
                      ),
                    ),
                    leading: Text(
                      '$index',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: (){
                    },
                  ),
                  itemCount: 4,
                ),
              )
            ],
          ),
        ),
      ),
      textDirection: TextDirection.rtl,
    );
  }
}
