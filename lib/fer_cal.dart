import 'package:flutter/material.dart';

void main() => runApp(CropCalculatorApp());

class CropCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CropCalculatorScreen(),
    );
  }
}

class CropCalculatorScreen extends StatefulWidget {
  @override
  _CropCalculatorScreenState createState() => _CropCalculatorScreenState();
}

class _CropCalculatorScreenState extends State<CropCalculatorScreen> {
  String _plantType = '';
  String _landArea = '';
  String _measurementUnit = '';
  String _numberOfPlants = '';
  String _requiredFertilizerDAP = '';
  String _requiredFertilizer10_26_26 = '';

  final Map<String, Map<String, double>> _fertilizerMap = {
    'Vegetables': {
      'DAP': 10.0,
      'MOP': 10.0,
      'Urea': 10.0,
    },
    'Fruits': {
      'DAP': 5.0,
      'MOP': 10.0,
      'Urea': 10.0,
    },
    'Grains': {
      'DAP': 8.0,
      'MOP': 12.0,
      'Urea': 6.0,
    },
  };

  void _calculateFertilizer() {
    if (_plantType.isNotEmpty &&
        _landArea.isNotEmpty &&
        _numberOfPlants.isNotEmpty) {
      double area = double.parse(_landArea);
      double dap = _fertilizerMap[_plantType]!['DAP']!;
      double mop = _fertilizerMap[_plantType]!['MOP']!;
      double urea = _fertilizerMap[_plantType]!['Urea']!;
      int numberOfPlants = int.parse(_numberOfPlants);

      if (_measurementUnit == 'acres') {
        area *= 2.47105; // Convert acres to hectares
      }

      double requiredDAP = dap * area * 1000 / numberOfPlants;
      double requiredMOP = mop * area * 1000 / numberOfPlants;
      double requiredUrea = urea * area * 1000 / numberOfPlants;

      setState(() {
        _requiredFertilizerDAP = requiredDAP.toStringAsFixed(2);
        _requiredFertilizer10_26_26 = '$requiredMOP/$requiredUrea';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Plant Type'),
              onChanged: (value) {
                setState(() {
                  _plantType = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Land Area'),
              onChanged: (value) {
                setState(() {
                  _landArea = value;
                });
              },
            ),
            DropdownButtonFormField(
              value: _measurementUnit,
              decoration: InputDecoration(labelText: 'Measurement Unit'),
              items: ['hectares', 'acres']
                  .map((unit) => DropdownMenuItem(
                        value: unit,
                        child: Text(unit),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _measurementUnit = value!;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Number of Plants'),
              onChanged: (value) {
                setState(() {
                  _numberOfPlants = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Calculate'),
              onPressed: _calculateFertilizer,
            ),
            SizedBox(height: 20),
            Text(
              'Required Fertilizer (DAP): $_requiredFertilizerDAP grams per plant',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Required Fertilizer (10-26-26/MOP/Urea): $_requiredFertilizer10_26_26 grams per plant',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
