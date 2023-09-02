// ignore_for_file: use_build_context_synchronously
import 'package:ethio_agri_smart/artificial.dart';
import 'package:ethio_agri_smart/camera.dart';
import 'package:ethio_agri_smart/decision_sup.dart';
import 'package:ethio_agri_smart/fer_car.dart';
import 'package:ethio_agri_smart/market.dart';
import 'package:ethio_agri_smart/new.dart';
import 'package:ethio_agri_smart/weather_screen.dart';
import 'package:flutter/material.dart';
import './onepage.dart';
import './navigation_drawer.dart';
import './button.dart';

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
  //final _dataService = DataService();
  String temperature = '';
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
          title: Text(
            "Ethio Agri smart",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PlantDiseaseIdentifierApp1();
                    },
                  ));
                }),
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
                icon: Icon(Icons.camera_alt),
                text: 'Camera',
              ),
              Tab(
                icon: Icon(Icons.cloud),
                text: 'Weather',
              ),
              Tab(
                icon: Icon(Icons.calculate),
                text: 'Fertlizer calculator',
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(95),
          child: Column(
            children: [
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ));
                },
                child: Text(
                  'Recommendations',
                ),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return WeatherInterface();
                    },
                  ));
                },
                child: Text('WeatherFlora'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PlantDiseaseIdentifierApp12();
                    },
                  ));
                },
                child: Text('Artificial Intelligence'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return FertilizerCalculatorApp();
                    },
                  ));
                },
                child: Text('Calculator'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp30();
                    },
                  ));
                },
                child: Text('Decision Support'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp3();
                    },
                  ));
                },
                child: Text('Crop Market'),
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
