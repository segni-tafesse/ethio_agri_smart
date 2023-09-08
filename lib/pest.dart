import 'package:flutter/material.dart';

class HerbicideCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Herbicide Calculator',
      home: HerbicideCalculatorScreen(),
    );
  }
}

class HerbicideCalculatorScreen extends StatefulWidget {
  @override
  _HerbicideCalculatorScreenState createState() =>
      _HerbicideCalculatorScreenState();
}

class _HerbicideCalculatorScreenState extends State<HerbicideCalculatorScreen> {
  String selectedPlantType = 'Wheat';
  String selectedHerbType = 'Broadleaf';
  String selectedHerbicideType = 'Glyphosate';
  double herbicideConcentrationRate = 0.0;
  double landArea = 0.0;
  int numberOfPlants = 0;
  double requiredHerbicideAmount = 0.0;
  double HericideRate = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herbicide Calculator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            DropdownButtonFormField(
              value: selectedPlantType,
              onChanged: (newValue) {
                setState(() {
                  selectedPlantType = newValue.toString();
                });
              },
              items: <String>[
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
              ]
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              decoration: InputDecoration(labelText: 'Plant Type'),
            ),
            DropdownButtonFormField(
              value: selectedHerbType,
              onChanged: (newValue) {
                setState(() {
                  selectedHerbType = newValue.toString();
                });
              },
              items: <String>[
                'Broadleaf',
                'Grass,',
                'crabgrass (Digitaria spp.)',
                ' goosegrass (Eleusine indica)',
                'purslane (Portulaca oleracea)',
                'lambsquarters (Chenopodium album)',
                ' ragweed (Ambrosia artemisiifolia)',
                'velvetleaf (Abutilon theophrasti)',
                'foxtail species (Setaria spp.)',
                ' lambsquarters (Chenopodium album)',
                ' lambsquarters (Chenopodium album)',
                'nightshade species (Solanum spp.)',
                'hairy galinsoga (Galinsoga ciliata)',
                'lambsquarters (Chenopodium album)',
                'field bindweed (Convolvulus arvensis)',
                'dandelion (Taraxacum officinale)',
                'dandelion (Taraxacum officinale)',
                'lambsquarters (Chenopodium album)',
                'pigweed species (Amaranthus spp.)',
                'lambsquarters (Chenopodium album)',
                ' pigweed species (Amaranthus spp.)',
                ' pigweed species (Amaranthus spp.)',
                'wild oats (Avena spp.)',
                'Italian ryegrass (Lolium multiflorum)',
                ' chickweed (Stellaria media)',
                "shepherd's purse (Capsella bursa-pastoris)",
                'barnyardgrass (Echinochloa crus-galli)',
                'redroot pigweed (Amaranthus retroflexus)',
                'redroot pigweed (Amaranthus retroflexus)',
                'chickweed (Stellaria media)',
                "shepherd's purse (Capsella bursa-pastoris)",
                'barnyardgrass (Echinochloa crus-galli)',
                'barnyardgrass (Echinochloa crus-galli)',
                'purslane (Portulaca oleracea)',
                'foxtail species (Setaria spp.)',
                'barnyardgrass (Echinochloa crus-galli)',
                'broadleaf signalgrass (Urochloa platyphylla)',
                ' Palmer amaranth (Amaranthus palmeri)',
                'yellow nutsedge (Cyperus esculentus).',
                'lambsquarters (Chenopodium album)',
                'ragweed (Ambrosia artemisiifolia)',
                'velvetleaf (Abutilon theophrasti)',
                'lambsquarters (Chenopodium album)',
                ' redroot pigweed (Amaranthus retroflexus)',
                'field bindweed (Convolvulus arvensis)',
                'lambsquarters (Chenopodium album)',
                'kochia (Kochia scoparia)',
                'ragweed (Ambrosia artemisiifolia)',
                'barnyardgrass (Echinochloa crus-galli)',
                'red rice (Oryza sativa)',
                ' ducksalad (Heteranthera spp.)',
                'water hyssop (Bacopa spp.)',
                'itchgrass (Rottboellia cochinchinensis)',
                ' johnsongrass (Sorghum halepense)',
                'purple nutsedge (Cyperus rotundus)',
                ' goosegrass (Eleusine indica)',
                ' johnsongrass (Sorghum halepense)',
                'foxtail species (Setaria spp.)',
                'pigweed species (Amaranthus spp.)',
                ' broadleaf signalgrass (Urochloa platyphylla)',
                'dandelion (Taraxacum officinale)',
                'chickweed (Stellaria media)',
                'field bindweed (Convolvulus arvensis)',
              ]
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              decoration: InputDecoration(labelText: 'Herb Type'),
            ),
            DropdownButtonFormField(
              value: selectedHerbicideType,
              onChanged: (newValue) {
                setState(() {
                  selectedHerbicideType = newValue.toString();
                });
              },
              items: <String>[
                '2,4- D',
                'Acetochlor',
                'Atrazine',
                'Butachlor',
                'Clethodim',
                'Clthodim',
                'Diquat',
                'Diuro',
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
                ''
              ]
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              decoration: InputDecoration(labelText: 'Herbicide Type'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  herbicideConcentrationRate = double.parse(value);
                });
              },
              decoration:
                  InputDecoration(labelText: 'Herbicide Concentration Rate'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  landArea = double.parse(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter the land area',
              ),
            ),
            DropdownButtonFormField(
              value: 'Hectares',
              onChanged: (newValue) {
                setState(() {
                  // Handle unit conversion if needed
                });
              },
              items: <String>['Hectares', 'Acres', 'Square Meters']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              decoration: InputDecoration(labelText: 'Area Unit'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (selectedPlantType == 'Avocado') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 3.89 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Diouron') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Oryzalin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Apple') {
                  if (selectedHerbType == 'dandelion (Taraxacum officinale)' ||
                      selectedHerbType == 'chickweed (Stellaria media) ' ||
                      selectedHerbType ==
                          'field bindweed (Convolvulus arvensis)' ||
                      selectedHerbType == 'crabgrass (Digitaria spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == '2,4-D') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Oryzalin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }

                if (selectedPlantType == 'Soybean') {
                  if (selectedHerbType == 'lambsquarters (Chenopodium album)' ||
                      selectedHerbType == 'ragweed (Ambrosia artemisiifolia)' ||
                      selectedHerbType == 'velvetleaf (Abutilon theophrasti)' ||
                      selectedHerbType == 'foxtail species (Setaria spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Metolachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Acetochlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Tomatoes') {
                  if (selectedHerbType == 'lambsquarters (Chenopodium album)' ||
                      selectedHerbType == 'pigweed species (Amaranthus spp.)' ||
                      selectedHerbType == 'nightshade species (Solanum spp.)' ||
                      selectedHerbType ==
                          'hairy galinsoga (Galinsoga ciliata)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Diquat') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Oxyfluorfen') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Grape') {
                  if (selectedHerbType == 'lambsquarters (Chenopodium album)' ||
                      selectedHerbType ==
                          'field bindweed (Convolvulus arvensis)' ||
                      selectedHerbType == 'dandelion (Taraxacum officinale)' ||
                      selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'foxtail species (Setaria spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Oxyfluorfen') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Napropamide') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Kale') {
                  if (selectedHerbType == 'lambsquarters (Chenopodium album)' ||
                      selectedHerbType == 'pigweed species (Amaranthus spp.)' ||
                      selectedHerbType == 'chickweed (Stellaria media)' ||
                      selectedHerbType == '') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Pendimethalin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'S-metolachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Lettuce') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Pendimethalin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Metribuzin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Wheat') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == '2,4-D') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Clethodim') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Teff') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Pendimethalin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'S-metolachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Millet') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Clethodim') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'S-metolachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Maize') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Atrazine') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Mesotrione') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Potatoes') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Metribuzin, Linuron') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'S-metolachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Sunflower') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Imazethapyr') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Metolachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Rice') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == '2,4-D') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Propanil') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Butachlor') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Sorghum') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Diouron') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Oryzalin') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }
                if (selectedPlantType == 'Sugaracane') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)') {
                    if (selectedHerbicideType == 'Glyphose') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == '2,4-D') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                    if (selectedHerbicideType == 'Atrazine') {
                      HericideRate = 1.5 / herbicideConcentrationRate;
                    }
                  }
                }

                // Calculate if the required herbicide amount here based on the inputs

                setState(() {
                  requiredHerbicideAmount = calculateHerbicideAmount(
                    selectedPlantType,
                    selectedHerbType,
                    selectedHerbicideType,
                    herbicideConcentrationRate,
                    landArea,
                    HericideRate,
                  );
                });
              },
              child: Text('Calculate Required Herbicide'),
            ),
            SizedBox(height: 20.0),
            Text('Required Herbicide Amount: $requiredHerbicideAmount liters'),
          ],
        ),
      ),
    );
  }

  double calculateHerbicideAmount(
    String plantType,
    String herbType,
    String herbicideType,
    double concentrationRate,
    double landArea,
    double HerbicideRate,
  ) {
    return (landArea * concentrationRate);
  }
}
