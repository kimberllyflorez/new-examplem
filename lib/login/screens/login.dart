import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Icon(
              Icons.star_border,
              color: Colors.white,
              size: 50.0,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 60),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Log in ',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          'your accont.',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const Text('Email Adress '),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'email',
                      ),
                    ),
                    const Text('Password '),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded,
                          color: Colors.green,),
                        border: OutlineInputBorder(),
                        hintText: 'password',
                      ),
                    ),

                    const Text('Forgot PassWord'),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.green)))),
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },

                      child: Text('Login'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Do not have an account?'),
                        Text(
                          'Sing in',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
