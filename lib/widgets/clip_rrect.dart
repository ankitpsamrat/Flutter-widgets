import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Clip RRect Widget'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
