import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextMenuWidget extends StatelessWidget {
  const ContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context Menu Widget'),
        elevation: 0,
      ),
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                child: Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/0/09/YouTube_full-color_icon_%282017%29.svg'),
          ),
        ),
      ),
    );
  }
}
