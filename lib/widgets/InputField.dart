import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.labelText,
    required this.icon,
    required this.inputType,
    required this.obscureText,
    required this.textColor,
    required this.prefixIconColor,
    required this.borderColor,
  });

  final String labelText;
  final IconData icon;
  final TextInputType inputType;
  final bool obscureText;
  final Color textColor;
  final Color prefixIconColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: inputType,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        prefixIconColor: prefixIconColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColor, width: 2),
        ),
        label: Text(labelText, style: TextStyle(color: textColor)),
      ),
    );
  }
}
