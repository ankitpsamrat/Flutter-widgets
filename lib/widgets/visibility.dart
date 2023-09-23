import 'package:flutter/material.dart';

class VisibilityWidget extends StatefulWidget {
  const VisibilityWidget({super.key});

  @override
  State<VisibilityWidget> createState() => _VisibilityWidgetState();
}

class _VisibilityWidgetState extends State<VisibilityWidget> {
  //

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visibility Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text(isVisible ? 'Hide image' : 'Show image'),
            ),
            SizedBox(height: 10),
            Visibility(
              visible: isVisible,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/15/Cat_August_2010-4.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
