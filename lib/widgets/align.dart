import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Align Widget'),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: double.infinity,
          color: Colors.blueGrey,
          child: Align(
            // set alignment for child
            alignment: Alignment.bottomRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
