import 'package:flutter/material.dart';
import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:example_whit_github/widgets/text_fields/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _logo(),
          _form(),
        ],
      ),
    );
  }

  Widget _logo() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 60),
          Icon(
            Icons.star_border,
            color: Colors.white,
            size: 50.0,
          ),
          Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  Widget _form() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Log in ',
                style: TextStyle(
                  color: CustomColors.primaryColor,
                  fontSize: 20,
                ),
              ),
              Text(
                'your accont.',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const CustomTextField(
            labelText: 'Email',
            labelHintText: 'example@email.com',
            labelIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,

          ),
          const CustomTextField(
            labelText: 'Password',
            labelHintText: '********',
            labelIcon: Icons.lock,
            obscureText: true,

          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Forgot Password',
              style: TextStyle(color: CustomColors.primaryColor),
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              },
              child: const Text('Login'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Do not have an account? '),
              Text(
                'Sign in',
                style: TextStyle(
                  color: CustomColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
