import 'package:bovine_tech/config/theme/app_theme.dart';
import 'package:bovine_tech/pages/principal_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Estado inicial

  void _toggleTheme(ThemeMode theme) {
    setState(() {
      _themeMode = theme; // Cambia el estado según el tema recibido
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bovine Tech',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(isDarkMode: _themeMode == ThemeMode.dark),
      darkTheme: AppTheme(selectedColor: 0).theme(isDarkMode: true),
      themeMode: _themeMode, // Aplica el modo de tema actual
      home: PrincipalPage(
        isDarkMode: _themeMode == ThemeMode.dark,
        onChangeTheme: _toggleTheme, // Pasa la función que cambia el tema
      ),
    );
  }
}


