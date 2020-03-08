import 'package:flutter/material.dart';
import 'package:routing/pages/all.dart';
import 'package:routing/pages/courseAndQuiz.dart';
import 'package:routing/pages/home.dart';
import 'package:routing/pages/quiz.dart';
import 'package:routing/pages/wad3iyat.dart';


class RouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/courseAndQuiz':
        return MaterialPageRoute(
          builder: (_) => CourseAndQuiz(
            courseAndQuiz: args,
          ),
        );
      case '/all':
        return MaterialPageRoute(
          builder: (_) => All(
            allList: args,
          ),
        );
      case '/wad3iyaPage':
        return MaterialPageRoute(
          builder: (_) => Wad3iyaPage(
            appBarTitleData: args,
          ),
        );
        case '/quiz':
        return MaterialPageRoute(
          builder: (_) => Quiz(
            quizData: args,
          ),
        );

      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(title: Text('error')),
    );
  });
}
