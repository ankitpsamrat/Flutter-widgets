import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Banner Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRect(
            child: Banner(
              message: 'BCA',
              location: BannerLocation.topEnd,
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterLogo(size: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ankit Pratap Samrat'),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Contact me'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
