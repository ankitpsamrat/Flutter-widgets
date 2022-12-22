import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile Widget'),
        elevation: 0,
      ),
      body: ListTile(
        title: Text('Samrat'),
        tileColor: Colors.greenAccent,
        onTap: () {},
        leading: Icon(Icons.person),
        trailing: Icon(Icons.menu),
      ),
    );
  }
}
