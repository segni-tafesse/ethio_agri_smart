import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  final String telegramUsername = 'Ol_Lm10_Cr7';
  final String gmailAddress = 'olumabera2021@gmail.com';
  final String facebookUrl = 'https://www.facebook.com/your_facebook_account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Developers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'About Our Company',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () => _launchURL('https://t.me/$telegramUsername'),
              child: Text(
                'Telegram: @$telegramUsername',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () => _launchURL('mailto:$gmailAddress'),
              child: Text(
                'Email: $gmailAddress',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () => _launchURL(facebookUrl),
              child: Text(
                'Facebook',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
