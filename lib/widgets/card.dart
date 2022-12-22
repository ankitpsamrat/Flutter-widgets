import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Card(
          // elevation: 20,
          color: Colors.orangeAccent,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('This is card'),
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
