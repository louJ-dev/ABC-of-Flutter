import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.iconData,
    this.obscure = false,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData iconData;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(iconData),
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
