import 'package:example_whit_github/approuter/approuter.dart';
import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: theme,
      initialRoute: AppRoutes.initalRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }

  final theme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: CustomColors.primaryColor,
    ),
    primaryColor: CustomColors.primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: CustomColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    ),
  );
}
