import 'package:bovine_tech/model/widgets/widget_app.dart';
import 'package:dark_light_button/dark_light_button.dart';
import 'package:flutter/material.dart';


class PrincipalPage extends StatelessWidget {
  final bool isDarkMode;
  final Function(ThemeMode) onChangeTheme; // Cambiado a función que recibe ThemeMode

  const PrincipalPage({
    super.key,
    required this.isDarkMode,
    required this.onChangeTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Bovi Tech', style: TextStyle(
          color: Colors.white, 
          fontSize: 25,  
          fontWeight: FontWeight.bold,
          ),
          ),
        centerTitle: true,
        leading: DarlightButton(
          type: Darlights.DarlightOne,
          onChange: (ThemeMode theme) {
            onChangeTheme(theme); // Llama a la función para cambiar el tema
          },
          options: DarlightOneOption(),
        ),
      ),
      body: const WidgetApp()
    );
  }
}

