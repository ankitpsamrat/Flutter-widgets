import 'package:flutter/material.dart';

class ExpandIconWidget extends StatefulWidget {
  const ExpandIconWidget({super.key});

  @override
  State<ExpandIconWidget> createState() => _ExpandIconWidgetState();
}

class _ExpandIconWidgetState extends State<ExpandIconWidget> {
  //

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('ExpandedIcon Widget'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('   Ankit Pratap Samrat'),
                ExpandIcon(
                  isExpanded: isExpanded,
                  color: Colors.white,
                  expandedColor: Colors.black,
                  onPressed: (value) {
                    setState(() {
                      isExpanded = !value;
                    });
                  },
                ),
              ],
            ),
          ),
          if (isExpanded) Text('Software Developer')
        ],
      ),
    );
  }
}
