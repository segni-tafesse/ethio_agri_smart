import 'package:flutter/material.dart';

class PesticideCalculatorApp extends StatefulWidget {
  @override
  _PesticideCalculatorAppState createState() => _PesticideCalculatorAppState();
}

class _PesticideCalculatorAppState extends State<PesticideCalculatorApp> {
  String plantType = 'Beans';
  String pestType = 'Bean Beetle (Cerotoma trifurcata)---Beans';
  String pesticideType = 'Carbaryl---Bean(Bean Beetle (Cerotoma trifurcata))';
  double landArea = 0.0;
  double pesticideConcentration = 0.0;
  double pesticideAmount = 0.0;

  void calculatePesticideAmount() {
    // Calculation logic based on selected factors
    if (plantType == 'Apple' &&
            pestType == 'Apple Maggot(Rhagoletis pomonella)---Apple' ||
        pestType == 'Codling Moth (Cydia pomonella)---Apple' &&
            pesticideType == 'Spinosad---Apple') {
      pesticideAmount = (10 * landArea / 5.1);
    } else if (plantType == 'Teff' &&
        pestType == 'Aphids---Teff' &&
        pesticideType == 'Insecticidal soaps---Teff(Aphids)') {
      pesticideAmount = (0.015 * 150 * landArea);
    } else if (plantType == 'Teff' &&
        pestType == 'Grasshoppers---Teff' &&
        pesticideType == 'Carbaryl---Teff(Grasshoppers)') {
      pesticideAmount = (12 * landArea) / 6.1;
    } else if (plantType == 'Teff' &&
        pestType == 'Armyworms---Teff' &&
        pesticideType == 'Bacillus thuringiensis (Bt)---Teff(Armyworms)') {
      pesticideAmount = (100 * landArea) / 51.4;
    } else if (plantType == 'Wheat' &&
        pestType == 'Aphids---Wheat' &&
        pesticideType == 'Pyrethroids---Wheat(Aphids)') {
      pesticideAmount = (75 * landArea) / 41;
    } else if (plantType == 'Wheat' &&
        pestType == 'Hessian flies---Wheat' &&
        pesticideType == 'Imidacloprid---Wheat(Hessian flies)') {
      pesticideAmount = (150 * landArea) / 74.1;
    } else if (plantType == 'Wheat' &&
        pestType == 'Army worms---Wheat' &&
        pesticideType == 'Pyrethroids---Wheat(Army worms)') {
      pesticideAmount = (150 * landArea) / 73.3;
    } else if (plantType == 'Rice' &&
        pestType == 'Rice Stem Borer (Chilo suppressalis)---Rice' &&
        pesticideType ==
            'Cartap hydrochloride---Rice(Rice Stem Borer (Chilo suppressalis))') {
      pesticideAmount = (25 * landArea) / 11.4;
    } else if (plantType == 'Rice' &&
        pestType == 'Rice Leaf Folder (Cnaphalocrocis medinalis)---Rice' &&
        pesticideType ==
            'Pyrethroids---Rice(Rice Leaf Folder (Cnaphalocrocis medinalis))') {
      pesticideAmount = (250 * landArea) / 129;
    } else if (plantType == 'Rice' &&
        pestType == 'Brown Planthopper (Nilaparvata lugens)---Rice' &&
        pesticideType ==
            'Pyrethroids---Rice(Brown Planthopper (Nilaparvata lugens))') {
      pesticideAmount = (150 * landArea) / 89;
    } else if (plantType == 'Maize' &&
        pestType == 'Fall Armyworm (Spodoptera frugiperda)---Maize' &&
        pesticideType ==
            'Pyrethroids---Maize(Fall Armyworm (Spodoptera frugiperda))') {
      pesticideAmount = (150 * landArea) / 76.2;
    } else if (plantType == 'Maize' &&
        pestType == 'Maize Stalk Borer (Busseola fusca)---Maize' &&
        pesticideType ==
            'Chlorpyrifos---Maize(Maize Stalk Borer (Busseola fusca))') {
      pesticideAmount = (125 * landArea) / 63;
    } else if (plantType == 'Maize' &&
        pestType == 'Corn Earworm (Helicoverpa zea)---Maize' &&
        pesticideType ==
            'Pyrethroids---Maize(Corn Earworm (Helicoverpa zea))') {
      pesticideAmount = (15 * landArea) / 7;
    } else if (plantType == 'Sorghum' &&
        pestType == 'Sugarcane Aphid (Melanaphis sacchari)---Sorghum' &&
        pesticideType ==
            'Sulfoxaflor---Sorghum(Sugarcane Aphid (Melanaphis sacchari))') {
      pesticideAmount = (75 * landArea) / 43;
    } else if (plantType == 'Sorghum' &&
        pestType == 'Sorghum Midge (Contarinia sorghicola)---Sorghum' &&
        pesticideType ==
            'Chlorpyrifos---Sorghum(Sorghum Midge (Contarinia sorghicola))') {
      pesticideAmount = (3 * landArea) / 1.3;
    } else if (plantType == 'Sorghum' &&
        pestType == 'Sorghum Shoot Fly (Atherigona soccata)---Sorghum' &&
        pesticideType ==
            'Thiamethoxam---Sorghum(Sorghum Shoot Fly (Atherigona soccata))') {
      pesticideAmount = (80 * landArea) / 37;
    } else if (plantType == 'Millet' &&
        pestType ==
            'Stem Borers (Coniesta ignefusalis and Sesamia spp.)---Millet' &&
        pesticideType ==
            'Carbaryl---Millet(Stem Borers (Coniesta ignefusalis and Sesamia spp.))') {
      pesticideAmount = (15 * landArea) / 6.2;
    } else if (plantType == 'Millet' &&
        pestType == 'Earhead Bug (Calocoris angustatus)---Millet' &&
        pesticideType ==
            'Bifenthrin---Millet(Earhead Bug (Calocoris angustatus))') {
      pesticideAmount = (8 * landArea) / 3.6;
    } else if (plantType == 'Millet' &&
        pestType == 'Grasshoppers (Various species)---Millet' &&
        pesticideType == 'Malathion---Millet(Grasshoppers (Various species))') {
      pesticideAmount = (1.5 * landArea);
    } else if (plantType == 'Beans' &&
        pestType == 'Bean Beetle (Cerotoma trifurcata)---Beans' &&
        pesticideType == 'Carbaryl---Bean(Bean Beetle (Cerotoma trifurcata))') {
      pesticideAmount = (175 * landArea) / 79.1;
    } else if (plantType == 'Peas' &&
        pestType == 'Pea Aphid (Acyrthosiphon pisum)---Peas' &&
        pesticideType ==
            'Insecticidal soap---Peas(Pea Aphid (Acyrthosiphon pisum))') {
      pesticideAmount = (37 * landArea) / 19;
    } else if (plantType == 'Peas' &&
        pestType == 'Pea Weevil (Sitona lineatus)---Peas' &&
        pesticideType ==
            'Pyrethrin-based insecticides---Peas(Pea Weevil (Sitona lineatus))') {
      pesticideAmount = (15 * landArea) / 4.5;
    } else if (plantType == 'Pumpkin' &&
        pestType == 'Squash Bugs (Anasa tristis)---Pumpkin' &&
        pesticideType ==
            'Pyrethrin-based insecticides---Pumpkin(Squash Bugs (Anasa tristis))') {
      pesticideAmount = (15 * landArea) / 8.1;
    } else if (plantType == 'Pumpkin' &&
        pestType == 'Cucumber Beetles (Diabrotica spp.)---Pumpkin' &&
        pesticideType ==
            'pyrethrin-based insecticides.---Pumpkin(Cucumber Beetles (Diabrotica spp.))') {
      pesticideAmount = (152 * landArea) / 71;
    } else if (plantType == 'Sunflower' &&
        pestType == 'Sunflower Moth (Homoeosoma electellum)---Sunflower' &&
        pesticideType ==
            ' Spinosad---Sunflower(Sunflower Moth (Homoeosoma electellum))') {
      pesticideAmount = (300 * landArea) / 130;
    } else if (plantType == 'Sunflower' &&
        pestType == 'Sunflower Beetle (Zygogramma exclamationis)---Sunflower' &&
        pesticideType ==
            'Carbaryl---Sunflower(Sunflower Beetle (Zygogramma exclamationis))') {
      pesticideAmount = (175 * landArea) / 68;
    } else if (plantType == 'Soybean' &&
        pestType == 'Soybean Cyst Nematode (Heterodera glycines)---Soybean' &&
        pesticideType ==
            'Oxamyl---Soybean(Soybean Cyst Nematode (Heterodera glycines))') {
      pesticideAmount = (landArea * 10) / 5.9;
    } else if (plantType == 'Potato' &&
        pestType ==
            'Colorado Potato Beetle (Leptinotarsa decemlineata)---Potato' &&
        pesticideType ==
            'Spinosad---Potato(Colorado Potato Beetle (Leptinotarsa decemlineata))') {
      pesticideAmount = (10 * landArea) / 3.7;
    } else if (plantType == 'Tomato' &&
        pestType == 'Tomato Hornworm (Manduca quinquemaculata)---Tomato' &&
        pesticideType ==
            'Bacillus thuringiensis (Bt)---Tomato(Tomato Hornworm (Manduca quinquemaculata))') {
      pesticideAmount = (2 * landArea) / 1;
    } else if (plantType == 'Cabbage' &&
        pestType ==
            'Cabbage Worms (Pieris rapae and Pieris brassicae)---Cabbage' &&
        pesticideType ==
            'Bacillus thuringiensis (Bt)---Cabbage(Cabbage Worms (Pieris rapae and Pieris brassicae))') {
      pesticideAmount = (2 * landArea) / 0.9;
    } else if (plantType == 'Lettuce' &&
        pestType == 'Aphids (Various species)---Lettuce' &&
        pesticideType ==
            'Insecticidal soap---Lettuce(Aphids (Various species))') {
      pesticideAmount = (17.5 * landArea) / 8.8;
    } else if (plantType == 'Carrot' &&
        pestType == 'Carrot Rust Fly (Psila rosae)---Carrot' &&
        pesticideType == 'Spinosad---Carrot(Carrot Rust Fly (Psila rosae))') {
      pesticideAmount = (30 * landArea) / 13;
    } else if (plantType == 'Pear' &&
        pestType == 'Pear Psykka (Cacopsylla pyri)---Pear' &&
        pesticideType == 'Pyrethroids---Pear(Pear Psylla (Cacopsylla pyri))') {
      pesticideAmount = (24 * landArea) / 11;
    } else if (plantType == 'Lilies' &&
        pestType ==
            'Carbaryl for Japanese Beetles (Popillia japonica)---Lilies' &&
        pesticideType ==
            'Carbaryl for Japanese Beetles (Popillia japonica)---Lilies') {
      pesticideAmount = (5 * landArea) / 3.4;
    } else if (plantType == 'SugarCane' &&
        pestType == 'Sugarcane Borer (Diatraea saccharalis)---SugarCane' &&
        pesticideType ==
            'Chlorpyrifos---Sugarcane(Sugarcane Borer (Diatraea saccharalis))') {
      pesticideAmount = (2 * landArea) / 1.33;
    }
    setState(() {});

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      throw UnimplementedError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pesticide Calculator'),
          centerTitle: true,
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
                  'Beans',
                  'Cabbage',
                  'Carrot',
                  'Lettuce',
                  'Lilies',
                  'Maize',
                  'Millet',
                  'Potato',
                  'Pear',
                  'Peas',
                  'Pumpkin',
                  'Pear',
                  'Rice',
                  'Sunflower',
                  'Sugarcane',
                  'Sorghum',
                  'Soybean',
                  'Teff',
                  'Tomato',
                  'Wheat'
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
                  'Bean Beetle (Cerotoma trifurcata)---Beans',
                  'Mexican Bean Beetle (Epilachna varivestis)---Beans',
                  'Cabbage Worms (Pieris rapae and Pieris brassicae)---Cabbage',
                  'Carrot Rust Fly (Psila rosae)---Carrot',
                  'Aphids (Various species)---Lettuce',
                  'Carbaryl for Japanese Beetles (Popillia japonica)---Lilies',
                  'Fall Armyworm (Spodoptera frugiperda)---Maize',
                  'Corn Earworm (Helicoverpa zea)---Maize',
                  'Maize Stalk Borer (Busseola fusca)---Maize',
                  'Stem Borers (Coniesta ignefusalis and Sesamia spp.)---Millet',
                  'Earhead Bug (Calocoris angustatus)---Millet',
                  'Grasshoppers (Various species)---Millet',
                  'Colorado Potato Beetle (Leptinotarsa decemlineata)---Potato',
                  'Pea Weevil (Sitona lineatus)---Peas',
                  'Pea Aphid (Acyrthosiphon pisum)---Peas',
                  'Pear Psykka (Cacopsylla pyri)---Pear',
                  'Squash Bugs (Anasa tristis)---Pumpkin',
                  'Cucumber Beetles (Diabrotica spp.)---Pumpkin',
                  'Rice Stem Borer (Chilo suppressalis)---Rice',
                  'Rice Leaf Folder (Cnaphalocrocis medinalis)---Rice',
                  'Rice Leaf Folder (Cnaphalocrocis medinalis)---Rice',
                  'Pyrethroids---Rice(Brown Planthopper (Nilaparvata lugens))',
                  'Sugarcane Aphid (Melanaphis sacchari)---Sorghum',
                  'Sorghum Shoot Fly (Atherigona soccata)---Sorghum',
                  'Sorghum Midge (Contarinia sorghicola)---Sorghum',
                  'Soybean Cyst Nematode (Heterodera glycines)---Soybean',
                  'Sugarcane Borer (Diatraea saccharalis)---SugarCane',
                  'Sunflower Moth (Homoeosoma electellum)---Sunflower',
                  'Sunflower Beetle (Zygogramma exclamationis)---Sunflower',
                  'Insecticidal soaps---Teff(Aphids)',
                  'Grasshoppers---Teff',
                  'Bacillus thuringiensis (Bt)---Teff(Armyworms)',
                  'Tomato Hornworm (Manduca quinquemaculata)---Tomato',
                  'Aphids---Wheat',
                  'Army worms---Wheat',
                  'Hessian flies---Wheat',
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
                  'Carbaryl---Bean(Bean Beetle (Cerotoma trifurcata))',
                  'Carbaryl---Bean(Mexican Bean Beetle (Epilachna varivestis))',
                  'Bacillus thuringiensis (Bt)---Cabbage(Cabbage Worms (Pieris rapae and Pieris brassicae))',
                  'Spinosad---Carrot(Carrot Rust Fly (Psila rosae))',
                  'Insecticidal soap---Lettuce(Aphids (Various species))',
                  'Carbaryl---Lilies(Japanese Beetles (Popillia japonica))',
                  'Pyrethroids---Maize(Fall Armyworm (Spodoptera frugiperda))',
                  'Chlorpyrifos---Maize(Maize Stalk Borer (Busseola fusca))',
                  'Pyrethroids---Maize(Corn Earworm (Helicoverpa zea))',
                  'Carbaryl---Millet(Stem Borers (Coniesta ignefusalis and Sesamia spp.))',
                  'Bifenthrin---Millet(Earhead Bug (Calocoris angustatus))',
                  'Malathion---Millet(Grasshoppers (Various species))',
                  'Spinosad---Potato(Colorado Potato Beetle (Leptinotarsa decemlineata))',
                  'Insecticidal soap---Peas(Pea Aphid (Acyrthosiphon pisum))',
                  'Pyrethrin-based insecticides---Peas(Pea Weevil (Sitona lineatus))',
                  'Pyrethroids---Pear(Pear Psylla (Cacopsylla pyri))',
                  'Pyrethrin-based insecticides---Pumpkin(Squash Bugs (Anasa tristis))',
                  'pyrethrin-based insecticides.---Pumpkin(Cucumber Beetles (Diabrotica spp.))',
                  'Cartap hydrochloride---Rice(Rice Stem Borer (Chilo suppressalis))',
                  'Pyrethroids---Rice(Rice Leaf Folder (Cnaphalocrocis medinalis))',
                  'Pyrethroids---Rice(Brown Planthopper (Nilaparvata lugens))',
                  'Sulfoxaflor---Sorghum(Sugarcane Aphid (Melanaphis sacchari))',
                  'Chlorpyrifos---Sorghum(Sorghum Midge (Contarinia sorghicola))',
                  'Thiamethoxam---Sorghum(Sorghum Shoot Fly (Atherigona soccata))',
                  ' Spinosad---Sunflower(Sunflower Moth (Homoeosoma electellum))',
                  'Carbaryl---Sunflower(Sunflower Beetle (Zygogramma exclamationis))',
                  'Oxamyl---Soybean(Soybean Cyst Nematode (Heterodera glycines))',
                  'Chlorpyrifos---Sugarcane(Sugarcane Borer (Diatraea saccharalis))',
                  'Bacillus thuringiensis (Bt)---Teff(Armyworms)',
                  'Carbaryl---Teff(Grasshoppers)',
                  'Insecticidal soaps---Teff(Aphids)',
                  'Carbaryl---Teff(Grasshoppers)',
                  'Bacillus thuringiensis (Bt)---Tomato(Tomato Hornworm (Manduca quinquemaculata))',
                  'Imidacloprid---Wheat(Hessian flies)',
                  'Pyrethroids---Wheat(Army worms)',
                  'Pyrethroids---Wheat(Aphids)'
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
