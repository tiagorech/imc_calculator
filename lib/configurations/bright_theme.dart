import 'package:flutter/material.dart';

final ThemeData brightTheme = ThemeData(
  brightness: Brightness.light, // Define o tema como claro
  primaryColor: const Color(0xFF1976D2), // Azul primário
  scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Fundo claro
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF1976D2), // Azul para AppBar e botões principais
    secondary: Color(0xFF4CAF50), // Fundo da tela principal
    surface: Color(0xFFEEEEEE), // Fundo para campos de entrada
    onPrimary: Colors.white, // Cor do texto nos botões principais
    onSecondary: Colors.white, // Cor do texto nos botões secundários
    error: Color(0xFFE57373), // Cor do texto em fundo claro
    onSurface: Colors.black, // Cor do texto sobre superfícies claras
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor:
          const Color(0xFF1976D2), // Cor principal para botões elevados
      foregroundColor: Colors.white, // Cor do texto nos botões
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFEEEEEE), // Fundo dos TextFormFields
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none,
    ),
    labelStyle: TextStyle(color: Colors.grey[700]), // Cor do rótulo
    hintStyle: TextStyle(color: Colors.grey[500]), // Cor do texto de dica
  ),
);
