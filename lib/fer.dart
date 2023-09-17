import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.eco); // Fertilizer icon from Material Icons
  }
}

class FertilizerCalculatorApp1 extends StatefulWidget {
  @override
  _FertilizerCalculatorAppState createState() =>
      _FertilizerCalculatorAppState();
}

class _FertilizerCalculatorAppState extends State<FertilizerCalculatorApp1> {
  String selectedPlantType = '';
  String selectedUnit = '';
  double areaOfLand = 0.0;
  String selectedSoilpH = '';
  String selectedPlantAge = '';

  double MOPAmount = 0.0;
  double DAPAmount = 0.0;
  double ureaAmount = 0.0;

  final TextEditingController numberOfPlantsController =
      TextEditingController();
  final TextEditingController areaOfLandController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedPlantType = 'Plant Type';
    selectedUnit = 'Hectares';
    selectedSoilpH = 'Soil pH';
    selectedPlantAge = 'Plant Age';
  }

  @override
  void dispose() {
    numberOfPlantsController.dispose();
    areaOfLandController.dispose();
    super.dispose();
  }

  void calculateFertilizerAmount() {
    setState(() {
      if (selectedPlantType == 'Apple') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(55.83);
          DAPAmount = calculateUnmaturedDAPAmount(146.73);
          ureaAmount = calculateUnmaturedUreaAmount(122.82);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(112.5);
          DAPAmount = calculateMaturedDAPAmount(72.82);
          ureaAmount = calculateMaturedUreaAmount(146.73);
        }
      } else if (selectedPlantType == 'Avocado') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(66.67);
          DAPAmount = calculateUnmaturedDAPAmount(173.913);
          ureaAmount = calculateUnmaturedUreaAmount(86.96);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(105);
          DAPAmount = calculateMaturedDAPAmount(190.217);
          ureaAmount = calculateMaturedUreaAmount(380.434);
        }
      } else if (selectedPlantType == 'Coffee') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(150.0);
          DAPAmount = calculateUnmaturedDAPAmount(543.47);
          ureaAmount = calculateUnmaturedUreaAmount(271.73);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(583.34);
          DAPAmount = calculateMaturedDAPAmount(380.434);
          ureaAmount = calculateMaturedUreaAmount(380.434);
        }
      } else if (selectedPlantType == 'Orange') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(583.333);
          DAPAmount = calculateUnmaturedDAPAmount(760.869);
          ureaAmount = calculateUnmaturedUreaAmount(163.0432);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(583.333);
          DAPAmount = calculateMaturedDAPAmount(380.434);
          ureaAmount = calculateMaturedUreaAmount(380.434);
        }
      } else if (selectedPlantType == 'Rose') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(250);
          DAPAmount = calculateUnmaturedDAPAmount(708.884);
          ureaAmount = calculateUnmaturedUreaAmount(163.043);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(416.67);
          DAPAmount = calculateMaturedDAPAmount(543.478);
          ureaAmount = calculateMaturedUreaAmount(271.739);
        }
      } else if (selectedPlantType == 'Oil Palm') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(583.34);
          DAPAmount = calculateUnmaturedDAPAmount(1521.739);
          ureaAmount = calculateUnmaturedUreaAmount(760.869);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(1000.0);
          DAPAmount = calculateMaturedDAPAmount(2608.69);
          ureaAmount = calculateMaturedUreaAmount(1304.34);
        }
      } else if (selectedPlantType == 'Lemon') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(150);
          DAPAmount = calculateUnmaturedDAPAmount(2608.69);
          ureaAmount = calculateUnmaturedUreaAmount(271.73);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(833.34);
          DAPAmount = calculateMaturedDAPAmount(1175.79);
          ureaAmount = calculateMaturedUreaAmount(543.478);
        }
      } else if (selectedPlantType == 'Grapes') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(416.67);
          DAPAmount = calculateUnmaturedDAPAmount(543.478);
          ureaAmount = calculateUnmaturedUreaAmount(271.73);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(666.67);
          DAPAmount = calculateMaturedDAPAmount(869.565);
          ureaAmount = calculateMaturedUreaAmount(434.782);
        }
      } else if (selectedPlantType == 'Mango') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(416.67);
          DAPAmount = calculateUnmaturedDAPAmount(543.478);
          ureaAmount = calculateUnmaturedUreaAmount(271.739);
        } else if (selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateMaturedMOPAmount(833.34);
          DAPAmount = calculateMaturedDAPAmount(1086.95);
          ureaAmount = calculateMaturedUreaAmount(543.478);
        }
      } else if (selectedPlantType == 'Wheat') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(41666.67);
          DAPAmount = calculateUnmaturedDAPAmount(43478.26);
          ureaAmount = calculateUnmaturedUreaAmount(54347.82);
        }
      } else if (selectedPlantType == 'Teff') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(41666.67);
          DAPAmount = calculateUnmaturedDAPAmount(54347.82);
          ureaAmount = calculateUnmaturedUreaAmount(76086.956);
        }
      } else if (selectedPlantType == 'Sorghum') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(45359.237);
          DAPAmount = calculateUnmaturedDAPAmount(44373.17);
          ureaAmount = calculateUnmaturedUreaAmount(73955.28);
        }
      } else if (selectedPlantType == 'Maize') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(166666.67);
          DAPAmount = calculateUnmaturedDAPAmount(163043.47);
          ureaAmount = calculateUnmaturedUreaAmount(326086.95);
        }
      } else if (selectedPlantType == 'Millet') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(> 4yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(50000);
          DAPAmount = calculateUnmaturedDAPAmount(65217.41);
          ureaAmount = calculateUnmaturedUreaAmount(97826.08);
        }
      } else if (selectedPlantType == 'Rice') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(100000);
          DAPAmount = calculateUnmaturedDAPAmount(108695.65);
          ureaAmount = calculateUnmaturedUreaAmount(271739.13);
        }
      } else if (selectedPlantType == 'Coffee') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(375000);
          DAPAmount = calculateUnmaturedDAPAmount(217391.3);
          ureaAmount = calculateUnmaturedUreaAmount(326086.95);
        }
      } else if (selectedPlantType == 'Cotton') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(200000);
          DAPAmount = calculateUnmaturedDAPAmount(130434.782);
          ureaAmount = calculateUnmaturedUreaAmount(326086.95);
        }
      } else if (selectedPlantType == 'Soybean') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(133333.3);
          DAPAmount = calculateUnmaturedDAPAmount(89956.52);
          ureaAmount = calculateUnmaturedUreaAmount(163043.47);
        }
      } else if (selectedPlantType == 'Tomato') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(250000);
          DAPAmount = calculateUnmaturedDAPAmount(173913.045);
          ureaAmount = calculateUnmaturedUreaAmount(326086.95);
        }
      } else if (selectedPlantType == 'Kale') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(166666.67);
          DAPAmount = calculateUnmaturedDAPAmount(130434.78);
          ureaAmount = calculateUnmaturedUreaAmount(271739.13);
        }
      } else if (selectedPlantType == 'Lettuce') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(166666.67);
          DAPAmount = calculateUnmaturedDAPAmount(130434.782);
          ureaAmount = calculateUnmaturedUreaAmount(271739.13);
        }
      } else if (selectedPlantType == 'Potatoes') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(250000);
          DAPAmount = calculateUnmaturedDAPAmount(217391.30);
          ureaAmount = calculateUnmaturedUreaAmount(380434.78);
        }
      } else if (selectedPlantType == 'Sugarcane') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(250000);
          DAPAmount = calculateUnmaturedDAPAmount(173913.04);
          ureaAmount = calculateUnmaturedUreaAmount(271739.13);
        }
      } else if (selectedPlantType == 'Sun-Flower') {
        if (selectedPlantAge == 'Un-matured(1-3 yrs)' ||
            selectedPlantAge == 'Matured(>4 yrs)') {
          MOPAmount = calculateUnmaturedMOPAmount(166666.67);
          DAPAmount = calculateUnmaturedDAPAmount(130434.78);
          ureaAmount = calculateUnmaturedUreaAmount(217391.304);
        }
      } else {
        Text('Something went wrong');
      }
    });
  }

  double calculateUnmaturedMOPAmount(double factor) {
    return areaOfLand * factor;
  }

  double calculateUnmaturedDAPAmount(double factor) {
    return areaOfLand * factor;
  }

  double calculateUnmaturedUreaAmount(double factor) {
    return areaOfLand * factor;
  }

  double calculateMaturedMOPAmount(double factor) {
    return areaOfLand * factor;
  }

  double calculateMaturedDAPAmount(double factor) {
    return areaOfLand * factor;
  }

  double calculateMaturedUreaAmount(double factor) {
    return areaOfLand * factor;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('SMART AGRI', style: TextStyle(color: Colors.black)),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 61, 192, 140)),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DropdownButton<String>(
                value: selectedPlantType,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPlantType = newValue!;
                  });
                },
                items: <String>[
                  'Plant Type', 'Apple', 'Avocado', 'Coffee', 'Cotton',
                  'Soybean',
                  'Tomatoes',
                  'Grapes',
                  'Kale',
                  'Lettuce',
                  'Lemon',
                  'Maize',
                  'Millet',
                  'Orange',
                  'Oil Palm',
                  'Potatoes',
                  'Roses',
                  'Rice',
                  'Sorghum',
                  'Sugarcane',
                  'Sun-Flower',
                  'Teff',
                  'Wheat',

                  // Add more plant types here
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: areaOfLandController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Area of Land (${selectedUnit.toLowerCase()})',
                ),
                onChanged: (value) {
                  setState(() {
                    areaOfLand = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              SizedBox(height: 16.0),
              DropdownButton<String>(
                value: selectedUnit,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedUnit = newValue!;
                  });
                },
                items: <String>['Hectares']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              DropdownButton<String>(
                value: selectedSoilpH,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedSoilpH = newValue!;
                  });
                },
                items: <String>[
                  'Soil pH',
                  'Acidic(0-7pH)',
                  'Basic(7-14pH)',
                  'Neutral(7pH)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              DropdownButton<String>(
                value: selectedPlantAge,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPlantAge = newValue!;
                  });
                },
                items: <String>[
                  'Plant Age',
                  'Un-matured(1-3 yrs)',
                  'Matured(>4 yrs)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () {
                  calculateFertilizerAmount();
                },
                child: Text(
                  'Calculate',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Required fertilizers:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('MOP: $MOPAmount grams'),
              Text('DAP: $DAPAmount grams'),
              Text('Urea: $ureaAmount grams'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    ));
