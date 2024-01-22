import 'package:flutter/material.dart';

class ErrorWidgetTest extends StatefulWidget {
  const ErrorWidgetTest({super.key});

  @override
  State<ErrorWidgetTest> createState() => _ErrorWidgetTestState();
}

class _ErrorWidgetTestState extends State<ErrorWidgetTest> {
  //

  @override
  void initState() {
    super.initState();
    throw ("Hi there. I am an error");
  }

  // this code wrote for error handling
  // and it method called in main method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Error widget'),
      ),
    );
  }
}
