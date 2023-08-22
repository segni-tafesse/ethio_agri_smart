import 'package:flutter/material.dart';

//eyos wrote this comment
void main() => runApp(MaterialApp(
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
        appBar: AppBar(
          title: const Text(
            'ETHIO-AgriSmart',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            Icon(Icons.notifications_none)
          ],
          elevation: 20,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1605031907073-19290740c3e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z3JlZW4lMjB3aGVhdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60'),
              fit: BoxFit.cover,
            )),
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
                onPressed: () {},
                child: Text('Recommendations'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Decision Support'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Notifications'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Artifical Intelligence(AI)'),
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
