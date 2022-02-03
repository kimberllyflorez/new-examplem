import 'package:example_whit_github/screens/screens.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginScreen(),
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_)=>Home(),
        'profile': (_) => Profile()
      },
    );
  }
}
