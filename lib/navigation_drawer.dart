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
                    child: Image(
                        image: NetworkImage(
                            'https://w7.pngwing.com/pngs/333/57/png-transparent-plant-logo-graphy-rice-leaf-photography-grass.png')))),
            ExpansionTile(title: Text('Setting')),
            ExpansionTile(title: Text('About Us')),
            ExpansionTile(title: Text('RATE US')),
            ExpansionTile(title: Text('HELP?')),
          ],
        ),
      ),
    );
  }
}
