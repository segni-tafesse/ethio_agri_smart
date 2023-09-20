import 'package:ethio_agri_smart/disease_identification.dart';
import 'package:ethio_agri_smart/all.dart';
import 'package:ethio_agri_smart/dart.dart';
import 'package:ethio_agri_smart/java.dart';
import 'package:ethio_agri_smart/market.dart';
import 'package:ethio_agri_smart/message.dart';
import 'package:ethio_agri_smart/onepage.dart';
import 'package:ethio_agri_smart/rotation.dart';
import 'package:ethio_agri_smart/sound.dart';
import 'package:ethio_agri_smart/Video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './navigation_drawer.dart';
import './button.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class ThemeNotifier with ChangeNotifier {
  ThemeMode _currentThemeMode = ThemeMode.system;

  ThemeMode get currentThemeMode => _currentThemeMode;

  void setThemeMode(ThemeMode themeMode) {
    _currentThemeMode = themeMode;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeNotifier.currentThemeMode,
          home: Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> _speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.setVolume(1.0);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return CustomDrawer();
              }),
            );
          },
        ),
        title: Text(
          "Smart Agri",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.speaker_phone),
            onPressed: () {
              _speak(
                  'Welcome to Smart Agri, Here on the Home Page you can find. 1.Recommendations Button: Where you can find all Informations about your plant or crop. 2.WeatherFlora button: where you can find accurate weather forecastings and recommendations. 3.Scan Plants button: Where you can capture image by camera or pick image from gallery and identify the plant\'s type. 4.Agrocalculator button: Where you can calculate the precise amounts of pesticides, herbicides and fertilizers for your plant or crop. 5.Crop Price Inquiry: Where you can get information on real time crop price information. 6.Crop Rotation button: Where you can know and use good practices of Crop Rotation. 7.Dr.Crop button: Where you can capture image by camera or pick form gallery and detect the plant\'s or crop\'s disease. 8.AgriVid button: Where you can get awesome videos related to agriculture.  Thank you!');
            },
            tooltip: 'Text to Speech',
          ),
          IconButton(
            icon: Icon(Icons.cloud),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return WeatherInterface();
                }),
              );
            },
            tooltip: 'Weather',
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SettingsPage();
                }),
              );
            },
            tooltip: 'Settings',
          ),
        ],
        elevation: 20,
        flexibleSpace: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/New.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid
          mainAxisSpacing: 10, // Spacing between rows
          crossAxisSpacing: 10, // Spacing between columns
          padding: EdgeInsets.all(10), // Padding around the grid
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SearchPage();
                  }),
                );
              },
              icon: Icon(Icons.search), // Specify the icon
              label: Text('Recommendations'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WeatherInterface();
                  }),
                );
              },
              icon: Icon(Icons.cloud), // Specify the icon
              label: Text('WeatherFlora'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PlantScanPage();
                  }),
                );
              },
              icon: Icon(Icons.camera_alt), // Specify the icon
              label: Text('Scan plant'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Nextpage11();
                  }),
                );
              },
              icon: Icon(Icons.calculate), // Specify the icon
              label: Text('Agro Calculator'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TelegramApp();
                  }),
                );
              },
              icon: Icon(Icons.shopping_cart), // Specify the icon
              label: Text('Crop Price Inquiry'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CropRecommendationPage();
                  }),
                );
              },
              icon: Icon(Icons.swap_horiz), // Specify the icon
              label: Text('Crop Rotation'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DiseaseIdentifier();
                  }),
                );
              },
              icon: Icon(Icons.add), // Specify the icon
              label: Text('Dr.Crop'), // Specify the button label
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Customize the button color
                onPrimary: Colors.white, // Customize the text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Customize the button's border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return VideoPlayer1();
                  }),
                );
              },
              icon: Icon(Icons.play_arrow_outlined), // Specify the icon
              label: Text('AgriVid'), // Specify the button label
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Theme'),
            value: ThemeMode.light,
            groupValue: themeNotifier.currentThemeMode,
            onChanged: (value) {
              themeNotifier.setThemeMode(value!);
            },
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Theme'),
            value: ThemeMode.dark,
            groupValue: themeNotifier.currentThemeMode,
            onChanged: (value) {
              themeNotifier.setThemeMode(value!);
            },
          ),
          RadioListTile<ThemeMode>(
            title: Text('System Theme'),
            value: ThemeMode.system,
            groupValue: themeNotifier.currentThemeMode,
            onChanged: (value) {
              themeNotifier.setThemeMode(value!);
            },
          ),
        ],
      ),
    );
  }
}
