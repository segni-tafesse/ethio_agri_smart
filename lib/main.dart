import 'package:ethio_agri_smart/Dr_crop.dart';
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return TextToSpeechApp();
                }),
              );
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
              label: Text('Crop Price Inquiiry'), // Specify the button label
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
                    return MyApp5();
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
