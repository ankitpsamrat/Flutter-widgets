import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  //

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Text('0'),
              ),
              ElevatedButton(
                onPressed: () {
                  index = 1;
                },
                child: Text('1'),
              ),
              ElevatedButton(
                onPressed: () {
                  index = 2;
                },
                child: Text('2'),
              ),
            ],
          ),
          IndexedStack(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D',
              ),
              Image.network(
                'https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg?crop=1xw:0.84415xh;center,top',
              ),
              Image.network(
                'https://img.freepik.com/free-photo/red-white-cat-i-white-studio_155003-13189.jpg',
              ),
            ],
          )
        ],
      ),
    );
  }
}
