import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlantDiseaseIdentification(),
    );
  }
}

class PlantDiseaseIdentification extends StatefulWidget {
  @override
  _PlantDiseaseIdentificationState createState() =>
      _PlantDiseaseIdentificationState();
}

class _PlantDiseaseIdentificationState
    extends State<PlantDiseaseIdentification> {
  final picker = ImagePicker();
  String diseaseName = '';
  String diseaseType = '';
  String symptoms = '';
  String prevention = '';
  String pesticides = '';

  Future<void> identifyDisease(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      final imageBytes = await pickedFile.readAsBytes();
      final base64Image = base64Encode(imageBytes);

      final response = await http.post(
        Uri.parse(
            'l8SQNpYoqkNcV9XE0bApInA1aQR6kDwklF3ALjo0ctbt5fsC0r'), // Replace with your API URL
        body: jsonEncode({'image': base64Image}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          diseaseName = data['diseaseName'];
          diseaseType = data['diseaseType'];
          symptoms = data['symptoms'];
          prevention = data['prevention'];
          pesticides = data['pesticides'];
        });
      } else {
        setState(() {
          diseaseName = 'Error';
          diseaseType = '';
          symptoms = '';
          prevention = '';
          pesticides = '';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Disease Identification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => identifyDisease(ImageSource.camera),
              child: Text('Capture Image'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => identifyDisease(ImageSource.gallery),
              child: Text('Choose from Gallery'),
            ),
            SizedBox(height: 20),
            Text(
              'Disease Name: $diseaseName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Disease Type: $diseaseType',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Symptoms: $symptoms',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Prevention: $prevention',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Pesticides: $pesticides',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
