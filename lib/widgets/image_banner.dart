import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imgPath;
  final double height;

  ImageBanner({@required this.imgPath, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 245.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
      )
    );
  }
}
