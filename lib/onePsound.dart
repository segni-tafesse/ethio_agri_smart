import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(TextToSpeechApp1());
}

class TextToSpeechApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recommendations page',
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
  16.Dates or Phoenix Dactylifera 
  17.Earth Pea or Tuberous Pea
  18.Eggplants or Solanum melongena
  19.Ethiopian Banana or Ensete Ventricosum
  20.Ethiopian Mustard or Brassica Carinata
  21.Ethiopian Peppers or Aframomum corrorima
  22.Ethiopian rosewood or Dalbergia melanoxylon
  23.Grape or vitis Vinifera L.
  24.Green peppers or capsicum annuum
  25.Guavas or Psidium guajava
  26.Kale or Brassica oleracea var.sabellica
  27.Legumes or Chickpea,Garbanzo bean
  28.Lemon or Citrus Limon
  29.Lettuce or Lactuca sativa
  30.Limes or Citrus aurantifolia
  31.Maize or Zea Mays
  32.Mandarin or  Kid glove oranges,loose_skin oranges,tangerine oranges,tangerines
  33.Mango or Mangifera Indica
  34.Millet or Pennisetum glaucom
  35.Mushrooms or Agaricus spp
  36.Oilpalm or Elaeis Guineensis
  37.Oilseed or Helianthus annuus 
  38.Okra or Abelmoshus esculentus
  39.Onion or Allium cepa
  40.Orange or Citrus x sinenis
  41.Papaya or Carica papaya
  42.Peaches or Prunus persica 
  43.Peas or pisum sativum 
  44.PineApple or Ananas comosus
  45.Potato or Solanum tuberosum
  46.Pulse or Phaseolus vulgaris 
  47.Pumpkin or Cucurbita annuum
  48.Radish or Raphanus sativus 
  49.Red peppers or Capsicum annuum
  50.Rice or Orzya sativa 
  51.Rose or rosa rubinginosa
  52.Sorghum or Sorghum bicolor(L.)Moench
  53.Spinach or spinacia oleracea
  54.Sugarcane or Saccharum officinarum
  55.Sunflower or Carthamus tinctorius
  56.Sweet potatoes or pomea batatas
  57.Swiss chard or Beta vulgaris subsp.cicia
  58.Tea or Camellia sinenis 
  59.Teff or Eragotis teff
  60.Tobacco or Grand title Nicotiana
  61.Tomato or Solanum lycopersicum 
  62.Turnips or Brassica rapa subsp.rapa
  63.Watermelon or Genus Citrullus
  64.Wheat or Triticum
  65.Yam or purple yam,winged yam,greater yam
  66.Zucchini or Cucurbita pepo
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
        title: Text('Recommendations page'),
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
