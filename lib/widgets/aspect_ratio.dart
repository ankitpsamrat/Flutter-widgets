import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('AspectRatio Widget'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              'https://fastly.picsum.photos/id/1074/400/400.jpg?hmac=eH9O4qH8NQGitzB3QaCq9jrbDZr7KQkaW_w17w0uoGM',
            ),
          ),
          SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.network(
              'https://fastly.picsum.photos/id/1074/400/400.jpg?hmac=eH9O4qH8NQGitzB3QaCq9jrbDZr7KQkaW_w17w0uoGM',
            ),
          ),
        ],
      ),
    );
  }
}
