import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'Plant Disease Detector',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: PlantDiseaseDetector(),
  ));
}

class PlantDiseaseDetector extends StatefulWidget {
  @override
  _PlantDiseaseDetectorState createState() => _PlantDiseaseDetectorState();
}

class _PlantDiseaseDetectorState extends State<PlantDiseaseDetector> {
  final picker = ImagePicker();
  String _diseaseInfo = '';

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      String imagePath = pickedFile.path;
      String apiKey = '41Ttpf7WWmTTbNy1CKqEIhCe0Ge6Hoa0OBAWxFxHEIpihGzj74';
      String apiUrl = 'https://plant.id/api/v3';

      setState(() {
        _diseaseInfo = 'Detecting plant disease...';
      });

      try {
        var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
        request.headers['Api-Key'] = apiKey;
        request.files
            .add(await http.MultipartFile.fromPath('images', imagePath));

        var response = await request.send();
        var responseJson = jsonDecode(await response.stream.bytesToString());

        if (responseJson['suggestions'].length > 0) {
          String solution =
              responseJson['suggestions'][0]['plant_details']['solution'];

          setState(() {
            _diseaseInfo = 'Solution: $solution';
          });
        } else {
          setState(() {
            _diseaseInfo = 'No disease detected.';
          });
        }
      } catch (e) {
        print('Error: $e');
        setState(() {
          _diseaseInfo = 'Error occurred. Please try again.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Disease Detector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Take Photo'),
              onPressed: () => _pickImage(ImageSource.camera),
            ),
            ElevatedButton(
              child: Text('Choose from Gallery'),
              onPressed: () => _pickImage(ImageSource.gallery),
            ),
            SizedBox(height: 20),
            Text(
              _diseaseInfo,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
