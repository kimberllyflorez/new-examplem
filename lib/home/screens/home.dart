import 'package:example_whit_github/login/screens/login.dart';
import 'package:example_whit_github/profile/screens/profile.dart';
import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectIndex = 0;

  static List<Widget> _children = <Widget>[
    //Home(),
    Text('sdfsdgdf'),
    Text('sdfds'),

    Profile(),

  ];


  void onTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
    //pageController.jumpToPage(_children);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcom to home'),
      ),
      body: Container(
        child: _children[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items:
          <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paste_rounded),
              label: 'login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_people),
              label: 'perfil',
            )
          ],
          currentIndex: _selectIndex,
          selectedItemColor: CustomColors.primaryColor,
          onTap: onTapped,

      ),
    );
  }
}
