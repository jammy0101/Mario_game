import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mario.dart';

class MarioCharacter extends StatelessWidget {
  final double marioX;
  final double marioY;
  final String direction;
  final String action;
  final double size;

  const MarioCharacter({
    super.key,
    required this.marioX,
    required this.marioY,
    required this.direction,
    required this.action,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Container(
        alignment: Alignment(marioX, marioY),
        child: Mario(
          direction: direction,
          action: action,
          size: size,
        ),
      ),
    );
  }
}