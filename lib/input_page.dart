import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                Expanded(
                  child: ReusableCard(
                    colours: activeCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      gender: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colours: activeCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      gender: "Female",
                    ),
                  ),
                ),
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

class IconContent extends StatelessWidget {
  const IconContent({required this.icon, required this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        Padding(padding: EdgeInsets.only(bottom: 15)),
        Text(gender, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98))),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colours, this.cardChild});

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
