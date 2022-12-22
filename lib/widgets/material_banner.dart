import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Banner Widget'),
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding: EdgeInsets.all(20),
                content: Text('Subscribe'),
                leading: Icon(Icons.notifications_active_outlined),
                elevation: 5,
                backgroundColor: Colors.white,
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: Text('Dismiss'),
                  ),
                ],
              ),
            );
          },
          child: Text('Open'),
        ),
      ),
    );
  }
}
