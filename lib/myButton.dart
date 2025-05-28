import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Icon child;
  final VoidCallback function;

  const MyButton({
    Key? key,
    required this.child,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.blue,
      ),
      child: child,
    );
  }
}
