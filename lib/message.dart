import 'package:ethio_agri_smart/button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp31 extends StatelessWidget {
  get context => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Price Inquiry'),
          centerTitle: true,
        ),
        body: Center(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () => openMessagingApp(),
                child: Text('Ask for Crop Price'),
              ),
              MaterialButton(
                child: Text('More Info'),
                onPressed: () {
                  launch('https://www.ecx.com.et/');
                },
                color: Color.fromARGB(255, 61, 192, 140),
              ),
              SizedBox(height: 20),
            ],
          ),
        )),
      ),
    );
  }

  void openMessagingApp() async {
    final phoneNumber = '0982098708';
    final message = 'Crop price inquiry';

    final url = 'sms:$phoneNumber?body=$message';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error if the messaging app cannot be launched.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to launch the messaging app.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        },
      );
    }
  }
}
