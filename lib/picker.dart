import 'dart:io';

import 'package:ethio_agri_smart/another.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PlantDiseaseIdentifier extends StatefulWidget {
  @override
  _PlantDiseaseIdentifierState createState() => _PlantDiseaseIdentifierState();
}

class _PlantDiseaseIdentifierState extends State<PlantDiseaseIdentifier> {
  final picker = ImagePicker();
  String _diseaseInfo = '';

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      String imagePath = pickedFile.path;
      String apiKey =
          'hu7uyPNMnDYz4eRmBhctZhdRsD1bBUl2Wz11grcJpmiVMk7Xi9'; // Replace with your actual Plant.id API key

      setState(() {
        _diseaseInfo = 'Identifying plant...';
      });

      String result = await identifyPlant(apiKey, imagePath);

      setState(() {
        _diseaseInfo = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Disease Identifier'),
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
