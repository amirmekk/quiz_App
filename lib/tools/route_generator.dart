import 'package:flutter/material.dart';
import 'package:routing/pages/all.dart';
import 'package:routing/pages/courseAndQuiz.dart';
import 'package:routing/pages/home.dart';
import 'package:routing/pages/secondPage.dart';

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
      case '/secondPage':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              i: args,
            ),
          );
        }
        return _errorRoute();
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
