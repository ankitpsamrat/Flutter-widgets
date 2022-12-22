import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          height: 35,
          width: 200,
          color: Colors.yellowAccent,
          child: FittedBox(
            child: Text('Hi i am ankit samrat'),
          ),
        ),
      ),
    );
  }
}
