import 'package:ethio_agri_smart/button.dart';
import 'package:ethio_agri_smart/fer.dart';
import 'package:ethio_agri_smart/mers.dart';
import 'package:ethio_agri_smart/pest.dart';
import 'package:ethio_agri_smart/poe.dart';

import 'package:flutter/material.dart';

class Nextpage11 extends StatefulWidget {
  @override
  State<Nextpage11> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage11> {
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
          padding: EdgeInsets.all(120),
          child: Column(
            children: [
              ElevatedButton(
                  style: buttonprimary,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return FertilizerCalculatorApp1();
                      },
                    ));
                  },
                  child: Text('Fertlizer Calculator')),
              ElevatedButton(
                  style: buttonprimary,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HerbicideCalculatorApp32();
                      },
                    ));
                  },
                  child: Text('Pesticides calculator')),
              ElevatedButton(
                  style: buttonprimary,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HerbicideCalculatorApp32();
                      },
                    ));
                  },
                  child: Text('Herbicides calculator')),
            ],
          )),
    );
  }
}
