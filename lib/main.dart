import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets/silver_app_bar.dart';

void main() {
  // error handling method using error widget
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.purple,
        alignment: Alignment.center,
        // also can add icon with text for a better look
        child: Text(
          kReleaseMode
              ? 'Oops... something went wrong!'
              : details.exceptionAsString(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutte Widget Test',
      home: SilverAppBarWidget(),
    );
  }
}
