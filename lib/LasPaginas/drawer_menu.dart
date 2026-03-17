import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const Color colorVino = Color(0xFF800020);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 250,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: colorVino,
                image: DecorationImage(
                  image: NetworkImage('https://raw.githubusercontent.com/Ivett02/imagenes-para-flutter-6J-11-febrero-2026/refs/heads/main/descarga.jfif'),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
              ),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/Ivett02/imagenes-para-flutter-6J-11-febrero-2026/refs/heads/main/descarga%20(1).jfif'),
                ),
              ),
              accountName: const Text(
                'Librería Tinta & Hojas',
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(blurRadius: 5, color: Colors.black, offset: Offset(1, 1))]
                ),
              ),
              accountEmail: const Text(
                'Av. de los Poetas #123\nTel: (656) 123-4567\ncontacto@tintahojas.com',
                style: TextStyle(
                  fontSize: 13,
                  height: 1.4,
                  shadows: [Shadow(blurRadius: 5, color: Colors.black, offset: Offset(1, 1))]
                ),
              ),
            ),
          ),
          _crearItemMenu(context, Icons.home, 'Inicio', '/'),
          _crearItemMenu(context, Icons.book, 'Libros', '/libros'),
          _crearItemMenu(context, Icons.style, 'Géneros', '/generos'),
          _crearItemMenu(context, Icons.edit_note, 'Autores', '/autores'),
          const Divider(),
          _crearItemMenu(context, Icons.shopping_cart, 'Carrito', '/carrito'),
        ],
      ),
    );
  }

  Widget _crearItemMenu(BuildContext context, IconData icono, String texto, String ruta) {
    const Color colorVino = Color(0xFF800020);
    return ListTile(
      leading: Icon(icono, color: colorVino),
      title: Text(
        texto, 
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: colorVino)
      ),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}