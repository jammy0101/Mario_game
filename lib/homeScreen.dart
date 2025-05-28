import 'package:flutter/material.dart';
import 'package:prectice/Mario.dart';

import 'Mario/marioCharacter.dart';
import 'myButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double marioX = 0;
  double marioY = 0;
  String direction = "right";
  String action = "standing";

  void jump() {
    setState(() {
      action = "jumping";
      marioY -= 0.2; // simple jump effect
    });

    // Come back down after short delay
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        marioY += 0.2;
        action = "standing";
      });
    });
  }

  void moveLeft() {
    setState(() {
      direction = "left";
      action = "running";
      marioX -= 0.1;
    });
  }

  void moveRight() {
    setState(() {
      direction = "right";
      action = "running";
      marioX += 0.1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MarioTopBar(),
                  ],
                ),
              ),
            ),
        ),
        Container(
          height: 200,
          color: Colors.green,
          child: Stack(
            children: [
              MarioCharacter(
                marioX: marioX,
                marioY: marioY,
                direction: direction,
                action: action,
                size: 150,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.brown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                  function: moveLeft,
                ),
                SizedBox(width: 10,),
                MyButton(
                  child: const Icon(Icons.arrow_upward, color: Colors.white),
                  function: jump,
                ),
                SizedBox(width: 10,),
                MyButton(
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                  function: moveRight,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
