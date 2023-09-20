import 'package:flutter/material.dart';

class RoundedAppBarBackground extends StatelessWidget {
  const RoundedAppBarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RoundedAppBarClipper(), // Utilisez votre propre CustomClipper
      child: Container(
        height: 100.0, // Ajustez la hauteur selon vos préférences
        color: Colors.blue, // Couleur de fond de l'appbar
      ),
    );
  }
}

class RoundedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height + 20, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
