import 'package:flutter/material.dart';
// import 'package:flutter_home_work6/constants/assets_images.dart';

class ImageAssetsContainer extends StatelessWidget {
  const ImageAssetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              'assets/images/image_avatar.jpg',
              height: 160,
              width: 160,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border(
                  top: BorderSide(color: Colors.blue, width: 5.0),
                  left: BorderSide(color: Colors.blue, width: 5.0),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border(
                  right: BorderSide(color: Colors.yellow, width: 5.0),
                  bottom: BorderSide(color: Colors.yellow, width: 5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}