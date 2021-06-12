import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:lively/constants/constants.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.dstATop),
          image: AssetImage(HOMEIMAGE),
          fit: BoxFit.cover,
        ))));
  }
}
