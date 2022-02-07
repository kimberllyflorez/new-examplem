import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: const Text('welcom to home'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: ()  {
              Navigator.pushNamed(context, 'imagen');
            },
            child: const Text('click for edit your profile',
              textAlign: TextAlign.center,)
        )
      ),
    );
  }
}
