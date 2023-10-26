import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatelessWidget {
  const StreamBuilderWidget({super.key});

  //
  Stream<int> generateNumber() async* {
    for (int i = 1; i <= 100; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Stream Builder Widget'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateNumber(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Text(
                snapshot.data.toString(),
                style: TextStyle(fontSize: 30),
              );
            }
          },
        ),
      ),
    );
  }
}
