import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('VerticalDivider Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
              ),
            ),
            const VerticalDivider(
              width: 40,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
