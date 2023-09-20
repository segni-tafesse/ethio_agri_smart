import 'package:flutter/material.dart';

void main() {
  runApp(AgriculturalApp());
}

class AgriculturalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Agri',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Open the Help dialog or navigate to the Help screen
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Help'),
                  content: SingleChildScrollView(
                    child: Text(
                      "Welcome to our Smart Agri's Help section! We're here to assist you and provide valuable guidance on utilizing the app's features effectively. Our comprehensive user guide is available, offering detailed documentation on how to navigate through the app, explore various tools and resources, and make the most out of our agricultural solutions. Additionally, we have a list of frequently asked questions (FAQs) that address common queries and provide quick solutions. If you need personalized assistance or have specific concerns, our dedicated customer support team is just a message away. You can reach out to us through the contact information provided below.\n Gmail:olumabera@gmail.com & \nTelegram:@Ol_Lm10_Cr7 & \n We're committed to supporting you on your agricultural journey and ensuring a seamless experience with our app. Happy farming!",
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Help'),
        ),
      ),
    );
  }
}
