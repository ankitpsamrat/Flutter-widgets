import 'package:flutter/material.dart';

class OffStageWidget extends StatefulWidget {
  const OffStageWidget({super.key});

  @override
  State<OffStageWidget> createState() => _OffStageWidgetState();
}

class _OffStageWidgetState extends State<OffStageWidget> {
  //

  bool isHided = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('OffStage Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isHided = !isHided;
                });
              },
              child: Text(!isHided ? 'Hide' : 'Show'),
            ),
            Offstage(
              offstage: isHided,
              child: Icon(
                Icons.flutter_dash,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
