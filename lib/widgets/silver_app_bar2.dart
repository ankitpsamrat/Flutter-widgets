import 'package:flutter/material.dart';

class SilverAppBarWidget2 extends StatefulWidget {
  const SilverAppBarWidget2({Key? key}) : super(key: key);

  @override
  State<SilverAppBarWidget2> createState() => _SilverAppBarWidget2State();
}

class _SilverAppBarWidget2State extends State<SilverAppBarWidget2> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Horizons Weather',
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 0,
                backgroundColor: Colors.blueGrey,
                // pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 275,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: _isShrink
                      ? const Text(
                          "Profile",
                        )
                      : null,
                  background: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 48),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Flipkart",
                          style: textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "flipkart.com",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Info about the company",
                        ),
                      ],
                    ),
                  ),
                ),
                actions: _isShrink
                    ? [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 12),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Flipkart",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "flipkart.com",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg',
                                  fit: BoxFit.cover,
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    : null,
              ),
            ];
          },
          body: ListView.builder(
            itemCount: 100,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),

          //     CustomScrollView(
          //   // scrollBehavior: consta,
          //   slivers: [
          //     SliverList(
          //       delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Center(child: Text("Item: $index")),
          //           );
          //         },
          //         childCount: 100,
          //       ),
          //     ),
          //   ],
          // ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Zakaria Hossain"),
                accountEmail: Text("zakariaaltime@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
