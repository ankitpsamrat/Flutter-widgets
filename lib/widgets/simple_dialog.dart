import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatelessWidget {
  const SimpleDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('SimpleDialog Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: Text('Ankit Pratap Samrat'),
                  contentPadding: EdgeInsets.symmetric(horizontal: 24),
                  children: [
                    Text('Software developer'),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Sound good'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('show simple dialog'),
        ),
      ),
    );
  }
}
