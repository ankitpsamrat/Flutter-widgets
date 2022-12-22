import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

List<String> options = ['Option 1', 'Option 2'];

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  //

  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio List Tile Widget'),
        elevation: 0,
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text('Option 1'),
            value: options[0],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text('Option 2'),
            value: options[1],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
        ],
      ),
    );
  }
}
