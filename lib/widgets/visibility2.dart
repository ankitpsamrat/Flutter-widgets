import 'package:flutter/material.dart';

class VisibilityWidget2 extends StatefulWidget {
  const VisibilityWidget2({super.key});

  @override
  State<VisibilityWidget2> createState() => _VisibilityWidget2State();
}

class _VisibilityWidget2State extends State<VisibilityWidget2> {
  //
  List<bool> isExpanded =
      List.generate(5, (index) => false); // replace with parent list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visibility Widget'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 5, // replace with parent list
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isExpanded[index] = !isExpanded[index];
                  });
                },
                child: ListTile(
                  title: Text('$index Parent container'),
                ),
              ),
              Visibility(
                visible: isExpanded[index],
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Text('$index Child container'),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
