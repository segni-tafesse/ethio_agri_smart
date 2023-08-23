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
                            'https://as2.ftcdn.net/v2/jpg/02/32/77/73/1000_F_232777362_ruz4rYAhbaROERJOeTijhCctFr49o2BV.jpg')))),
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
