import 'package:flutter/material.dart';
import 'package:flutter_application_1/cons.dart';

class CustomTextFeild extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;
  const CustomTextFeild({
    super.key, required this.icon, required this.obscureText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    var cons;
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(icon,color: Colors.black.withOpacity(.1),),
        hintText: hintText
      ),
      cursorColor: Colors.black.withOpacity(.5),
    );
  }
}
