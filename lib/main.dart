import 'package:example_whit_github/AppRouter/approuter.dart';
import 'package:example_whit_github/screens/screens.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initalRoute,
      routes: {
        'login'   : (_) => LoginScreen(),
        'profil'    : (_)=>Home(),
        'imagen' : (_) => Profile()
      },
    );
  }
}
