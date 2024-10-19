import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF02321A);

const List<Color> _colorThemes = [
  _customColor,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Los colores deben ser de 0 a ${_colorThemes.length}");

  ThemeData theme({bool isDarkMode = false}) {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }
}
