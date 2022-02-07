import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late final TextEditingController _userNameController;
  late final TextEditingController _countryController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;

  @override
  void initState() {
    _userNameController = TextEditingController();
    _countryController = TextEditingController();
    _phoneController = TextEditingController();
    _addressController = TextEditingController();
    _userNameController.text = 'John Doe';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), actions: [
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('login'));
          },
        ),
      ]),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _picture(),
          SizedBox(height: 20),
          _form(),
        ],
      ),
    );
  }

  Widget _picture() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
              'https://media.istockphoto.com'
              '/vectors/business-man-profile-icon-male-avatar-hipster-vector-'
              'id518056052',
            ),
          ),
        ),
        SizedBox(height: 10),
        Text('Jhon Doe'),
      ],
    );
  }

  Widget _form() {
    return Card(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _userNameController,
              enabled: false,
            ),
            TextField(
              controller: _countryController,
              decoration: InputDecoration(
                hintText: 'Country',
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: 'Address',
              ),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'Phone',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
