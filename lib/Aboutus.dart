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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Smart Agri!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'At STEMpower, we are passionate about revolutionizing the agricultural industry through the power of technology. Our team of dedicated developers has come together to create a comprehensive app that aims to empower farmers, gardeners, and plant enthusiasts with advanced tools and information.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Key Features of Smart Agri:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '- Disease Detection: Detect and identify plant diseases through advanced image processing and machine learning algorithms.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Plant Identification: Instantly recognize different plant species using state-of-the-art computer vision techniques.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Plant Information: Access a comprehensive database of plants, including detailed descriptions, growth requirements, and medicinal properties.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Weather Forecast: Stay informed about weather conditions and receive accurate forecasts tailored to your location.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Crop Management: Optimize crop health and yield by calculating precise fertilizer, herbicide, and pesticide requirements.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Crop Price Tracking: Keep track of crop prices in real-time to make informed decisions about selling your produce.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Crop Rotation Recommendations: Receive expert recommendations for the best crop rotation patterns to maintain soil health and optimize productivity.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Nutrient Recommendations: Get personalized nutrient recommendations based on your health condition and dietary requirements.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Developers:\nOluma Abera & Segni Tafesa',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              MaterialButton(
                child: Text(
                  'More Info',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  launch('Ol_Lm10_Cr7');
                },
                color: Color.fromARGB(255, 61, 192, 140),
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
