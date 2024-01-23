import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder Widget'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: 14,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => GridTile(
            child: Image.network(
              'https://cdn.pixabay.com/photo/2016/03/08/20/03/flag-1244649_960_720.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
