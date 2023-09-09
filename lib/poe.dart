import 'package:flutter/material.dart';

class HerbicideCalculator extends StatefulWidget {
  @override
  _HerbicideCalculatorState createState() => _HerbicideCalculatorState();
}

class _HerbicideCalculatorState extends State<HerbicideCalculator> {
  final TextEditingController areaController = TextEditingController();
  final TextEditingController concentrationController = TextEditingController();
  double herbicideRate = 0.0;
  double amountOfHerbicide = 0.0;

  void calculateHerbicide() {
    setState(() {
      double randomRate =
          0.8; // Replace this with your random number between 0.0 and 1.0
      double concentrationRate = double.parse(concentrationController.text);
      herbicideRate = randomRate / concentrationRate;
      amountOfHerbicide = double.parse(areaController.text) * herbicideRate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Herbicide Calculator'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: areaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Area of Land (hectares)',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: concentrationController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Concentration of Herbicide (%)',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('Calculate'),
                onPressed: calculateHerbicide,
              ),
              SizedBox(height: 16),
              Text(
                'Herbicide Rate: $herbicideRate',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Amount of Herbicide: $amountOfHerbicide',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
