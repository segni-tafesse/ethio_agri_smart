import 'package:flutter/material.dart';
//import 'package:flutter_tts/flutter_tts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedLanguage = 'English';
  bool _darkThemeEnabled = false;
  bool _textToSpeechEnabled = false;
  // FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    // flutterTts = FlutterTts();
  }

  @override
  void dispose() {
    // flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Language'),
            subtitle: Text(_selectedLanguage),
            onTap: () {
              _showLanguageDialog();
            },
          ),
          SwitchListTile(
            title: Text('Dark Theme'),
            value: _darkThemeEnabled,
            onChanged: (value) {
              setState(() {
                _darkThemeEnabled = value;
                _applyTheme();
              });
            },
          ),
          SwitchListTile(
            title: Text('Text-to-Speech'),
            value: _textToSpeechEnabled,
            onChanged: (value) {
              setState(() {
                _textToSpeechEnabled = value;
                //  _speakText();
              });
            },
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Language'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                _buildLanguageOption('English'),
                _buildLanguageOption('Afaan Oromo'),
                _buildLanguageOption('Amharic'),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageOption(String language) {
    return ListTile(
      title: Text(language),
      onTap: () {
        setState(() {
          _selectedLanguage = language;
        });
        Navigator.of(context).pop();
      },
    );
  }

  void _applyTheme() {
    // Implement your theme changing logic here
  }

  // Future<void> _speakText() async {
  //   if (_textToSpeechEnabled) {
  //     await flutterTts.setLanguage('en-US'); // Set the desired language
  //     await flutterTts.speak('Hello, world!'); // Speak the desired text
  //   } else {
  //     await flutterTts.stop(); // Stop the text-to-speech engine
  //   }
  // }
}
