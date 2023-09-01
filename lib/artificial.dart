import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PlantDiseaseIdentifierApp1 extends StatefulWidget {
  @override
  State<PlantDiseaseIdentifierApp1> createState() =>
      _PlantDiseaseIdentifierAppState();
}

class _PlantDiseaseIdentifierAppState
    extends State<PlantDiseaseIdentifierApp1> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Artificial intellignece'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  elevation: 2,
                  child: Text('Pick from Gallery'),
                  onPressed: () {
                    _pickImageFromGallery();
                  },
                  color: Colors.green,
                ),
                MaterialButton(
                  elevation: 2,
                  child: Text('Pick from Camera'),
                  onPressed: () {
                    _pickImageFromCamera();
                  },
                  color: Colors.blue,
                ),
                const SizedBox(height: 20),
                selectedImage != null
                    ? SingleChildScrollView(child: Image.file(selectedImage!))
                    : Text("Please select an Image")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) {
      return;
    }
    setState(() {
      selectedImage = File(returnedImage.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) {
      return;
    }
    setState(() {
      selectedImage = File(returnedImage.path);
    });
  }
}
