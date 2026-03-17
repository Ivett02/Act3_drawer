import 'package:flutter/material.dart';

class ContenidoSeccion extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final String imagen;

  const ContenidoSeccion({
    super.key,
    required this.titulo,
    required this.subTitulo,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    const Color colorVino = Color(0xFF800020);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: colorVino, width: 2),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imagen,
                fit: BoxFit.cover,
                errorBuilder: (context, _, __) => const Icon(Icons.broken_image, size: 50, color: colorVino),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(titulo, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: colorVino)),
          const SizedBox(height: 10),
          Text(subTitulo, style: TextStyle(fontSize: 16, color: Colors.grey[800], fontStyle: FontStyle.italic)),
        ],
      ),
    );
  }
}