import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Tile Widget'),
        elevation: 0,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: GridTile(
            header: Container(
              height: 40,
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.black,
            ),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2016/03/08/20/03/flag-1244649_960_720.jpg',
              fit: BoxFit.cover,
            ),
            footer: Container(
              height: 40,
              child: Center(
                child: Text(
                  'Footer',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
