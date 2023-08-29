import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  //late File _image;

  Future _getImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        //_image = File(pickedImage.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // _image != null
            //     ? Image.file(
            //         _image,
            //         height: 200,
            //       )
            //     :
            Icon(
              Icons.image,
              size: 100,
            ),
            SizedBox(height: 16.0),
            RaisedButton(
              onPressed: () => _getImage(ImageSource.gallery),
              child: Text('Pick Image from Gallery'),
            ),
            RaisedButton(
              onPressed: () => _getImage(ImageSource.camera),
              child: Text('Take a Photo'),
            ),
          ],
        ),
      ),
    );
  }

  RaisedButton({required Future Function() onPressed, required Text child}) {}
}
