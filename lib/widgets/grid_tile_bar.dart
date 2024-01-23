import 'package:flutter/material.dart';

class GridTileBarWidget extends StatelessWidget {
  const GridTileBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('GridTileBar Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridTileBar(
              backgroundColor: Colors.amber,
              leading: Icon(Icons.info_outline),
              title: Text('Animal'),
              trailing: Icon(Icons.menu),
            ),
            Image.network(
              'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_640.jpg',
            ),
            GridTileBar(
              backgroundColor: Colors.blue,
              leading: Icon(Icons.flutter_dash),
              title: Text('Cat'),
              trailing: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
