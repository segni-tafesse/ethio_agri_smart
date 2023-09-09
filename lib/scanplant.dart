import 'package:flutter/material.dart';
//import '../constants/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class PlantScanPage extends StatefulWidget {
  PlantScanPage({super.key});

  @override
  State<PlantScanPage> createState() => _PlantScanPageState();
}

class _PlantScanPageState extends State<PlantScanPage> {
  final apiKey = "2b106tqQLP6f0OGh8UUtkeBe"; // Set your API_KEY here
  final project = "all"; // Try "weurope" or "canada"
  File? pickedImage;
  bool? Loading = false;
  List<dynamic> commonName = [];
  List<dynamic> scientificName = [];
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

        ;
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
            Loading!
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        Loading = true;
                      });
                      await getPlantData();
                      setState(() {
                        Loading = false;
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
  const ScanAppBar({
    super.key,
  });

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
//betoneyos;