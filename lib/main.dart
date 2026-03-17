import 'package:flutter/material.dart';
import 'LasPaginas/inicio.dart';
import 'LasPaginas/libros.dart';
import 'LasPaginas/generos.dart';
import 'LasPaginas/autores.dart';
import 'LasPaginas/carrito.dart';

void main() => runApp(const MiLibreriaApp());

class MiLibreriaApp extends StatelessWidget {
  const MiLibreriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color colorVino = Color(0xFF800020);
    const Color colorBeige = Color(0xFFF5F5DC);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tinta & Hojas',
      theme: ThemeData(
        primaryColor: colorVino,
        scaffoldBackgroundColor: colorBeige,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(),
        '/libros': (context) => const LibrosPage(),
        '/generos': (context) => const GenerosPage(),
        '/autores': (context) => const AutoresPage(),
        '/carrito': (context) => const CarritoPage(),
      },
    );
  }
}