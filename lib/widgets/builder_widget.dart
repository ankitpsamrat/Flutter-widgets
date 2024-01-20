import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  myWidget() => Builder(
        builder: (context) {
          return Center(
            child: Text(
              'Ankit Pratap Samrat',
              //  to use context wrap parent widget with builder widget
              style: Theme.of(context).textTheme.displaySmall,
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Builder Widget'),
      ),
      body: myWidget(),
    );
  }
}
