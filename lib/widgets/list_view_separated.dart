import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Separated Widget'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 8,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(color: Colors.white);
        },
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
