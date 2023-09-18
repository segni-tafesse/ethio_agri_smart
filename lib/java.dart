import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PlantScanPage extends StatefulWidget {
  PlantScanPage({Key? key});

  @override
  State<PlantScanPage> createState() => _PlantScanPageState();
}

class _PlantScanPageState extends State<PlantScanPage> {
  final apiKey = "2b106tqQLP6f0OGh8UUtkeBe"; // Replace with your API key
  final project = "all"; // Try "weurope" or "canada"
  File? pickedImage;
  bool loading = false;
  List<String> plantDetails = [];

  Future<void> getPlantData() async {
    final apiEndpoint = Uri.parse(
        "https://my-api.plantnet.org/v2/identify/$project?api-key=$apiKey");

    if (pickedImage != null) {
      final bytes = await pickedImage!.readAsBytes();
      final response = await uploadImage(apiEndpoint, bytes);

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(await response.stream.bytesToString());
        final results = jsonResponse['results'];

        if (results.isNotEmpty) {
          final species = results[0]['species'];
          final List<dynamic> resCommonNames = species['commonNames'];
          final String scientificName = species['scientificName'];

          setState(() {
            plantDetails = [];
            plantDetails.add('COMMON NAME: ${resCommonNames.join(", ")}');
            plantDetails.add('SCIENTIFIC NAME: $scientificName');
          });
        } else {
          print('No results found.');
        }
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } else {
      print('No image selected.');
    }
  }

  Future<http.StreamedResponse> uploadImage(
      Uri apiEndpoint, List<int> imageBytes) async {
    final request = http.MultipartRequest('POST', apiEndpoint);
    request.files.add(http.MultipartFile.fromBytes(
      'images',
      imageBytes,
      filename: 'image.jpg',
      contentType: MediaType('image', 'jpeg'),
    ));

    return await request.send();
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        pickedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF03B96A),
        title: Text(
          'Plant Recognition App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: pickedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.file(
                          pickedImage!,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Center(
                        child: Text(
                          'No image selected.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => pickImage(ImageSource.gallery),
                  child: Text('Pick from Gallery'),
                ),
                ElevatedButton(
                  onPressed: () => pickImage(ImageSource.camera),
                  child: Text('Pick from Camera'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            loading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        loading = true;
                      });
                      await getPlantData();
                      setState(() {
                        loading = false;
                      });
                    },
                    child: Text('Upload and Get Data'),
                  ),
            SizedBox(height: 16.0),
            if (plantDetails.isNotEmpty)
              Column(
                children: [
                  for (String detail in plantDetails)
                    Text(
                      detail,
                      style: TextStyle(fontSize: 18.0),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Plant Recognition App',
    home: PlantScanPage(),
  ));
}
