import 'package:flutter/material.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Disease Detection',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to our Plant Disease Detection App!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TermsOfServicePage()),
                );
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

class TermsOfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms of Service'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.description,
                size: 72,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Text(
                'Terms of Service',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/terms_service.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlantTypeSelectionPage()),
                  );
                },
                child: Text('Agree and Proceed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlantTypeSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Type'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16),
          childAspectRatio: 1.5,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PlantDetailPage(plantType: 'Vegetable')),
                );
              },
              child: Text('Vegetable'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlantDetailPage(plantType: 'Crop')),
                );
              },
              child: Text('Crop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PlantDetailPage(plantType: 'Plant')),
                );
              },
              child: Text('Plant'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PlantDetailPage(plantType: 'Fruit')),
                );
              },
              child: Text('Fruit'),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantDetailPage extends StatelessWidget {
  final String plantType;

  PlantDetailPage({required this.plantType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Plant Type: $plantType',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlantAgePage(plantType: plantType)),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantAgePage extends StatefulWidget {
  final String plantType;

  PlantAgePage({required this.plantType});

  @override
  _PlantAgePageState createState() => _PlantAgePageState();
}

class _PlantAgePageState extends State<PlantAgePage> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Age'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Plant Type: ${widget.plantType}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Plant Age: $age',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Slider(
              value: age.toDouble(),
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (value) {
                setState(() {
                  age = value.toInt();
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuestionnairePage(
                          plantType: widget.plantType, age: age)),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionnairePage extends StatelessWidget {
  final String plantType;
  final int age;

  QuestionnairePage({required this.plantType, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaire'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Plant Type: $plantType',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Plant Age: $age',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            // Add your questionnaire widgets here
            ElevatedButton(
              onPressed: () {
                // Handle next button
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Plant Recommendation',
              style: TextStyle(fontSize: 24),
            ),
            // Display recommendation and information
          ],
        ),
      ),
    );
  }
}
