import 'package:flutter/material.dart';

class SlideToDeleteWidget extends StatefulWidget {
  const SlideToDeleteWidget({super.key});

  @override
  State<SlideToDeleteWidget> createState() => _SlideToDeleteWidgetState();
}

class _SlideToDeleteWidgetState extends State<SlideToDeleteWidget> {
  //

  List<int> items = List<int>.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide To Delete Widget'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
            ),
            key: ValueKey<int>(items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text('Item ${items[index]}'),
            ),
          );
        },
      ),
    );
  }
}
