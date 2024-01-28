import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('RichText Widget'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            //  this textstyle will work for all textspan
            style: TextStyle(
              fontSize: 30,
              color: Colors.orangeAccent,
            ),
            children: const [
              TextSpan(text: 'Ankit '),
              TextSpan(
                text: 'Pratap ',
                //  this textstyle will override parent textstyle
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: 'Samrat'),
            ],
          ),
        ),
      ),
    );
  }
}
