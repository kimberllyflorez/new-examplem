import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text('welcom to home'),
      ),
      body: Center(

        child: ElevatedButton(
            onPressed: ()  {
              Navigator.pushNamed(context, 'profile');
            },
            child: Text('click for edit your profile')

        )
      ),
    );
  }
}
