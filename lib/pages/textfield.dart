import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String hintText;
  final bool obscure;
  const Textfield({super.key, required this.hintText, required this.obscure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 37,
        width: 280,
        color: Colors.grey[98],
        child: TextField(
          obscureText: obscure,
          cursorHeight: 21,
          decoration: InputDecoration(
            fillColor: Colors.grey[300],
            focusColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 12.5,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 0.7,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
