import 'package:flutter/material.dart';

class Item {
  int id;
  String name;
  String description;
  bool isExpanded;

  Item({
    required this.id,
    required this.name,
    required this.description,
    this.isExpanded = false,
  });
}

class ExpansionPanelListWidget extends StatefulWidget {
  const ExpansionPanelListWidget({super.key});

  @override
  State<ExpansionPanelListWidget> createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  //

  late List<Item> _items;

  List<Item> _generateItems() {
    return List.generate(20, (int index) {
      return Item(
        id: index,
        name: 'Item $index',
        description: 'Details of item $index',
      );
    });
  }

  ExpansionPanel _buildExpansionPanel(Item item) {
    return ExpansionPanel(
      isExpanded: item.isExpanded,
      backgroundColor: Colors.blue,
      canTapOnHeader: true,
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.name),
        );
      },
      body: ListTile(
        title: Text(item.description),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _items = _generateItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('ExpansionPanelList Widget'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // animationDuration: const Duration(seconds: 2),
          expandedHeaderPadding: EdgeInsets.all(10),
          dividerColor: Colors.red,
          elevation: 4,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !isExpanded;
            });
          },
          children: _items.map((item) => _buildExpansionPanel(item)).toList(),
        ),
      ),
    );
  }
}
