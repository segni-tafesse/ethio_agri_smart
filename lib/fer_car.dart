import 'package:flutter/material.dart';

class FertilizerCalculatorApp extends StatefulWidget {
  @override
  _FertilizerCalculatorAppState createState() =>
      _FertilizerCalculatorAppState();
}

class _FertilizerCalculatorAppState extends State<FertilizerCalculatorApp> {
  final TextEditingController _plantTypeNameController =
      TextEditingController();
  final TextEditingController _hectaresController = TextEditingController();
  final TextEditingController _acresController = TextEditingController();
  final TextEditingController _numberOfPlantsController =
      TextEditingController();

  double _dap = 0;
  double _mop = 0;
  double _urea = 0;

  void _calculateFertilizer() {
    final double hectares = double.tryParse(_hectaresController.text) ?? 0;
    final double acres = double.tryParse(_acresController.text) ?? 0;
    final int numberOfPlants =
        int.tryParse(_numberOfPlantsController.text) ?? 0;

    if (hectares > 0 && numberOfPlants > 0) {
      setState(() {
        if (_plantTypeNameController.text == 'Apple') {
          _dap = (hectares * 50) / numberOfPlants;
          _mop = (hectares * 25) / numberOfPlants;
          _urea = (hectares * 25) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Avocado') {
          _dap = (hectares * 200) / numberOfPlants;
          _mop = (acres * 150) / numberOfPlants;
          _urea = (hectares * 100) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Banana') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (hectares * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Cabbage') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Carrot') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Dates') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Earth pea') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Grape') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Lemon') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Maize') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Mango') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Mandarin') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Millet') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Oilpalm') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Onion') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Banana') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Orange') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Potato') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Rice') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Rose') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Sunfflower') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Sorghum') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Tea') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Tomato') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Wheat') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        } else if (_plantTypeNameController.text == 'Yam') {
          _dap = (hectares * 150) / numberOfPlants;
          _mop = (acres * 100) / numberOfPlants;
          _urea = (hectares * 200) / numberOfPlants;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fertilizer Calculator'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _plantTypeNameController,
                decoration: InputDecoration(labelText: 'Plant Name'),
              ),
              TextField(
                controller: _hectaresController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Area of Land (Hectares)'),
              ),
              TextField(
                controller: _acresController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Area of Land (Acres)'),
              ),
              TextField(
                controller: _numberOfPlantsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Number of Plants'),
              ),
              ElevatedButton(
                onPressed: _calculateFertilizer,
                child: Text('Calculate'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Required Fertilizers:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text('DAP: $_dap grams'),
              Text('MOP: $_mop grams'),
              Text('Urea: $_urea grams'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(FertilizerCalculatorApp());
}
