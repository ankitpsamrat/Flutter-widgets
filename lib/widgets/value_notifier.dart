import 'package:flutter/material.dart';

class ValueNotifierWidget extends StatefulWidget {
  const ValueNotifierWidget({Key? key}) : super(key: key);

  @override
  State<ValueNotifierWidget> createState() => _ValueNotifierWidgetState();
}

class _ValueNotifierWidgetState extends State<ValueNotifierWidget> {
  ValueNotifier<int> counterNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    counterNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Value Notifier Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Counter App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: counterNotifier,
              builder: (context, value, _) {
                return Text(
                  'Count: $value',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterNotifier.value++;
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counterNotifier.value--;
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
