import 'package:flutter/material.dart';

class MyApp30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dicistion Support'), centerTitle: true),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Catagory')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('City')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Name')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Unit')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Pre-price')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Current price')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Change')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Fruits')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Addis Ababa')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Apple')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Avocado')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Banana')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Dates')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Grape')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Lemon')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Mango')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Orange')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Vegetable')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Addis Ababa')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Cabbage')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Carrot')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Earth pea')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Onion')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Potato')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Tomato')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Crops')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('Addis Ababa')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Teff')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 90')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Wheat')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Maize')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Millet')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Sorghum')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Beans')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('Sun-flower')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green,
                            height: 50,
                            child: Center(child: Text('20')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
