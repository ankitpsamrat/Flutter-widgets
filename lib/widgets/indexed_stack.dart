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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text('1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Text('2'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              IndexedStack(
                index: index,
                children: [
                  Image.network(
                    'https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg',
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
        ),
      ),
    );
  }
}
