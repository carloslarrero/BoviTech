import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WidgetApp extends StatefulWidget {
  const WidgetApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WidgetAppState createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  List<int> containerIds = []; // lista de identificadores de contenedores

  // construccion del contenedor gris
  Widget buildContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 20), // Espacio entre contenedores
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 440,
              width: 280,
              decoration: BoxDecoration(
                color: const Color(0XFFBBBBBB), // Color del contenedor
                borderRadius: BorderRadius.circular(20), // Bordes redondeados
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Color de la sombra
                    spreadRadius: 5, // Cuánto se extiende la sombra
                    blurRadius: 20, // Difuminado de la sombra
                    offset: const Offset(0, 5), // Desplazamiento de la sombra
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(
                        // ignore: deprecated_member_use
                        FontAwesomeIcons.times, // Icono de "salir"
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        removeContainer(
                            index); // Eliminar el contenedor correspondiente
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Método para agregar un nuevo contenedor a la lista
  void addNewContainer() {
    setState(() {
      containerIds.add(containerIds.length); // Agrega un nuevo identificador
    });
  }

  // Método para eliminar un contenedor
  void removeContainer(int index) {
    setState(() {
      containerIds
          .removeAt(index); // Elimina el contenedor en el índice especificado
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Añade SingleChildScrollView aquí
      child: Column(
        children: [
          // Mostrar todos los contenedores en la lista, si existen
          for (int i = 0; i < containerIds.length; i++) buildContainer(i),
          const SizedBox(height: 20),
          Center(
            child: IconButton(
              icon: const Icon(
                FontAwesomeIcons.folderPlus, // Icono de "carpeta plus"
                size: 50, // Tamaño del icono
                color: Colors.black, // Color del icono
              ),
              onPressed:
                  addNewContainer, // Llamar al método para agregar un nuevo contenedor
            ),
          ),
        ],
      ),
    );
  }
}
