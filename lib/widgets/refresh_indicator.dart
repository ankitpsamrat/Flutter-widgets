import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  //

  List<String> items = ['Item 1', 'Item 2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator Widget'),
        elevation: 0,
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text(items[index]),
              ),
            );
          },
          padding: EdgeInsets.all(5),
        ),
        color: Colors.white,
        backgroundColor: Colors.yellowAccent,
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 1));
          int nextItem = items.length + 1;
          items.add('Item $nextItem');
          setState(() {});
        },
      ),
    );
  }
}
