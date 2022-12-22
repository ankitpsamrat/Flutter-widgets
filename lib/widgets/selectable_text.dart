import 'package:flutter/material.dart';

class SelectableWidget extends StatelessWidget {
  const SelectableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectable Widget'),
        elevation: 0,
      ),
      body: Center(
        child: SelectableText(
          'you can select this.',
          style: TextStyle(
            fontSize: 20,
          ),
          onSelectionChanged: (selection, cause) {},
        ),
      ),
    );
  }
}
