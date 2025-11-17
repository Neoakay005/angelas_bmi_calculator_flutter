import 'package:flutter/material.dart';

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard(colour: Color(0xFF1D1E33))),
                Expanded(child: ReuseableCard(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: ReuseableCard(colour: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard(colour: Color(0xFF1D1E33))),
                Expanded(child: ReuseableCard(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour});
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
