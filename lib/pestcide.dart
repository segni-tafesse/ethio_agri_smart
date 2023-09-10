import 'package:flutter/material.dart';

class PesticideCalculatorApp extends StatefulWidget {
  @override
  _PesticideCalculatorAppState createState() => _PesticideCalculatorAppState();
}

class _PesticideCalculatorAppState extends State<PesticideCalculatorApp> {
  String plantType = 'Apple';
  String pestType = 'Aphids---Teff';
  String pesticideType = 'Spinosad---Apple';
  double landArea = 0.0;
  double pesticideConcentration = 0.0;
  double pesticideAmount = 0.0;

  void calculatePesticideAmount() {
    // Calculation logic based on selected factors
    if (plantType == 'Apple' &&
            pestType == 'Apple Maggot(Rhagoletis pomonella)---Apple' ||
        pestType == 'Codling Moth (Cydia pomonella)---Apple' &&
            pesticideType == 'Spinosad---Apple') {
      pesticideAmount = (100 * 100 * landArea);
    } else if (plantType == 'Teff' &&
        pestType == 'Aphids---Teff' &&
        pesticideType == 'Insecticidal soaps---Teff') {
      pesticideAmount = (0.015 * 600 * landArea);
    } else if (plantType == 'Teff' &&
        pestType == 'Grasshoppers---Teff' &&
        pesticideType == 'Carbaryl---Teff') {
      pesticideAmount = (1250 * landArea * 10000) / 100;
    } else if (plantType == 'Teff' &&
        pestType == 'Armyworms---Teff' &&
        pesticideType == 'Bacillus thuringiensis (Bt)---Teff') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Wheat' &&
        pestType == 'Aphids---Wheat' &&
        pesticideType == 'Pyrethroids---Wheat') {
      pesticideAmount = (75 * landArea) / 100;
    } else if (plantType == 'Wheat' &&
        pestType == 'Hessian flies---Wheat' &&
        pesticideType == 'imidacloprid---Wheat') {
      pesticideAmount = (150 * landArea) / 100;
    } else if (plantType == 'Wheat' &&
        pestType == 'Army worms---Wheat' &&
        pesticideType == 'Pyrethroids---Wheat') {
      pesticideAmount = (150 * landArea) / 100;
    } else if (plantType == 'Rice' &&
        pestType == 'Rice Stem Borer (Chilo suppressalis)---Rice' &&
        pesticideType == 'Cartap hydrochloride---Rice') {
      pesticideAmount = (2500 * landArea) / 100;
    } else if (plantType == 'Rice' &&
        pestType == 'Rice Leaf Folder (Cnaphalocrocis medinalis)---Rice' &&
        pesticideType == 'Pyrethroids---Rice') {
      pesticideAmount = (250 * landArea) / 100;
    } else if (plantType == 'Rice' &&
        pestType == 'Brown Planthopper (Nilaparvata lugens)---Rice' &&
        pesticideType == 'Pyrethroids---Rice') {
      pesticideAmount = (150 * landArea) / 100;
    } else if (plantType == 'Maize' &&
        pestType == 'Fall Armyworm (Spodoptera frugiperda)---Maize' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (150 * landArea) / 100;
    } else if (plantType == 'Maize' &&
        pestType == 'Maize Stalk Borer (Busseola fusca)---Maize' &&
        pesticideType == 'Chlorpyrifos---Maize') {
      pesticideAmount = (2500 * landArea) / 100;
    } else if (plantType == 'Maize' &&
        pestType == 'Corn Earworm (Helicoverpa zea)---Maize' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (150 * landArea) / 100;
    } else if (plantType == 'Sorghum' &&
        pestType == 'Sugarcane Aphid (Melanaphis sacchari)---Sorghum' &&
        pesticideType == 'Sulfoxaflor---Sorghum') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Sorghum' &&
        pestType == 'Sorghum Midge (Contarinia sorghicola)---Sorghum' &&
        pesticideType == 'Chlorpyrifos---Sorghum') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Sorghum' &&
        pestType == 'Sorghum Shoot Fly (Atherigona soccata)---Sorghum' &&
        pesticideType == 'Thiamethoxam---Sorghum') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Millet' &&
        pestType ==
            'Stem Borers (Coniesta ignefusalis and Sesamia spp.)---Millet' &&
        pesticideType == 'Carbaryl---Millet') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Millet' &&
        pestType == 'Earhead Bug (Calocoris angustatus)---Millet' &&
        pesticideType == 'Bifenthrin---Millet') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Millet' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Malathion---Millet') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Beans' &&
        pestType == 'Bean Beetle (Cerotoma trifurcata)---Beans' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Beans' &&
        pestType == 'Mexican Bean Beetle (Epilachna varivestis)---Beans' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Peas' &&
        pestType == 'Pea Aphid (Acyrthosiphon pisum)---Peas' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Peas' &&
        pestType == 'Pea Weevil (Sitona lineatus)---Peas' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Pumpkin' &&
        pestType == 'Squash Bugs (Anasa tristis)---Pumpkin' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Pumpkin' &&
        pestType == 'Cucumber Beetles (Diabrotica spp.)---Pumpkin' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Sunflower' &&
        pestType == 'Sunflower Moth (Homoeosoma electellum)---Sunflower' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Sunflower' &&
        pestType == 'Sunflower Beetle (Zygogramma exclamationis)---Sunflower' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Sunflower' &&
        pestType ==
            'Sunflower Stem Weevil (Cylindrocopturus adspersus)---Sunflower' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Coffee' &&
        pestType == 'Coffee Berry Borer (Hypothenemus hampei)---Coffee' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Coffee' &&
        pestType == 'Coffee Leaf Rust (Hemileia vastatrix)---Coffee' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Coffee' &&
        pestType ==
            'Coffee White Stem Borer (Xylotrechus quadripes)---Coffee' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Avocado' &&
        pestType == 'Avocado Lace Bug (Pseudacysta perseae)---Avocado' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Avocado' &&
        pestType == 'Avocado Thrips (Scirtothrips perseae)---Avocado' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Banana' &&
        pestType == 'Banana Aphids (Pentalonia nigronervosa)---Banana' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Banana' &&
        pestType == 'Banana Weevil (Cosmopolites sordidus)---Banana' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Mango' &&
        pestType == 'Mango Fruit Fly (Bactrocera dorsalis)---Mango' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Mango' &&
        pestType == 'Mango Seed Weevil (Sternochetus mangiferae)---Mango' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Pine Apple' &&
        pestType == 'Pineapple Mealybugs (Dysmicoccus brevipes)---Pine Apple' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Pine Apple' &&
        pestType == 'Pineapple Aphids (Ceratovacuna lanigera)---Pine Apple' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Soybean' &&
        pestType == 'Soybean Aphid (Aphis glycines)---Soybean' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Soybean' &&
        pestType == 'Soybean Cyst Nematode (Heterodera glycines)---Soybean' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Cotton' &&
        pestType == 'Cotton Bollworm (Helicoverpa armigera)---Cotton' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Cotton' &&
        pestType == 'Cotton Aphid (Aphis gossypii)---Cotton' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Potato' &&
        pestType ==
            'Colorado Potato Beetle (Leptinotarsa decemlineata)---Potato' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Potato' &&
        pestType == 'Potato Aphids (Macrosiphum euphorbiae)---Potato' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Tomato' &&
        pestType == 'Tomato Hornworm (Manduca quinquemaculata)---Tomato' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Tomato' &&
        pestType == 'Tomato Fruitworm (Helicoverpa zea)---Tomato' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Orange' &&
        pestType == 'Citrus Leafminer (Phyllocnistis citrella)---Orange' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Orange' &&
        pestType == 'Citrus Red Mite (Panonychus citri)---Orange' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Cabbage' &&
        pestType ==
            'Cabbage Worms (Pieris rapae and Pieris brassicae)---Cabbage' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Cabbage' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Lettuce' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Lettuce' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Carrot' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Carrot' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Pear' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Pear' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Peach' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Peach' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Lemon' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Lemon' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Mango' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Mango' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Rose' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Rose' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Lilies' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Lilies' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Orchids' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
    } else if (plantType == 'Orchids' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Pyrethroids---Maize') {
      pesticideAmount = (625 * landArea * 10000) / 100;
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
                value: plantType,
                onChanged: (newValue) {
                  setState(() {
                    plantType = newValue!;
                  });
                },
                items: [
                  'Apple',
                  'Avocado',
                  'Banana',
                  'Beans',
                  'Coffee',
                  'Cotton',
                  'Cabbage',
                  'Carrot',
                  'Lettuce',
                  'Lilies',
                  'Lemon',
                  'Mango',
                  'Maize',
                  'Millet',
                  'Orange',
                  'Orchids',
                  'Potato',
                  'Pear',
                  'Peas',
                  'Pumpkin',
                  'Peach',
                  'Rice',
                  'Roses',
                  'Sun flower',
                  'Sorghum',
                  'Soy beans',
                  'Tomato',
                  'Teff'
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
                value: pestType,
                onChanged: (newValue) {
                  setState(() {
                    pestType = newValue!;
                  });
                },
                items: [
                  'Apple Maggot(Rhagoletis pomonella)---Apple',
                  'Codling Moth (Cydia pomonella)---Apple',
                  'Aphids---Teff',
                  'Armyworms---Teff',
                  'Grasshoppers---Teff',
                  'Insecticidal soaps---Teff',
                  'Carbaryl---Teff',
                  'Bacillus thuringiensis (Bt)---Teff',
                  'Pyrethroids---Wheat',
                  'imidacloprid---Wheat',
                  'Pyrethroids---Wheat',
                  'Cartap hydrochloride---Wheat',
                  'Pyrethroids---Wheat',
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
                value: pesticideType,
                onChanged: (newValue) {
                  setState(() {
                    pesticideType = newValue!;
                  });
                },
                items: [
                  'Spinosad---Apple',
                  'Insecticidal soaps---Teff',
                  'Carbaryl---Teff'
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
                  pesticideConcentration = double.tryParse(value) ?? 0.0;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: calculatePesticideAmount,
                child: Text('Calculate Pesticide Amount'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Required Pesticide Amount: $pesticideAmount liters',
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
