import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyContentWidget extends StatelessWidget {
  const CopyContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Copy Content Widget'),
        elevation: 0,
      ),
      body: InkWell(
        onTap: () {
          Clipboard.setData(
            ClipboardData(
              text: "Your Copy text",
            ),
          ).then(
            (value) => ScaffoldMessenger(
              child: SnackBar(
                content: Text('Content copied'),
              ),
            ),
          );
        },
        child: Text("Your Copy text is here"),
      ),
    );
  }
}
