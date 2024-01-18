// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatelessWidget {
  AutoCompleteWidget({super.key});

  List<String> suggestons = [
    "USA",
    "UK",
    "Uganda",
    "Uruguay",
    "United Arab Emirates",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('AutoComplete Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Autocomplete(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            } else {
              List<String> matches = <String>[];
              matches.addAll(suggestons);

              matches.retainWhere((s) {
                return s
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase());
              });
              return matches;
            }
          },
          onSelected: (String selection) {
            debugPrint('You just selected $selection');
          },
        ),
      ),
    );
  }
}
