import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('CloseButton Widget'),
      ),
      body: Center(
        child: CloseButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
