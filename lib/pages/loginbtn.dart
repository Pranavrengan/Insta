import 'package:flutter/material.dart';

class Loginbtn extends StatelessWidget {
  final String hintText;
  const Loginbtn({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 35,
          width: 280,
          color: Colors.blue[300],
          child: const Center(
            child: Text(
              'Log in',
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
