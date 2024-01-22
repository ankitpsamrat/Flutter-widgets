import 'package:flutter/material.dart';

class DefaultTextStyleWidget extends StatelessWidget {
  const DefaultTextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('DefaultTextStyle Widget'),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
          ),
          // for each text widget style will be same
          child: Column(
            children: const [
              Text('Ankit'),
              Text('Pratap'),
              Text('Samrat'),
            ],
          ),
        ),
      ),
    );
  }
}
