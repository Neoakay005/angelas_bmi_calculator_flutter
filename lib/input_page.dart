import 'package:flutter/material.dart';

// Constants
const buttomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('BMI CALCULATOR'))),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colours: activeCardColour)),
                Expanded(child: ReusableCard(colours: activeCardColour)),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colours: activeCardColour)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colours: activeCardColour)),
                Expanded(child: ReusableCard(colours: activeCardColour)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: buttomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colours});

  final Color colours;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colours,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
