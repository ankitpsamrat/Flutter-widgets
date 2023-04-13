import 'package:flutter/material.dart';

class BottomModalSheetWidget extends StatelessWidget {
  const BottomModalSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Modal Sheet Widget'),
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Bottom Modal Sheet'),
        ),
      ),
    );
  }
}
