import 'package:flutter/material.dart';
// import 'package:flutter_home_work6/constants/assets_images.dart';

class ImageAssetsContainer extends StatelessWidget {
  const ImageAssetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
           Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: SweepGradient(
                  colors: [
                    Colors.yellow,
                    Colors.yellow,
                    Colors.blue,
                    Colors.blue,
                  ],
                  stops: [0.0, 0.5, 0.5, 1.0],
                ),
              ),
            ),
           ClipOval(
              child: Image.asset(
                'assets/images/image_avatar.jpg',
                height: 180,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}