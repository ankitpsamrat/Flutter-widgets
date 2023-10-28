import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  const ClipRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Clip Rect Widget'),
      ),
      body: Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.4,
            heightFactor: 1.0,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
