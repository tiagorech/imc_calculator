import 'package:flutter/material.dart';
import 'package:imc_calculator/configurations/bright_theme.dart';
import 'package:imc_calculator/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: brightTheme,
      home: const MyHomePage(title: 'Calculadora de IMC'),
    );
  }
}
