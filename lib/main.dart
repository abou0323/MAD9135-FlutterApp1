import 'package:flutter/material.dart';
import 'package:flutter_app_1/lists/fonts_list_tiles.dart';
import 'package:flutter_app_1/lists/images_assets.dart';
import 'package:flutter_app_1/lists/images_network.dart';

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
              child: ImagesAssetsScroller(),
            ),
            const SizedBox(height: 16.0), // Space between ListView and ListTile
            const FontsListTiles(),
            const SizedBox(height: 16.0), // Space between ListTile and ListView
            SizedBox(
              height: 250.0,
              child: ImagesNetworkScroller(),
            ),
          ],
        ),
      ),
    );
  }
}
