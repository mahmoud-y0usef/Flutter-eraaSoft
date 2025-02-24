import 'package:flutter/material.dart';
import '../view/home.dart';
import '../view/chats.dart';
import '../view/stories.dart';
import '../view/calls.dart';
import '../view/peoples.dart';

class Routes {
  static const String home = '/';
  static const String chats = '/chats';
  static const String stories = '/stories';
  static const String calls = '/calls';
  static const String peoples = '/peoples';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case chats:
        return MaterialPageRoute(builder: (_) => ChatsPage());
      case stories:
        return MaterialPageRoute(builder: (_) => StoriesPage());
      case calls:
        return MaterialPageRoute(builder: (_) => CallsPage());
      case peoples:
        return MaterialPageRoute(builder: (_) => PeoplesPage());
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
