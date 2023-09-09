import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Crop Market'), centerTitle: true),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: Text('Fruits'),
                ),
                ElevatedButton(onPressed: null, child: Text('Addis Ababa')),
                Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Name')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Unit')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Pre-price')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Current price')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Apple')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('1kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB ')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Avocado')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Banana')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Dates')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Grape')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Lemon')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Mango')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('Orange')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('1 kg')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 100')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
                            height: 50,
                            child: Center(child: Text('ETB 120')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.green[50],
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
