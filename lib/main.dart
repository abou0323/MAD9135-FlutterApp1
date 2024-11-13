import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App 1',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Images and Assets',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: Image.asset(
                      'assets/images/sunset.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: Image.asset(
                      'assets/images/dusk.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/night-sky.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0), // Space between ListView and ListTile
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
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 8.0), // Space between ListTiles
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              tileColor: Colors.indigo[100],
              title: const Text('Poppins Extra Light 200',
                  style: TextStyle(fontWeight: FontWeight.w200)),
            ),
            const SizedBox(
                height: 16.0), // Space between ListTile and another ListView
            SizedBox(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: Image.network(
                      'https://images.pexels.com/photos/87812/pexels-photo-87812.jpeg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: Image.network(
                      'https://images.pexels.com/photos/55787/pexels-photo-55787.jpeg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://images.pexels.com/photos/1542493/pexels-photo-1542493.jpeg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
