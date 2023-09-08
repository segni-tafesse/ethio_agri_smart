import 'package:ethio_agri_smart/color.dart';
import 'package:flutter/material.dart';

class CropRecommendationPage extends StatefulWidget {
  @override
  _CropRecommendationPageState createState() => _CropRecommendationPageState();
}

class _CropRecommendationPageState extends State<CropRecommendationPage> {
  TextEditingController lastYearCropController = TextEditingController();
  String lastYearCrop = '';
  String recommendedCrop = '';

  void recommendCrop() {
    setState(() {
      lastYearCrop = lastYearCropController.text;
      if (lastYearCrop == 'Maize') {
        recommendedCrop =
            '\n-soybeans\n-peas\n-wheat\-barley\n-broccoli\n-cabbage\n-cauliflower\n-potatoessweet\n-potatoes\n-carrots\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with maize.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and water-holding capacity.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Wheat') {
        recommendedCrop =
            '\n-Maize \n-Barley or Oats\n-Canola\n-Forage Crops\n-Cover Crops\n-soybeans\n-peas\n-\n\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with wheat.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and water-holding capacity.\n-Improve soil health, structure, and water-holding capacity.\n-Promote sustainable nutrient management by reducing reliance on synthetic fertilizers.\n-Promote sustainable nutrient management by reducing reliance on synthetic fertilizers.';
      } else if (lastYearCrop == 'Soybean') {
        recommendedCrop =
            '\n-wheat\n-barley or oats\n-Corn (Maize)\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n-potatoes\n-sweet potatoes\n-carrots\n\nReason: \n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with soybeans.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Reduce the risk of carryover and promote healthier crops. ';
      } else if (lastYearCrop == 'Rice') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Sorghum') {
        recommendedCrop =
            '\n-soybeans\n-sweet potatoes\n-carrots\n-spinach\n-lettuce\n-kale\n-maize \n-wheat\n-millet\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with sorghum.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Tommatoes') {
        recommendedCrop =
            '\n-beans\n-peas\n-spinach\n-lettuce\n-kale\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Tomatoes.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Kale') {
        recommendedCrop =
            '\n-beans\n-peas\n-spinach\n-lettuce\n-radishes\n-n-soybeans\n-carrots\n-broccoli\n-cabbage\n-cauliflower\n-onions\n-garlic\n-swiss chard\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Kale.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Beans') {
        recommendedCrop =
            '\n-peas\n-spinach\n-lettuce\n-kale\-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n-onions\n-garlic\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Beans.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Millet') {
        recommendedCrop =
            '\n-maize\n-wheat\n-barley\n-sweet potatoes\n-carrots\n potatoed\n-sweet potatoes\n-carrots\n-sunflower\n-sesame\n- sorghum\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Lettuce') {
        recommendedCrop =
            '\n-beans\n-peas\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n-radishes\n-onions\n-garlic\n- tomatoes\n-peppers\n eggplants \nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Lettuce.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Potatoes') {
        recommendedCrop =
            '\n-beans\n-peas\n-spinach\n-lettuce\n-kale\n-broccoli\n-cabbage\n-cauliflower\n-maize\n-wheat\n-barley\n-onions\n-garlic\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Potatoes.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Sugaracane') {
        recommendedCrop =
            '\n-peas\n-soybeans\n-sweet potatoes\n-carrots\n-maize\n-wheat\n-barley\n-sorghum\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Sugarcane.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Sunflower') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Sunflower.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Teff') {
        recommendedCrop =
            '\n-beans\n-peas\n-sweet potatoes\n-potatoes\n-carrots\n-wheat\n-barley\n-sesame\n-sunfloer\n-sorghum\n-maize\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Teff.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Peas') {
        recommendedCrop =
            '\n-spinach\n-lettuce\n-kale\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n-tomatoes\n-peppers\n-eggplants\n-onions\n-garlic\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with Peas.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else {
        recommendedCrop = 'No Resul Found';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 192, 140),
        title: Text(
          'Crop Rotation',
          style: TextStyle(fontSize: 20, color: black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'What did you sow last year?',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: lastYearCropController,
              decoration: InputDecoration(
                labelText:
                    'type the name of your crop here...${lastYearCrop.toLowerCase()}',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              child: Text('Get Recommendation'),
              onPressed: () {
                recommendCrop();
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Recommended Crop: $recommendedCrop',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
