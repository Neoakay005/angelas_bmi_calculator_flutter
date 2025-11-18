import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

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
