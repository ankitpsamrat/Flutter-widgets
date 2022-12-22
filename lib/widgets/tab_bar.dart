import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: const [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          title: Text('Tab Bar Widget'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.orangeAccent,
              child: Icon(Icons.home),
            ),
            Container(
              color: Colors.greenAccent,
              child: Icon(Icons.settings),
            ),
            Container(
              color: Colors.pinkAccent,
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
