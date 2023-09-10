import 'package:flutter/material.dart';

class HerbicideCalculatorApp extends StatefulWidget {
  @override
  _HerbicideCalculatorAppState createState() => _HerbicideCalculatorAppState();
}

class _HerbicideCalculatorAppState extends State<HerbicideCalculatorApp> {
  String selectedPlantType = 'Avocado';
  String selectedHerbType = 'Grass';
  String selectedHerbicideType = 'Glyphosate';
  double landArea = 0.0;
  double herbicideConcentrationRate = 0.0;
  double requiredHerbicideAmount = 0.0;

  void calculatePesticideAmount() {
    // Calculation logic based on selected factors

    if (selectedPlantType == 'Kale' &&
            selectedHerbType == 'common lambsquarters---kale' ||
        selectedHerbType == 'pigweed species---kale' ||
        selectedHerbType == "shepherd's purse---kale" &&
            selectedHerbicideType == 'Glyphosate---kale') {
      requiredHerbicideAmount = (landArea * 1.26 / herbicideConcentrationRate);
    }
    if (selectedPlantType == 'Kale' &&
            selectedHerbType == 'common lambsquarters---kale' ||
        selectedHerbType == 'pigweed species---kale' ||
        selectedHerbType == "shepherd's purse---kale" &&
            selectedHerbicideType == 'Pendimethalin---kale') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    }
    if (selectedPlantType == 'Kale' && selectedHerbType == 'common lambsquarters---kale' ||
        selectedHerbType == 'pigweed species---kale' ||
        selectedHerbType == "shepherd's purse---kale" &&
            selectedHerbicideType == 'S-metolachlor---kale') {
      requiredHerbicideAmount = (landArea * 1.68 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Lettuce' && selectedHerbType == 'common lambsquarters---lettuce' ||
        selectedHerbType == 'pigweed species---lettuce' ||
        selectedHerbType == 'field bindweed---lettuce' &&
            selectedHerbicideType == 'Pendimethalin---lettuce') {
      requiredHerbicideAmount = (landArea * 1.52 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Lettuce' && selectedHerbType == 'common lambsquarters---lettuce' ||
        selectedHerbType == 'pigweed species---lettuce' ||
        selectedHerbType == 'field bindweed---lettuce' &&
            selectedHerbicideType == 'Glyphosate---lettuce') {
      requiredHerbicideAmount = (landArea * 1 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Lettuce' && selectedHerbType == 'common lambsquarters---lettuce' ||
        selectedHerbType == 'pigweed species---lettuce' ||
        selectedHerbType == 'field bindweed---lettuce' &&
            selectedHerbicideType == 'Metribuzin---lettuce') {
      requiredHerbicideAmount = (landArea * 0.7 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Maize' && selectedHerbType == 'common lambsquarters---maize' ||
        selectedHerbType == 'giant foxtail---maize' ||
        selectedHerbType == 'common ragweed---maize' &&
            selectedHerbicideType == 'Glyphosate---maize') {
      requiredHerbicideAmount = (0.015 * 600 * landArea);
    } else if (selectedPlantType == 'Maize' && selectedHerbType == 'common lambsquarters---maize' ||
        selectedHerbType == 'giant foxtail---maize' ||
        selectedHerbType == 'common ragweed---maize' &&
            selectedHerbicideType == 'Mesotrione---maize') {
      requiredHerbicideAmount = (landArea * 0.525 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Maize' && selectedHerbType == 'common lambsquarters---maize' ||
        selectedHerbType == 'giant foxtail---maize' ||
        selectedHerbType == 'common ragweed---maize' &&
            selectedHerbicideType == ' Atrazine---maize') {
      requiredHerbicideAmount = (landArea * 1.75 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Millet' && selectedHerbType == 'barnyardgrass---millet' ||
        selectedHerbType == 'broadleaf signalgrass---millet' ||
        selectedHerbType == 'Palmer amaranth---millet' &&
            selectedHerbicideType == 'Glyphosate----millet') {
      requiredHerbicideAmount = (landArea * 1.23 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Millet' && selectedHerbType == 'barnyardgrass---millet' ||
        selectedHerbType == 'broadleaf signalgrass---millet' ||
        selectedHerbType == 'Palmer amaranth---millet' &&
            selectedHerbicideType == 'Clethodim---millet') {
      requiredHerbicideAmount = (landArea * 0.125 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Millet' && selectedHerbType == 'barnyardgrass' ||
        selectedHerbType == 'broadleaf signalgrass---millet' ||
        selectedHerbType == 'Palmer amaranth---millet' &&
            selectedHerbicideType == 'S-metolachlor---millet') {
      requiredHerbicideAmount = (landArea * 1.55 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Potatoes' && selectedHerbType == 'common lambsquarters---potatoes' ||
        selectedHerbType == 'redroot pigweed---potatoes' ||
        selectedHerbType == 'field bindweed---potatoes' &&
            selectedHerbicideType == 'Metribuzin---potatoes') {
      requiredHerbicideAmount = (landArea * 2 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Potatoes' && selectedHerbType == 'common lambsquarters---potatoes' ||
        selectedHerbType == 'redroot pigweed---potatoes' ||
        selectedHerbType == 'field bindweed---potatoes' &&
            selectedHerbicideType == 'Linuron---potatoes') {
      requiredHerbicideAmount = (landArea * 1.75 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Potatoes' && selectedHerbType == 'common lambsquarters---potatoes' ||
        selectedHerbType == 'redroot pigweed---potatoes' ||
        selectedHerbType == 'field bindweed---potatoes' &&
            selectedHerbicideType == 'S-metolachlor---potaotoes') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Rice' && selectedHerbType == 'barnyardgrass---rice' ||
        selectedHerbType == 'red rice---rice' ||
        selectedHerbType == 'water hyssop---rice' && selectedHerbicideType == 'Butachlor---rice') {
      requiredHerbicideAmount = (landArea * 2 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Rice' && selectedHerbType == 'barnyardgrass---rice' || selectedHerbType == 'red rice---rice' || selectedHerbType == 'water hyssop' && selectedHerbicideType == 'Propanil---rice') {
      requiredHerbicideAmount = (landArea * 1.4 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Rice' && selectedHerbType == 'barnyardgrass---rice' || selectedHerbType == 'red rice---rice' || selectedHerbType == 'water hyssop---rice' && selectedHerbicideType == '2,4-D---rice') {
      requiredHerbicideAmount = (landArea * 1.15 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Sorghum' && selectedHerbType == 'johnsongrass---sorghum' || selectedHerbType == 'foxtail species---sorghum' || selectedHerbType == 'broadleaf signalgrass---sorghum' && selectedHerbicideType == 'Insecticidal soaps---Teff') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Sorghum' && selectedHerbType == 'johnsongrass' || selectedHerbType == 'foxtail species---sorghum' || selectedHerbType == 'broadleaf signalgrass---sorghum' && selectedHerbicideType == 'Insecticidal soaps---Teff') {
      requiredHerbicideAmount = (landArea * 1.6 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Sorghum' && selectedHerbType == 'johnsongrass' || selectedHerbType == 'foxtail species---sorghum' || selectedHerbType == 'broadleaf signalgrass-sorghum' && selectedHerbicideType == 'Insecticidal soaps---Teff') {
      requiredHerbicideAmount = (landArea * 1.43 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Soybean' && selectedHerbType == 'common lambsquarters---soybeans' || selectedHerbType == 'common ragweed---soybeans' || selectedHerbType == 'velvetleaf---soybeans' && selectedHerbicideType == 'Glyphosate---soybeans') {
      requiredHerbicideAmount = (landArea * 1.26 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Soybean' && selectedHerbType == 'common lambsquarters---soybeans' || selectedHerbType == 'common ragweed---soybeans' || selectedHerbType == 'velvetleaf---soybeans' && selectedHerbicideType == 'Acetochlor---soybeans') {
      requiredHerbicideAmount = (landArea * 1.76 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Soybean' && selectedHerbType == 'common lambsquarters---soybeans' || selectedHerbType == 'common ragweed---soybeans' || selectedHerbType == 'velvetleaf---soybeans' && selectedHerbicideType == 'Metolachlor---soybeans') {
      requiredHerbicideAmount = (landArea * 1.68 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Tomatoes' && selectedHerbType == 'common lambsquarters---tomatoes' || selectedHerbType == 'pigweed species---tomatoes' || selectedHerbType == 'nightshade species----tomatoes' && selectedHerbicideType == 'Glyphosate---tomatoes') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Tomatoes' && selectedHerbType == 'common lambsquarters---tomatoes' || selectedHerbType == 'pigweed species---tomatoes' || selectedHerbType == 'nightshade species---tomatoes' && selectedHerbicideType == 'Diquat---tomatoes') {
      requiredHerbicideAmount = (landArea * 1.43 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Tomatoes' && selectedHerbType == 'common lambsquarters---tomatoes' || selectedHerbType == 'pigweed species---tomatoes' || selectedHerbType == 'nightshade species---tomatoes' && selectedHerbicideType == 'Oxyfluorfen---tomatoes') {
      requiredHerbicideAmount = (0.015 * 600 * landArea);
    } else if (selectedPlantType == 'Teff' && selectedHerbType == 'barnyardgrass---teff' || selectedHerbType == 'redroot pigweed---teff' || selectedHerbType == 'common purslane---teff' && selectedHerbicideType == 'Glyphosate---Teff') {
      requiredHerbicideAmount = (landArea * 1.36 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Teff' && selectedHerbType == 'barnyardgrass---teff' || selectedHerbType == 'redroot pigweed---teff' || selectedHerbType == 'common purslane---teff' && selectedHerbicideType == 'Pendimethalin---Teff') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Teff' && selectedHerbType == 'barnyardgrass---teff' || selectedHerbType == 'redroot pigweed---teff' || selectedHerbType == 'common purslane---teff' && selectedHerbicideType == 'S-metolachlor---Teff') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Wheat' && selectedHerbType == 'wild oats---wheat' || selectedHerbType == 'common chickweed---wheat' || selectedHerbType == "shepherd's purse---wheat" && selectedHerbicideType == '2,4-D---wheat') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Wheat' && selectedHerbType == 'wild oats---wheat' || selectedHerbType == 'common chickweed---wheat' || selectedHerbType == "shepherd's purse---wheat" && selectedHerbicideType == 'Clethodim---wheat') {
      requiredHerbicideAmount = (landArea * 0.165 / herbicideConcentrationRate);
    } else if (selectedPlantType == 'Wheat' && selectedHerbType == 'wild oats---wheat' || selectedHerbType == 'common chickweed---wheat' || selectedHerbType == "shepherd's purse---wheat" && selectedHerbicideType == 'Pendimethalin---wheat') {
      requiredHerbicideAmount = (landArea * 1.5 / herbicideConcentrationRate);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pesticide Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Plant Type:'),
              DropdownButton<String>(
                value: selectedPlantType,
                onChanged: (newValue) {
                  setState(() {
                    selectedPlantType = newValue!;
                  });
                },
                items: [
                  'Apple',
                  'Avocado',
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
                  'Soybean',
                  'Sugarcane',
                  'Sun-Flower',
                  'Teff',
                  'Tomatoes',
                  'Wheat',
                ].map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              Text('Pest Type:'),
              DropdownButton<String>(
                value: selectedHerbType,
                onChanged: (newValue) {
                  setState(() {
                    selectedHerbType = newValue!;
                  });
                },
                items: [
                  'common lambsquarters---kale',
                  'pigweed species---kale',
                  "shepherd's purse---kale",
                  'common lambsquarters---lettuce',
                  'pigweed species---lettuce',
                  'field bindweed---lettuce',
                  'common lambsquarters---maize',
                  'giant foxtail---maize',
                  'common ragweed---maize',
                ].map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              Text('Pesticide Type:'),
              DropdownButton<String>(
                value: selectedHerbicideType,
                onChanged: (newValue) {
                  setState(() {
                    selectedHerbicideType = newValue!;
                  });
                },
                items: [
                  '2,4-D',
                  'Acetochlor',
                  'Atrazine',
                  'Butachlor',
                  'Clethodim',
                  'Clthodim',
                  'Diquat',
                  'Diuron',
                  'Glyphosate',
                  'Hexazinone',
                  'Imazethapyr',
                  'Linuron',
                  'Matribuzin',
                  'Mesotrione',
                  'Metolachor',
                  'Napropamide',
                  'Oryzalin',
                  'Oxyfluorfen',
                  'Pendimethalin',
                  'Propanil',
                  'S-metolachlor',
                  'wild oats (Avena spp.)',
                  'Italian ryegrass (Lolium multiflorum)',
                  'chickweed (Stellaria media)',
                ].map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              Text('Area of Land (in hectares):'),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  landArea = double.tryParse(value) ?? 0.0;
                },
              ),
              SizedBox(height: 16.0),
              Text('Pesticide Concentration (%):'),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  herbicideConcentrationRate = double.tryParse(value) ?? 0.0;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: calculatePesticideAmount,
                child: Text('Calculate Pesticide Amount'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Required Pesticide Amount: $requiredHerbicideAmount liters',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
