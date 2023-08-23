import 'package:flutter/material.dart';
import './firsr_screen.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a crop!'),
        backgroundColor: Colors.green[400],
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Apple'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Avocado'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Banana'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Barley'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Carrot'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Cabbage'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Dates'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Earth Pea'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Grape'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Lemon'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Maize'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Mandrin'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Mango'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return nextpage();
                },
              ));
            },
            child: Text('Millet'),
          ),
          Center(),
        ],
      ),
    );
  }
}
