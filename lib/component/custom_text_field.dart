import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final int maxLength;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;

  CustomTextField({
    this.hintText,
    this.obscureText = false,
    this.maxLength,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PRIMARY_COLOR.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        onChanged: onChanged,
        maxLength: maxLength,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: PRIMARY_COLOR.withOpacity(0.5),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
