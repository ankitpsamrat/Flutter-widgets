import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  //

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('FilterChip Widget'),
      ),
      body: Center(
        child: FilterChip(
          label: Text('FilterChip'),
          selected: isSelected,
          onSelected: (value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
        ),
      ),
    );
  }
}
