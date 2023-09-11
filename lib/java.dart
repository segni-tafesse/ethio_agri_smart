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
  final apiKey = "2b106tqQLP6f0OGh8UUtkeBe"; // Set your API_KEY here
  final project = "all"; // Try "weurope" or "canada"
  File? pickedImage;
  bool? loading = false;
  List<dynamic> commonName = [];

  Future<void> getPlantData() async {
    List<dynamic> resCommonNames;

    final apiEndpoint = Uri.parse(
        "https://my-api.plantnet.org/v2/identify/$project?api-key=$apiKey");

    if (pickedImage != null) {
      final bytes = await pickedImage!.readAsBytes();
      final response = await uploadImage(apiEndpoint, bytes);

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(await response.stream.bytesToString());
        print('Status Code: ${response.statusCode}');

        resCommonNames =
            await jsonResponse['results'][2]['species']['commonNames'];

        print(
            'Result: ${jsonResponse['results'][2]['species']['commonNames'].runtimeType}');
        setState(() {
          commonName = resCommonNames;
        });
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
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: ScanAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            pickedImage != null
                ? Image.file(
                    pickedImage!,
                    height: 150,
                  )
                : Text('No image selected.'),
            ElevatedButton(
              onPressed: () => pickImage(ImageSource.gallery),
              child: Text('Pick from Gallery'),
            ),
            ElevatedButton(
              onPressed: () => pickImage(ImageSource.camera),
              child: Text('Pick from Camera'),
            ),
            loading!
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
            commonName.isNotEmpty ? Text(commonName[0]) : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class ScanAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ScanAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 3, 185, 106),
      elevation: 3,
      centerTitle: true,
      title: Text(
        'SMART AGRI',
        style: TextStyle(color: Colors.white),
      ),
      //toolbarHeight: 80,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

void main() {
  final String IMAGE1 = '../data/image_1.jpeg';
  final String ORGAN1 = 'flower';
  final String IMAGE2 = '../data/image_2.jpeg';
  final String ORGAN2 = 'leaf';

  final String PROJECT = 'all'; // try "weurope" or "canada"
  final String API_URL =
      'https://my-api.plantnet.org/v2/identify/$PROJECT?api-key=';
  final String API_PRIVATE_KEY = 'your-private-api-key'; // secret
  final String API_SIMSEARCH_OPTION =
      '&include-related-images=true'; // optional: get most similar images
  final String API_LANG =
      '&lang=fr'; // default:I apologize for the confusion, but it seems that there are two different sets of code snippets in your request. The first code snippet is a Flutter code for a plant scanning page, and the second code snippet is a Dart code for a plant recognition API.
}
