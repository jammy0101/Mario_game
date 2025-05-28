import 'package:flutter/material.dart';

class MarioTopBar extends StatelessWidget {
  const MarioTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle gameFont = TextStyle(
      fontFamily: 'PressStart2P', // Make sure the font is added in pubspec.yaml
      fontSize: 27,
      color: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("MARIO", style: gameFont),
              ),
              const SizedBox(height: 10),
              Text("0", style: gameFont),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("WORLD", style: gameFont),
              ),
              const SizedBox(height: 10),
              Text("1-1", style: gameFont),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("TIME", style: gameFont),
              ),
              const SizedBox(height: 10),
              Text("9999", style: gameFont),
            ],
          ),
        ],
      ),
    );
  }
}