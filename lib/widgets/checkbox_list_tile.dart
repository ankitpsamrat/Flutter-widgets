import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  //

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box Widget'),
        elevation: 0,
      ),
      body: Center(
        child: CheckboxListTile(
          title: Text('CheckBox'),
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          subtitle: Text('Subtile'),
          controlAffinity: ListTileControlAffinity.leading,
          // tristate: true,
        ),
      ),
    );
  }
}
