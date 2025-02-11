import 'package:flutter/material.dart';
import '../view/home.dart';
import '../view/result.dart';

class Routes {
  static const String home = '/';
  static const String result = '/result';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());

      case result:
        if (settings.arguments is Map<String, dynamic>) {
          final args = settings.arguments as Map<String, dynamic>;

          return MaterialPageRoute(
            builder: (_) => ResultPage(
              result: args['result'] ?? 'Unknown',
              bmi: args['bmi'] ?? '',
              interpretation: args['interpretation'] ?? '',
              gender: args['gender'] ?? 0,
              age: args['age']?.toDouble() ?? 0.0,
            ),
          );
        }
        return _errorRoute(settings.name);

      default:
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for $routeName'),
        ),
      ),
    );
  }
}
