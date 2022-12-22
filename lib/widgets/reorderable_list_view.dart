import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  //

  final List<int> items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable List View Widget'),
        elevation: 0,
      ),
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            tileColor: items[index].isOdd ? Colors.grey : Colors.white,
            title: Text('Item ${items[index]}'),
            trailing: Icon(Icons.drag_handle_sharp),
          ),
        ),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
