import 'package:flutter/material.dart';

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
                "images/logo.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )),
            ExpansionTile(
              title: Text('Setting'),
              children: <Widget>[
                // Add additional widgets here as children of the ExpansionTile
                // For example, you can add ListTile widgets or any other desired widgets
                ListTile(
                  title: Text('Lanuage'),
                  onTap: () {
                    // Add your logic here for when Option 1 is tapped
                  },
                ),
                ListTile(
                  title: Text('Theme'),
                  onTap: () {
                    // Add your logic here for when Option 1 is tapped
                  },
                ),
                ListTile(
                  title: Text('Tts Setting'),
                  onTap: () {
                    // Add your logic here for when Option 2 is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('About Us'),
              children: <Widget>[
                ListTile(
                  title: Text('Mission'),
                  onTap: () {
                    // Add your logic here for when the Mission option is tapped
                  },
                ),
                ListTile(
                  title: Text('Vision'),
                  onTap: () {
                    // Add your logic here for when the Vision option is tapped
                  },
                ),
                ListTile(
                  title: Text('Team'),
                  onTap: () {
                    // Add your logic here for when the Team option is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(title: Text('RATE US')),
            ExpansionTile(title: Text('Share This App')),
            ExpansionTile(title: Text('HELP?')),
          ],
        ),
      ),
    );
  }
}
