import 'package:flutter/material.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Clip Oval Widget'),
      ),
      body: Center(
        child: ClipPath(
          clipper: TriangleClipper(),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg',
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
