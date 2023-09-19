import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(TextToSpeechApp());
}

class TextToSpeechApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text to Speech App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextToSpeechPage(),
    );
  }
}

class TextToSpeechPage extends StatefulWidget {
  @override
  _TextToSpeechPageState createState() => _TextToSpeechPageState();
}

class _TextToSpeechPageState extends State<TextToSpeechPage> {
  FlutterTts flutterTts = FlutterTts();
  String text = '''
Welcome to Smart Agri!
Here on the Home page you can find:
  1. Recommendations button: where you can find informations like plant information,plant growth requirements,plant's scientific and common names,charcteristics of plant,disease and etc...
  2.Weather Flora button: Where you can find accurate weather forecastings and recommendations for all cities around the world.
  3.Scan plants button: Where you can identify the plant, and get all informations by either capturing image directly from camera or by picking image from the gallery.
  4.Agro Calculator button: Where you can calculate the precise amount of agrochemicals like fertilizers, pesticides and herbicides for your plant or crop.
  5.Crop Market button: Where you can find the real-time crop price information across Ethiopia.
  6.Crop Rotation button: Where you can find a recomendation for good practice of crop rotation.
  7.Dr.crop button: Where you can detect the plant's disease and get recommendation by capturing image from camera or by picking it from gallery.
  8.AgriVid button: Where you can find awesome! videos of agriculture.
  Thank You!''';

  bool isSpeaking = false;
  double progress = 0.0;
  String currentWord = '';

  Future<void> _speak() async {
    setState(() {
      isSpeaking = true;
      progress = 0.0;
      currentWord = '';
    });

    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(0.5);
    await flutterTts.setSpeechRate(0.5);

    flutterTts.setProgressHandler((text, start, end, word) {
      setState(() {
        progress = (end > 0) ? start / end : 0.0;
        currentWord = word;
      });
    });

    await flutterTts.speak(text);

    setState(() {
      isSpeaking = false;
      progress = 0.0;
      currentWord = '';
    });
  }

  Future<void> _stop() async {
    await flutterTts.stop();
    setState(() {
      isSpeaking = false;
      progress = 0.0;
      currentWord = '';
    });
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void _mute() {
    flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text to Speech App'),
        actions: [
          IconButton(
            icon: Icon(Icons.volume_up),
            onPressed: isSpeaking ? _stop : _speak,
          ),
          IconButton(
            icon: Icon(Icons.volume_mute),
            onPressed: _mute,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
            Text(
              currentWord,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(value: progress),
          ],
        ),
      ),
    );
  }
}
