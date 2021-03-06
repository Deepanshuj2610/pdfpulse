import 'package:flutter/material.dart';
import 'package:pdfpulse/components/text_field_container.dart';
import 'package:pdfpulse/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: purssianblue,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: purssianblue,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: purssianblue,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
