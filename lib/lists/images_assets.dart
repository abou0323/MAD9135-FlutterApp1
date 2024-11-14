import 'package:flutter/material.dart';

class ImagesAssetsScroller extends StatelessWidget {
  final List<String> imagesAssets = [
    'assets/images/sunset.jpg',
    'assets/images/dusk.jpg',
    'assets/images/night-sky.jpg',
  ];

  ImagesAssetsScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagesAssets.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
              right: index == imagesAssets.length - 1 ? 0 : 16.0),
          child: Image.asset(
            imagesAssets[index],
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
