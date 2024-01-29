import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({super.key});

  @override
  State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('SwitchListTile Widget'),
      ),
      body: Center(
        child: SwitchListTile(
          value: lights,
          onChanged: (value) {
            setState(() {
              lights = value;
            });
          },
          title: const Text('Ankit Pratap Samrat'),
          subtitle: const Text('Software developer'),
          secondary: const Icon(Icons.flutter_dash),
        ),
      ),
    );
  }
}
