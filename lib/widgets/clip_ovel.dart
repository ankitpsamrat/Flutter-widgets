import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Clip Oval Widget'),
      ),
      body: Center(
        child: ClipOval(
          child: Image.network(
            'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg',
          ),
        ),
      ),
    );
  }
}
