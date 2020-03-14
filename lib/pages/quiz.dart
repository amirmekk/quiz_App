import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  final List quizData;
  Quiz({Key key, this.quizData}) : super(key: key);
  @override
  _QuizState createState() => _QuizState();
}

int questionNumber = 0;
int score = 0;

class _QuizState extends State<Quiz> {
  @override
  void initState() {
    super.initState();
    questionNumber = 0;
    score = 0;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Directionality(
        child: Scaffold(
          backgroundColor: Colors.amber[800],
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'السؤال ${questionNumber + 1} من ${widget.quizData[0].length} ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Amiri',
                      ),
                    ),
                    Text(
                      'لقد اجبت $score اجابات صحيحة ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Amiri',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'ما هي الاجابة الصحيحة الموافقة للعنصر التالي :',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Amiri',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    '${widget.quizData[0][questionNumber].question}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          widget.quizData[0][questionNumber].question.length >
                                  30
                              ? 20
                              : 40,
                      fontFamily: 'Amiri',
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    //isThreeLine: true,
                    subtitle: Text(
                      '${widget.quizData[0][questionNumber].answers[0]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: widget.quizData[0][questionNumber].answers[0]
                                    .length >
                                40
                            ? 15
                            : 25,
                        color: Colors.black,
                      ),
                    ),
                    leading: Text(
                      '1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (widget.quizData[0][questionNumber].answers[0] ==
                            widget.quizData[0][questionNumber].correctAnswer) {
                          score++;
                          print('corrcet');
                        }
                        updtaeQuestion();
                      });
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    //isThreeLine: true,
                    subtitle: Text(
                      '${widget.quizData[0][questionNumber].answers[1]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: widget.quizData[0][questionNumber].answers[1]
                                    .length >
                                40
                            ? 15
                            : 25,
                        color: Colors.black,
                      ),
                    ),
                    leading: Text(
                      '2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (widget.quizData[0][questionNumber].answers[1] ==
                            widget.quizData[0][questionNumber].correctAnswer) {
                          score++;
                          print('corrcet');
                        }
                        updtaeQuestion();
                      });
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    //isThreeLine: true,
                    subtitle: Text(
                      '${widget.quizData[0][questionNumber].answers[2]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: widget.quizData[0][questionNumber].answers[2]
                                    .length >
                                40
                            ? 15
                            : 25,
                        color: Colors.black,
                      ),
                    ),
                    leading: Text(
                      '3',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (widget.quizData[0][questionNumber].answers[2] ==
                            widget.quizData[0][questionNumber].correctAnswer) {
                          score++;
                          print('corrcet');
                        }
                        updtaeQuestion();
                      });
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    //isThreeLine: true,
                    subtitle: Text(
                      '${widget.quizData[0][questionNumber].answers[3]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: widget.quizData[0][questionNumber].answers[3]
                                    .length >
                                40
                            ? 15
                            : 25,
                        color: Colors.black,
                      ),
                    ),
                    leading: Text(
                      '4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (widget.quizData[0][questionNumber].answers[3] ==
                            widget.quizData[0][questionNumber].correctAnswer) {
                          score++;
                          print('corrcet');
                        }
                        updtaeQuestion();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        textDirection: TextDirection.rtl,
      ),
      onWillPop: () async => false,
    );
  }

  void updtaeQuestion() {
    if (questionNumber == widget.quizData[0].length - 1) {
      print(score);
      Navigator.popAndPushNamed(context, '/resultAfterQuiz',
          arguments: [score, widget.quizData[0].length]);
    } else {
      questionNumber++;
    }
  }
}
