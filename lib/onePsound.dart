import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(TextToSpeechApp1());
}

class TextToSpeechApp1 extends StatelessWidget {
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
Welcome to Recommendations Button!
Here on the Recommendations button you can find:
  1. African Lilly or Agapanthus
  2. African Violet or Saintpaulia spp
  3. Apple or Malus sylvestris
  4.Avocado or Persea Americana
  5.Banana or Musa acuminata
  6.Berries or Fragaria ananassa
  7.Barley or Hordeum vulgare
  8.Beans or Phaseoulus vulgaris
  9.Bell peppers or capsicum annuum
  10.Broccoli or Brassica oleracea
  11.Cabbage or Hordeum vulgare
  12.Carrot or Daucus carota
  13.Cauliflower or Brassica oleracea var.botrytis
  14.Coffee or cofea
  15.Cotton or Gossypisum hirsutum(Gossypisum barbadense)
  16.Dates or Phoenix Dactylifera and etc...
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
