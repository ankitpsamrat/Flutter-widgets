import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder Widget'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Samrat'),
            tileColor: Colors.greenAccent,
            onTap: () {},
            leading: Icon(Icons.person),
            trailing: Icon(Icons.menu),
          );
        },
      ),
    );
  }
}
