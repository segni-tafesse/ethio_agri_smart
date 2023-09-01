import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

class PlantDiseaseIdentifierApp extends StatefulWidget {
  const PlantDiseaseIdentifierApp({super.key});

  @override
  _PlantDiseaseIdentifierAppState createState() =>
      _PlantDiseaseIdentifierAppState();
}

class _PlantDiseaseIdentifierAppState extends State<PlantDiseaseIdentifierApp> {
  File? _image;
  String? _disease;
  String? _type;

  Future<void> _captureImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });

      // _identifyPlantDisease();
    }
  }

  // Future<void> _identifyPlantDisease() async {
  //  const apiKey = 'WQJsul6jVNFhcjA4CFEHsImbzaWQLR99icaZght2ra1EL67186';
  //   print('identifying!');
  //   if (_image != null) {
  //     final url = Uri.parse('https://api.plant.id/v3/identify');

  //     // final response = await http.post(
  //     //   url,
  //     //   headers: {
  //     //     'Content-Type': 'application/json',
  //     //     'Api-Key': apiKey,
  //     //   },
  //     //   body: json.encode({
  //     //     'organs': ['leaf'],
  //     //     'images': [_image!.path],
  //     //   }),
  //     // );
  //     final response = await http.post(
  //       url,
  //       headers: {
  //         'Content-Type': 'multipart/form-data',
  //         'Api-Key': apiKey,
  //       },
  //       body: json.encode({
  //         'organs': ['leaf'],
  //         'images': [
  //           'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Hibiscus_Bacterial_leaf_spot_caused_by_Pseudomonas_cichorii_%285684575818%29.jpg/220px-Hibiscus_Bacterial_leaf_spot_caused_by_Pseudomonas_cichorii_%285684575818%29.jpg'
  //         ],
  //       }),
  //     );

  //     if (response.statusCode == 200) {
  //       final data = await json.decode(response.body);

  //       setState(() {
  //         _disease = data['suggestions'][0]['plant_diseases'][0]['name'];
  //         _type = data['suggestions'][0]['plant']['name'];
  //       });
  //       print("the disease:$_disease");
  //     } else {
  //       setState(() {
  //         _disease = 'Error';
  //         _type = 'Error';
  //       });
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Artificial intellignece'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  elevation: 2,
                  onPressed: () => _captureImage(ImageSource.camera),
                  child: Text('Capture Photo'),
                  color: Colors.green,
                ),
                SizedBox(height: 16.0),
                MaterialButton(
                  elevation: 2,
                  onPressed: () => _captureImage(ImageSource.gallery),
                  child: Text('Pick from Gallery'),
                  color: Colors.blue,
                ),
                SizedBox(height: 16.0),
                if (_image != null) Image.file(_image!),
                SizedBox(height: 16.0),
                if (_disease != null && _type != null)
                  Text(
                    'Disease: $_disease\nType: $_type',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
