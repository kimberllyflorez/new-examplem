import 'package:example_whit_github/login/screens/login.dart';
import 'package:example_whit_github/home/screens/home.dart';
import 'package:example_whit_github/profile/screens/profile.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const initalRoute = 'login';

  static CupertinoPageRoute onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return CupertinoPageRoute(
            builder: (_) => LoginScreen(), settings: settings);
      case '/':
        return CupertinoPageRoute(builder: (_) => Home(), settings: settings);
      case 'profile':
        return CupertinoPageRoute(
            builder: (_) => Profile(), settings: settings);
      default:
        return CupertinoPageRoute(builder: (_) => Home(), settings: settings);
    }
  }
}
