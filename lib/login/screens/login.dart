import 'package:example_whit_github/Widgets/screens/custom_Text_Field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.greenAccent,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const Icon(
              Icons.star_border,
              color: Colors.white,
              size: 50.0,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 60),
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
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                    const CustomTextField(
                      labelText: 'email',
                      labelHintText: 'email',
                      labelIcon: Icons.email,
                    ),
                    const CustomTextField(
                      labelText: 'password',
                      labelHintText: 'password',
                      labelIcon: Icons.password_rounded,
                    ),
                    const Text(
                      'Forgot PassWord',
                      style: TextStyle(color: Colors.green),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.green)))),
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },

                          child: Text('Login'),

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Do not have an account?'),
                        Text('Sing in',
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
