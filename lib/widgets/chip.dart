import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Chip(
          label: Row(
            //  "mainaxismin" take minimum space means for its children only
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.person),
              Text('Ankit'),
            ],
          ),
        ),
      ),
    );
  }
}
