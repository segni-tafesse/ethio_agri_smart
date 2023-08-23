import 'package:flutter/material.dart';

class nextpage extends StatelessWidget {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Properties of Apple'),
        backgroundColor: Colors.green[400],
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Name'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Characteristics'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('How to grow'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Light'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Soil'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Temperature  and Humidity'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Fertilizers'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Pest and Disease'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Toxicity'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Harvesting'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nextpage();
                    },
                  ));
                },
                child: Text('Purning'),
              ),
              Center(),
            ],
          ),
        ),
      ),
    );
  }
}
