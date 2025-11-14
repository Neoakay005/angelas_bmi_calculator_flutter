import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark().copyWith(
          primary: const Color.fromARGB(255, 125, 133, 176),
          onPrimary: const Color.fromARGB(255, 131, 137, 164),
          surface: const Color(0xFF1D1E33),
        ),
        useMaterial3: true,
      ),
      home: const InputPage(),
    );
  }
}
