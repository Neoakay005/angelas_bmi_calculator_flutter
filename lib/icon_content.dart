import 'package:flutter/material.dart';

const lableTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        Padding(padding: EdgeInsets.only(bottom: 15)),
        Text(gender, style: lableTextStyle),
      ],
    );
  }
}
