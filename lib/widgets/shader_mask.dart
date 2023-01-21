import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask Widget'),
        elevation: 0,
      ),
      body: Center(
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: const [Colors.red, Colors.blue],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Text(
            'Ankit Pratap Samrat',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
      ),
    );
  }
}
