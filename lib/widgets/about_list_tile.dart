import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('AboutListTile Widget'),
      ),
      body: Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationVersion: 'v-1.3.3',
          applicationName: 'SAMRAT',
          aboutBoxChildren: const [
            Text('By Ankit Pratap Samrat'),
          ],
        ),
      ),
    );
  }
}
