import 'package:ethio_agri_smart/all.dart';
import 'package:ethio_agri_smart/artificial.dart';
import 'package:ethio_agri_smart/dart.dart';
import 'package:ethio_agri_smart/decision_sup.dart';
import 'package:ethio_agri_smart/message.dart';
// import 'package:ethio_agri_smart/fer.dart';

// import 'package:ethio_agri_smart/fiveth.dart';

import 'package:ethio_agri_smart/rotation.dart';
import 'package:ethio_agri_smart/scanplant.dart';
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
                      return PlantScanPage();
                    },
                  ));
                },
                child: Text('Scan plant'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Nextpage11();
                    },
                  ));
                },
                child: Text('Agro Calculator'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp31();
                    },
                  ));
                },
                child: Text('Crop Market'),
              ),
              ElevatedButton(
                style: buttonprimary,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CropRecommendationPage();
                    },
                  ));
                },
                child: Text('Crop Rotation '),
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
