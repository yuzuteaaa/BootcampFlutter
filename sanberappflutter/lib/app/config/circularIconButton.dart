import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final String assetPath;
  final VoidCallback onPressed;

  // Menetapkan nilai default untuk assetPath
  const CircularIconButton({
    Key? key,
    this.assetPath = 'assets/homePage/menu.png',
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Center(
          child: Image.asset(assetPath),
        ),
      ),
    );
  }
}
