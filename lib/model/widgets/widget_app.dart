import 'package:flutter/material.dart';

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50 // Espacio desde la parte superior
                  ),
              child: Center(
                child: Container(
                  height: 440,
                  width: 280,
                  decoration: BoxDecoration(
                    color: const Color(0XFFBBBBBB), // Color del contenedor
                    borderRadius:
                        BorderRadius.circular(20), // Bordes redondeados
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.2), // Color de la sombra
                        spreadRadius: 5, // Cuánto se extiende la sombra
                        blurRadius: 20, // Difuminado de la sombra
                        offset: const Offset(0,5), // Desplazamiento horizontal y vertical de la sombra
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
