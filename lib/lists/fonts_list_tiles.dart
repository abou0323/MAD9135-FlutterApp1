import 'package:flutter/material.dart';

class FontsListTiles extends StatelessWidget {
  const FontsListTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.label_outline),
          tileColor: Colors.indigo[100],
          title: const Text('Default'),
        ),
        const SizedBox(height: 8.0), // Space between ListTiles
        ListTile(
          leading: const Icon(Icons.image),
          tileColor: Colors.indigo[100],
          title: const Text('Poppins Regular 400',
              // without style specifications, font would be same as default
              style: TextStyle(
                  fontFamily: 'Poppins', fontStyle: FontStyle.normal)),
        ),
        const SizedBox(height: 8.0), // Space between ListTiles
        ListTile(
          leading: const Icon(Icons.star),
          tileColor: Colors.indigo[100],
          title: const Text('Poppins Regular Italic 400',
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        const SizedBox(height: 8.0), // Space between ListTiles
        ListTile(
          leading: const Icon(Icons.favorite),
          tileColor: Colors.indigo[100],
          title: const Text('Poppins Bold 700',
              style: TextStyle(fontWeight: FontWeight.w700)),
        ),
        const SizedBox(height: 8.0), // Space between ListTiles
        ListTile(
          leading: const Icon(Icons.location_on_sharp),
          tileColor: Colors.indigo[100],
          title: const Text('Poppins Semi-Bold Italic 600',
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 8.0), // Space between ListTiles
        ListTile(
          leading: const Icon(Icons.camera_alt_outlined),
          tileColor: Colors.indigo[100],
          title: const Text('Poppins Extra Light 200',
              style: TextStyle(fontWeight: FontWeight.w200)),
        ),
      ],
    );
  }
}
