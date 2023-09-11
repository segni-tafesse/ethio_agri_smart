import 'package:ethio_agri_smart/Aboutus.dart';
import 'package:ethio_agri_smart/Setting.dart';
import 'package:ethio_agri_smart/share.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Mydrawer extends StatefulWidget {
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
              child: Image.asset(
                "images/logo light.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )),
            ElevatedButton.icon(
              onPressed: () {
                _openSettingsPage(context);
              },
              icon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                _openAboutUsPage(context);
              },
              icon: Icon(Icons.info),
              label: Text('About Us'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                _rateApp();
              },
              icon: Icon(Icons.star),
              label: Text('Rate Us'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                _shareApp();
              },
              icon: Icon(Icons.share),
              label: Text('Share'),
            )
          ],
        ),
      ),
    );
  }
}

void _openSettingsPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SettingsPage()),
  );
}

void _shareApp() {
  final String text = 'Check out this awesome app!';
  Share.share(text);
}

void _openAboutUsPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AboutUsPage()),
  );
}

void _rateApp() {
  print('Rate Us button pressed!');
}
