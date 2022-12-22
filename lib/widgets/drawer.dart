import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: Text('Open Drawer'),
          );
        }),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
