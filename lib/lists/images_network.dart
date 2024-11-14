import 'package:flutter/material.dart';

class ImagesNetworkScroller extends StatelessWidget {
  final List<String> imagesNetwork = [
    'https://images.pexels.com/photos/87812/pexels-photo-87812.jpeg',
    'https://images.pexels.com/photos/55787/pexels-photo-55787.jpeg',
    'https://images.pexels.com/photos/1542493/pexels-photo-1542493.jpeg',
  ];

  ImagesNetworkScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagesNetwork.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
              right: index == imagesNetwork.length - 1 ? 0 : 16.0),
          child: Image.network(
            imagesNetwork[index],
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
