import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
        elevation: 0,
      ),
      body: Center(
        child: Wrap(
          // textDirection: TextDirection.rtl,
          // verticalDirection: VerticalDirection.up,
          direction: Axis.vertical,
          children: const [
            Text('Wrapped Text  '),
            Text('Wrapped Text  '),
            Text('Wrapped Text  '),
            Text('Wrapped Text  '),
            Text('Wrapped Text  '),
            Text('Wrapped Text  '),
            Text('Wrapped Text  '),
          ],
        ),
      ),
    );
  }
}
