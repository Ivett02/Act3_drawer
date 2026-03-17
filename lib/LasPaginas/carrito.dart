import 'package:flutter/material.dart';
import 'drawer_menu.dart';
import 'widget_contenido.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color colorVino = Color(0xFF800020);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Carrito', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: colorVino,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const MenuDrawer(),
      body: const ContenidoSeccion(
        titulo: 'Mi Carrito',
        subTitulo: 'Tus próximas lecturas',
        imagen: 'https://raw.githubusercontent.com/Ivett02/imagenes-para-flutter-6J-11-febrero-2026/refs/heads/main/descarga%20(2).jfif',
      ),
    );
  }
}