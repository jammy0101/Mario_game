import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  final String direction; // "left" or "right"
  final String action; // "standing", "jumping", "running"
  final double size;

  const Mario({
    super.key,
    required this.direction,
    required this.action,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    String imagePath;

    switch (action) {
      case 'jumping':
        imagePath = 'assets/jumping.jpeg';
        break;
      case 'running':
        imagePath = 'assets/running.png';
        break;
      case 'standing':
      default:
        imagePath = 'assets/standing.jpeg';
    }

    // return Transform(
    //   alignment: Alignment.center,
    //   transform: direction == 'left'
    //       ? Matrix4.identity()..scale(-1.0, 1.0)
    //       : Matrix4.identity(),
    //   child: Image.asset(
    //     imagePath,
    //     width: size,
    //     height: size,
    //   ),
    // );
    return Transform(
      alignment: Alignment.center,
      transform: direction == 'left'
          ? (Matrix4.identity()..scale(-1.0, 1.0))
          : Matrix4.identity(),
      child: Image.asset(
        imagePath,
        width: size,
        height: size,
      ),
    );
  }
}