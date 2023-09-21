import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class DiseaseIdentifier extends StatefulWidget {
  const DiseaseIdentifier({super.key});

  @override
  State<DiseaseIdentifier> createState() => _DiseaseIdentifierState();
}

File? pickedImage;
String? cloudImageUrl;
bool uploadingImage = false;
String CloudiPreset = "dw5j5q9jz";
bool testable = false;
Map<String, dynamic> diagnosisData = {};
bool diagnosisAvailable = false;
bool diagnosingImage = false;

class _DiseaseIdentifierState extends State<DiseaseIdentifier> {
  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        pickedImage = File(pickedFile.path);
      });
      await _uploadImage(pickedImage!);
    }
  }

  Future<void> _uploadImage(File image) async {
    setState(() {
      uploadingImage = true;
      testable = false;
    });

    final url =
        Uri.parse('https://api.cloudinary.com/v1_1/$CloudiPreset/image/upload');
    final request = http.MultipartRequest('POST', url)
      ..fields['upload_preset'] = 'lmqyq1fs'
      ..files.add(await http.MultipartFile.fromPath('file', image.path));
    final response = await request.send();

    if (response.statusCode == 200) {
      final responseData = await response.stream.toBytes();
      final responseString = String.fromCharCodes(responseData);
      final jsonMap = jsonDecode(responseString);
      setState(() {
        cloudImageUrl = jsonMap['url'];
        uploadingImage = false;
        testable = true;
        diagnosisAvailable = false;
      });
      print(cloudImageUrl);
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant Disease Identifier'),
      ),
      body: SingleChildScrollView(
        child: uploadingImage
            ? const Center(
                child: Text(
                  "Uploading Image...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 300,
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
                        : const Center(
                            child: Text(
                              'No image selected.',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                  ),
                  uploadingImage
                      ? const Center(
                          child: Text("Uploading Image...",
                              style: TextStyle(fontWeight: FontWeight.bold)))
                      : Column(
                          children: [
                            testable
                                ? ElevatedButton(
                                    onPressed: () async {
                                      setState(() {
                                        diagnosingImage = true;
                                      });
                                      Map<String, dynamic> data =
                                          await PlantApi()
                                              .identifyPlant(cloudImageUrl!);

                                      setState(() {
                                        diagnosingImage = false;
                                        diagnosisData = data;
                                        diagnosisAvailable = true;
                                      });
                                    },
                                    child: const Text('Diagnose the plant'),
                                  )
                                : const SizedBox(),
                            ElevatedButton(
                              onPressed: () async {
                                await pickImage(ImageSource.gallery);
                              },
                              child: const Text('Upload from gallery'),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                await pickImage(ImageSource.camera);
                              },
                              child: const Text('Upload from Camera'),
                            ),
                          ],
                        ),
                  diagnosisAvailable
                      ? diagnosisData['is_healthy_probability'] > 0.5
                          ? Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Plant is healthy",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          //: StyledDiagnosisBox(data: diagnosisData)
                          : KeyValueWidget(data: diagnosisData)
                      //  DiagnosisBox(data: diagnosisData)

                      : diagnosingImage
                          ? const Center(
                              child: Text('Diagnosing plant'),
                            )
                          : const SizedBox()
                ],
              ),
      ),
    );
  }
}

class DiagnosisBox extends StatelessWidget {
  final Map<String, dynamic> data;

  DiagnosisBox({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data.entries.map((entry) {
        final key = entry.key;
        final value = entry.value;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$key:'),
              if (value is Map<String, dynamic>)
                DiagnosisBox(data: value) // Recursive thingy goes BRRRRRRRR
              else
                Text('  $value'),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class PlantApi {
  Future<Map<String, dynamic>> identifyPlant(String imageUrl) async {
    print('Identifying plant...');
    const String apiKey = "GRNTolRKPjkhh3GtVnlgaEvLIrRPsmUaH0odzDbLyyA1m2bYdJ";
    const String apiUrl = "https://api.plant.id/v2/health_assessment";

    final List<String> imageUrls = [imageUrl];

    final List<String> base64Images = await Future.wait(
      imageUrls.map((imageUrl) async {
        return await encodeImageFromUrl(imageUrl);
      }),
    );

    final Map<String, dynamic> params = {
      "images": base64Images,
      "latitude": 49.1951239,
      "longitude": 16.6077111,
      "datetime": 1582830233,
      "language": "en",
      "disease_details": [
        "cause",
        "common_names",
        "classification",
        "treatment",
      ],
    };

    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Api-Key": apiKey,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: jsonEncode(params),
    );

    if (response.statusCode == 200) {
      print(json.decode(response.body)['health_assessment']);
      return json.decode(response.body)['health_assessment'];
    } else {
      throw Exception('Failed to identify plant: ${response.statusCode}');
    }
  }

  Future<String> encodeImageFromUrl(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      final bytes = response.bodyBytes;
      return base64Encode(bytes);
    } else {
      throw Exception(
          'Failed to fetch and encode image: ${response.statusCode}');
    }
  }
}

class StyledDiagnosisBox extends StatelessWidget {
  final Map<String, dynamic> data;
  const StyledDiagnosisBox({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    dynamic health_probability = data['is_healthy_probability'];
    health_probability = (health_probability * 100);
    dynamic disease_name = data['diseases'][0]['name'];
    dynamic treatment =
        data['diseases'][0]['disease_details']['treatment']['chemical'][0];
    dynamic prevention =
        data['diseases'][0]['disease_details']['treatment']['prevention'][0];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Diagnosis",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text("Health Probabality: ${health_probability.toStringAsFixed(2)}%"),
          Text("Caused by: ${disease_name}"),
          Divider(),
          Text(
            "Treatment",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          ),
          Text("${treatment}"),
          Divider(),
          Text("Prevention",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal)),
          Text(
              "${data['diseases'][0]['disease_details']['treatment']['prevention'][0]}"),
        ],
      ),
    );
  }
}

class KeyValueWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  final int level;

  KeyValueWidget({required this.data, this.level = 0});

  String cleanValue(dynamic value) {
    // Convert the value to a string and remove unwanted characters
    if (value is Map<String, dynamic>) {
      // If the value is a map, handle it recursively
      return KeyValueWidget(data: value, level: level + 1).toString();
    } else {
      final cleanedValue =
          value.toString().replaceAll(RegExp(r'[{}\[\],"]'), '');
      return cleanedValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final fontSize =
        16.0 + (2.0 * level); // Adjust the font size based on the level
    final fontWeight = FontWeight.bold;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data.entries.map((entry) {
          final key = entry.key;
          final value = entry.value;

          return Padding(
            padding: EdgeInsets.only(left: 8.0 * level),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$key:',
                  style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
                ),
                if (value
                    is Map<String, dynamic>) // Check if the value is a map
                  KeyValueWidget(
                      data: value,
                      level: level + 1) // Recursively create a KeyValueWidget
                else
                  Text(
                    '  ${cleanValue(value)}', // Display the cleaned value
                    style: TextStyle(fontSize: fontSize),
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
