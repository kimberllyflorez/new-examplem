import 'package:example_whit_github/login/screens/login.dart';
import 'package:example_whit_github/home/screens/home.dart';
import 'package:example_whit_github/profile/screens/profile.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initalRoute = 'login';

  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (_) => LoginScreen(),
    'home': (_) => Home(),
    'profile': (_) => Profile(),
  };
}
