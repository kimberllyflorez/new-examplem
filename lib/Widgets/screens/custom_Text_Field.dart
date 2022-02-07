import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String labelHintText;
  final IconData labelIcon;
  final Color globalColor;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.labelHintText,
    required this.labelIcon,
    this.globalColor = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              labelIcon,
              color: globalColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: globalColor, width: 1.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(15),
            ),

            hintText: labelHintText,
          ),
        ),
      ],
    );
  }
}
