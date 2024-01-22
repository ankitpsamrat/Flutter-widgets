import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('DraggableScrollableSheet Widget'),
      ),
      body: DraggableScrollableSheet(
        builder: (context, scrollController) {
          return Container(
            color: Colors.blue,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
