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
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Apple') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Avocado') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Coffee') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Cotton') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Tommatoes') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Grape') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Kale') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == '') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Millet') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Lemon') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Lettuce') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Lettuce') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Orange') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Oil palm') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Potatoes') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Beans') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Sugaracane') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Sunflower') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'Teff') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
      } else if (lastYearCrop == 'peas') {
        recommendedCrop =
            '\n-beans\n-peas\n-pinach\n-lettuce\n-kale\n-sweet potatoes\n-carrots\n-radishes\n-broccoli\n-cabbage\n-cauliflower\n\nReason:\n-Diversify nutrient uptake patterns in the soil.\n-Break pest and disease cycles associated with rice.\n-Help control weeds by disrupting their life cycles.\n-Improve soil health, structure, and fertility.\n-Reduce the risk of carryover and promote healthier crops.\n-Provide opportunities to diversify income sources.';
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
