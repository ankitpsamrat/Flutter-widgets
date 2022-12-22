import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder Widget'),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 400) {
            return Center(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2016/03/08/20/03/flag-1244649_960_720.jpg',
              ),
            );
          } else {
            return Center(
              child: Text('Screen under 400'),
            );
          }
        },
      ),
    );
  }
}
