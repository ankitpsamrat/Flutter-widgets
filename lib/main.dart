import 'package:flutter/material.dart';
import 'package:widgets/widgets/silver_app_bar.dart';

void main() {
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
