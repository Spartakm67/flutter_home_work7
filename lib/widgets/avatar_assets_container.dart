import 'package:flutter/material.dart';

class ImageAssetsContainer extends StatelessWidget {
  const ImageAssetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double avatarRadius = screenWidth < 400 ? 80.0 : 110.0;
    double imageSize = avatarRadius * 1.84;


    return Center(
      child: CircleAvatar(
        radius: avatarRadius,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
             width: avatarRadius * 2,
             height: avatarRadius * 2,
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
                height: imageSize,
                width: imageSize,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}