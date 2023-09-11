import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class PlantIdentificationScreen extends StatefulWidget {
  @override
  _PlantIdentificationScreenState createState() =>
      _PlantIdentificationScreenState();
}

class _PlantIdentificationScreenState extends State<PlantIdentificationScreen> {
  String commonName = '';
  String scientificName = '';
  String genus = '';
  String family = '';

  get project => null;

  get apiKey => null;

  Future<void> identifyPlant(String imageBase64) async {
    // Base64 encode the image
    String encodedImage = base64Encode(imageBase64 as List<int>);

    // Make a POST request to the PlantNet API
    var response = await http.post(
      Uri.parse(
          'https://my-api.plantnet.org/v2/identify/$project?api-key=$apiKey'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'organs': 'leaf',
        'images': [encodedImage],
      }),
    );

    // Parse the response JSON
    var data = jsonDecode(response.body);

    // Extract the plant information
    var firstResult = data['results'][0];

    setState(() {
      commonName = firstResult['species']['commonNames'][0]['name'];
      scientificName = firstResult['species']['scientificName'];
      genus = firstResult['species']['genus']['name'];
      family = firstResult['species']['family']['name'];
    });
  }

  Future<void> captureImage(ImageSource source) async {
    var imagePicker = ImagePicker();
    var pickedImage = await imagePicker.pickImage(source: source);

    if (pickedImage != null) {
      // Read the image file as bytes
      var imageBytes = await pickedImage.readAsBytes();

      // Base64 encode the image bytes
      String encodedImage = base64Encode(imageBytes);

      // Call the plant identification method
      identifyPlant(encodedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Identification'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              captureImage(ImageSource.camera);
            },
            child: Text('Capture Image from Camera'),
          ),
          ElevatedButton(
            onPressed: () {
              captureImage(ImageSource.gallery);
            },
            child: Text('Select Image from Gallery'),
          ),
          SizedBox(height: 20.0),
          Text('Common Name: $commonName'),
          Text('Scientific Name: $scientificName'),
          Text('Genus: $genus'),
          Text('Family: $family'),
        ],
      ),
    );
  }
}
