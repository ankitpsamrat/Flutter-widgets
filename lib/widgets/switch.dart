import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  //

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Switch(
          value: isSelected,
          onChanged: (value) {
            setState(() {
              isSelected = value;
            });
          },
        ),
      ),
    );
  }
}
