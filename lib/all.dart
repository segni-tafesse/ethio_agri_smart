import 'package:flutter/material.dart';
import 'package:ethio_agri_smart/button.dart';
import 'package:ethio_agri_smart/fer.dart';
import 'package:ethio_agri_smart/herbicide.dart';
import 'package:ethio_agri_smart/mers.dart';
import 'package:ethio_agri_smart/pest.dart';
import 'package:ethio_agri_smart/pestcide.dart';
import 'package:ethio_agri_smart/poe.dart';

class Nextpage11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agro Calculator',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 61, 192, 140),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  textStyle: TextStyle(fontSize: 24.0),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FertilizerCalculatorApp1();
                      },
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calculate, size: 64.0),
                    SizedBox(height: 16.0),
                    Text('Fertilizer Calculator'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  textStyle: TextStyle(fontSize: 24.0),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PesticideCalculatorApp();
                      },
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_florist, size: 64.0),
                    SizedBox(height: 16.0),
                    Text('Pesticide Calculator'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                  textStyle: TextStyle(fontSize: 24.0),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HerbicideCalculatorApp();
                      },
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.eco, size: 64.0),
                    SizedBox(height: 16.0),
                    Text('Herbicide Calculator'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
