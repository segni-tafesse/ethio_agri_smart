import 'package:flutter/material.dart';

class MyApp20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesticide Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PesticideCalculator(),
    );
  }
}

class PesticideCalculator extends StatefulWidget {
  @override
  _PesticideCalculatorState createState() => _PesticideCalculatorState();
}

class _PesticideCalculatorState extends State<PesticideCalculator> {
  late String pesticideName;
  late double areaInHectares;
  late int plantNumber;
  late String plantName;

  double calculatePesticideAmount() {
    // Perform your calculation here based on the inputs
    // You can replace this with your own logic
    return areaInHectares * plantNumber * 0.5; // Example calculation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesticide Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Pesticide Name'),
              onChanged: (value) {
                setState(() {
                  pesticideName = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Area of Land (Hectares)'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  areaInHectares = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Plant Number'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  plantNumber = int.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Plant Name'),
              onChanged: (value) {
                setState(() {
                  plantName = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Calculate'),
              onPressed: () {
                double pesticideAmount = calculatePesticideAmount();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Pesticide Amount'),
                      content: Text(
                          'The amount of $pesticideName needed for $plantNumber $plantName is $pesticideAmount.'),
                      actions: <Widget>[
                        ElevatedButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
