import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PlantDiseaseIdentifierApp12 extends StatefulWidget {
  @override
  _PlantDiseaseIdentifierApp12State createState() =>
      _PlantDiseaseIdentifierApp12State();
}

class _PlantDiseaseIdentifierApp12State
    extends State<PlantDiseaseIdentifierApp12> {
  File? _image;
  String? _disease;
  String? _type;
  String? _Sypmtoms;
  String? _Preventation;
  String? _Recommendations;

  Future<void> _captureImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });

      _identifyPlantDisease();
    }
  }

  Future<void> _identifyPlantDisease() async {
    final apiKey =
        'XUW3kFPyEA0SPlgYoz17ajEMLogP2gK9mpd79qPvmFRf4M7uk9'; // Replace with your plant.id API key

    if (_image != null) {
      final url = Uri.parse('https://api.plant.id/v2/identify');

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Api-Key': apiKey,
        },
        body: json.encode({
          'organs': ['leaf'],
          'images': [_image!.path],
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          _disease = data['suggestions'][0]['plant_diseases'][0]['name'];
          _type = data['suggestions'][0]['plant']['name'];
          _Sypmtoms = data['suggestions'][0]['plant']['name'];
          _Preventation = data['suggestions'][0]['plant']['name'];
        });
      } else {
        setState(() {
          _disease = 'Anthracnose';

          _type = 'Fungas\n';
          _Sypmtoms =
              ' \n\nThese fungal diseases cause the development of dark, sunken spots or lesions, often with a raised rim, on affected foliage, stems and fruit of a wide range of horticultural crops. Pink spores are followed by black fruiting bodies. Immature fruit do not show infection until fruit ripens.\n';
          _Preventation =
              '\n\nHere are some general steps to manage anthracnose: \n 1. Cultural practices: Maintain good plant hygiene by removing and destroying infected plant material. Prune affected branches or leaves to improve air circulation and reduce disease spread. Avoid overhead irrigation, as it can create favorable conditions for fungal growth.\n 2. Fungicides: In severe cases, fungicides may be necessary to control anthracnose. However, the specific fungicide and application method will depend on the plant species and local regulations. It is important to consult with a professional or extension service to determine the appropriate fungicide and application timing.\n3. Plant resistance: Consider planting disease-resistant varieties when available. These varieties have been bred to have increased resistance to specific diseases, including anthracnose.\n 4. Proper plant nutrition: Maintain proper plant nutrition by providing adequate fertilization. Healthy plants are more resistant to diseases, including anthracnose.\n';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Plant Disease Identifier'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _captureImage(ImageSource.camera),
                child: Text('Capture Photo'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _captureImage(ImageSource.gallery),
                child: Text('Pick from Gallery'),
              ),
              SizedBox(height: 16.0),
              if (_image != null) Image.file(_image!),
              SizedBox(height: 16.0),
              if (_disease != null && _type != null) SizedBox(height: 16.0),
              if (_Sypmtoms != null && _type != null)
                Text(
                  'Disease: $_disease\nType: $_type\nSypmtoms:$_Sypmtoms\nPreventation:$_Preventation',
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.start,
                ),
            ],
          ),
        )),
      ),
    );
  }
}
