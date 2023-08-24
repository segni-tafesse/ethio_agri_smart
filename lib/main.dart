import 'package:flutter/material.dart';
import './onepage.dart';
import './navigation_drawer.dart';

//eyos wrote this comment
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: Mydrawer(),
        appBar: AppBar(
          title: const Text(
            'ETHIO-AgriSmart',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(
          //       builder: (context) {
          //         return Mydrawer();
          //       },
          //     ));
          //   },
          // ),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            Icon(Icons.notifications_none)
          ],
          elevation: 20,
          flexibleSpace: Container(
            width: double.infinity,
            child: Image.asset(
              "images/Wall.jpg",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.blue[900],
            indicatorWeight: 5,
            isScrollable: true,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: 'Camera',
              ),
              Tab(
                icon: Icon(Icons.cloud),
                text: 'Weather',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'community',
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(100),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ));
                },
                child: Text('Recommendations'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Decision Support'),
              ),
            ],
          ),
        ),
      ));

  Widget buildpage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}


//Image.asset("images/apple.png")