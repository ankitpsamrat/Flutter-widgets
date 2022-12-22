import 'package:flutter/material.dart';

class PopUpMenuButtonWidget extends StatefulWidget {
  const PopUpMenuButtonWidget({super.key});

  @override
  State<PopUpMenuButtonWidget> createState() => _PopUpMenuButtonWidgetState();
}

class _PopUpMenuButtonWidgetState extends State<PopUpMenuButtonWidget> {
  //

  String title = 'first item';
  String item1 = 'first item';
  String item2 = 'second item';
  String item3 = 'third item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Up Menu Button Widget'),
        elevation: 0,
      ),
      body: ListTile(
        title: Text(title),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(item1),
              value: item1,
            ),
            PopupMenuItem(
              child: Text(item2),
              value: item2,
            ),
            PopupMenuItem(
              child: Text(item3),
              value: item3,
            ),
          ],
          onSelected: (String newValue) {
            setState(() {
              title = newValue;
            });
          },
        ),
      ),
    );
  }
}
