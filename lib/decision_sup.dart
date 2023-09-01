import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dicistion Support'),
        centerTitle: true
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
  
                    TableCell(child: Text('Catagory')),
                    TableCell(child: Text('City')),
                    TableCell(child: Text('Name')),
                    TableCell(child: Text('Unit')),
                    TableCell(child: Text('Pre-price')),
                    TableCell(child: Text('Current-price')),
                    TableCell(child: Text('Change')),
                    TableCell(child: Text('Rate'))
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('Fruits')),
                    TableCell(child: Text('Addis Ababa')),
                    TableCell(child: Text('Apple')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB 90')),
                    TableCell(child: Text('ETB 210')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Avocado')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB 80-90')),
                    TableCell(child: Text('ETB 120-130')),
                    TableCell(child: Text('ETB 40')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Banana')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Dates')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Grape')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Lemon')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Mango')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Mandarin')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Orange')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Pine Apple')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Papaya')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('Vegetables')),
                    TableCell(child: Text('Addis Ababa')),
                    TableCell(child: Text('Cabbage')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Carrot')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Earth pea')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Onion')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Potato')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Tomato')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Yam')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Lettuce')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Saled')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Green paper')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Saled')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Green paper')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Saled')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Green paper')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Saled')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Green paper')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Saled')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Green paper')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Red paper')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('Crops')),
                    TableCell(child: Text('Addis Ababa')),
                    TableCell(child: Text('Teff')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Wheat')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Maize')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Millet')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Sorghum')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Rice')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Sun-flower')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('Plants')),
                    TableCell(child: Text('Addis Ababa')),
                    TableCell(child: Text('Coffee')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Tea')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('Daires & ohter product')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Yoghurt')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Milk')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Local-cheese')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                   TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Egg')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),
                
                 TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('Loaf of(white) bread')),
                    TableCell(child: Text('1 kg')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB ')),
                    TableCell(child: Text('ETB 20')),
                    TableCell(child: Text('----')),
                  ],
                ),

                // ... add more rows as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
