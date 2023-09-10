import 'package:flutter/material.dart';

class HerbicideCalculatorApp32 extends StatelessWidget {
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
  String selectedPlantType = 'Apple';
  String selectedHerbType = 'Grass';
  String selectedHerbicideType = '2,4-D';
  double herbicideConcentrationRate = 0.0;
  double landArea = 0.0;

  double requiredHerbicideAmount = 0.0;
  double hericideRate = 0.0;
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
                'broadleaf signalgrass (Urochloa platyphylla)',
                'barnyardgrass (Echinochloa crus-galli)',
                'Broadleaf',
                'crabgrass (Digitaria spp.)',
                'chickweed (Stellaria media)',
                'dandelion (Taraxacum officinale)',
                'Grass',
                'field bindweed (Convolvulus arvensis)',
                'foxtail species (Setaria spp.)',
                'goosegrass (Eleusine indica)',
                'purslane (Portulaca oleracea)',
                'lambsquarters (Chenopodium album)',
                'ragweed (Ambrosia artemisiifolia)',
                'velvetleaf (Abutilon theophrasti)',
                'foxtail species (Setaria spp.)',
                'lambsquarters (Chenopodium album)',
                'lambsquarters (Chenopodium album)',
                'nightshade species (Solanum spp.)',
                'hairy galinsoga (Galinsoga ciliata)',
                'lambsquarters (Chenopodium album)',
                'lambsquarters (Chenopodium album)',
                'pigweed species (Amaranthus spp.)',
                'lambsquarters (Chenopodium album)',
                'pigweed species (Amaranthus spp.)',
                'pigweed species (Amaranthus spp.)',
                'wild oats (Avena spp.)',
                'Italian ryegrass (Lolium multiflorum)',
                "shepherd's purse (Capsella bursa-pastoris)",
                'barnyardgrass (Echinochloa crus-galli)',
                'redroot pigweed (Amaranthus retroflexus)',
                'redroot pigweed (Amaranthus retroflexus)',
                'chickweed (Stellaria media)',
                "shepherd's purse (Capsella bursa-pastoris)",
                'purslane (Portulaca oleracea)',
                'foxtail species (Setaria spp.)',
                'barnyardgrass (Echinochloa crus-galli)',
                'broadleaf signalgrass (Urochloa platyphylla)',
                'Palmer amaranth (Amaranthus palmeri)',
                'yellow nutsedge (Cyperus esculentus).',
                'lambsquarters (Chenopodium album)',
                'ragweed (Ambrosia artemisiifolia)',
                'velvetleaf (Abutilon theophrasti)',
                'lambsquarters (Chenopodium album)',
                'redroot pigweed (Amaranthus retroflexus)',
                'lambsquarters (Chenopodium album)',
                'kochia (Kochia scoparia)',
                'ragweed (Ambrosia artemisiifolia)',
                'red rice (Oryza sativa)',
                'water hyssop (Bacopa spp.)',
                'itchgrass (Rottboellia cochinchinensis)',
                'johnsongrass (Sorghum halepense)',
                'purple nutsedge (Cyperus rotundus)',
                ' johnsongrass (Sorghum halepense)',
                'pigweed species (Amaranthus spp.)',
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
                '2,4-D',
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
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (selectedPlantType == 'Avocado') {
                  if (selectedHerbType == 'crabgrass (Digitaria spp.)' ||
                      selectedHerbType == 'purslane (Portulaca oleracea)' ||
                      selectedHerbType == 'pigweed (Amaranthus spp.)' ||
                      selectedHerbType == 'Grass') {
                    if (selectedHerbicideType == 'Glyphose') {
                      hericideRate = 3.89 / herbicideConcentrationRate;
                      requiredHerbicideAmount = 4;
                    } else if (selectedHerbicideType == 'Diouron') {
                      hericideRate = 1.5 / herbicideConcentrationRate;
                      requiredHerbicideAmount = 2;
                    } else if (selectedHerbicideType == 'Oryzalin') {
                      hericideRate = 1.5 / herbicideConcentrationRate;
                      requiredHerbicideAmount = 6;
                    }
                  }
                } else {
                  Text('Somethhing  went Wrong check it.');
                }

                // Calculate if the required herbicide amount here based on the inputs
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
}
