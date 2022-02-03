import 'package:example_whit_github/screens/perfil.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextField(
             decoration:  InputDecoration(
                border: InputBorder.none,
                 hintText: 'Please introduce your first name'),
          ),
         const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Please introduce your second name'),
          ),
          ElevatedButton(
              onPressed: ()  {
                Navigator.pushNamed(context, 'home');
              },
              child: Text('ingresar')

          )
        ],

      ),
    );
  }
}
