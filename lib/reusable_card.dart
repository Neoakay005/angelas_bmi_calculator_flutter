import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colours, this.cardChild});

  final Color colours;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colours,
        borderRadius: BorderRadius.circular(15),
      ),
      child: cardChild,
    );
  }
}
