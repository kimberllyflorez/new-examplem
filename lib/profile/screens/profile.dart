import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' profile'),
        ),
        body:
        Card(
          child: Column(
            children: const [
              Image(
                  image: NetworkImage('https://media.istockphoto.com'
                      '/vectors/business-man-profile-icon-male-avatar-hipster-vector-'
                      'id518056052'))
            ],
          ),

        ),

    );
  }
}
