import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String labelHintText;
  final IconData? labelIcon;
  final Color globalColor;
  final bool enable;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.labelHintText,
    this.controller,
    this.labelIcon,
    this.globalColor = CustomColors.primaryColor,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          enabled: enable,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            prefixIcon: labelIcon != null
                ? Icon(
                    labelIcon,
                    color: globalColor,
                  )
                : null,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: globalColor, width: 1.0),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: labelHintText,
          ),
        ),
      ],
    );
  }
}