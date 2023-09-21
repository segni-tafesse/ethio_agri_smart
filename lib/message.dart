import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(TelegramApp());
}

class TelegramApp extends StatefulWidget {
  @override
  _TelegramAppState createState() => _TelegramAppState();
}

class _TelegramAppState extends State<TelegramApp> {
  List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Market',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Market'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey.shade200,
                child: ListView.builder(
                  reverse: true, // Display messages in reverse order
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: messages[index].isMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(8.0),
                        color: messages[index].isMe
                            ? Colors.greenAccent
                            : Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 12.0,
                          ),
                          child: Text(
                            messages[index].text,
                            style: TextStyle(
                              color: messages[index].isMe
                                  ? Colors.black
                                  : Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: PlantInput(
                onSend: (plantType) {
                  setState(() {
                    messages.add(Message(text: plantType, isMe: true));
                  });

                  getPrice(plantType);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getPrice(String plantType) {
    setState(() {
      messages.add(Message(text: 'Fetching price...', isMe: false));
    });

    // Simulate an asynchronous process using Future.delayed
    // Replace this with your own logic to fetch the price based on the plantType
    Future.delayed(Duration(seconds: 2), () {
      // Replace this with your own logic to generate the response based on the plantType
      // For simplicity, we'll use a fixed set of plant types and prices
      final plantTypePriceMap = {
        'Teff': '1kg      102  Birr',
        'Maize': '1kg      49  Birr ',
        'Wheat': '1kg      70  Birr',
        'Barley': '1kg     52  Birr ',
        'Rice': '1kg        77  Birr',
        'Sorghum': '1kg      56  Birr ',
        'Beans': '1kg         49  Birr ',
        'Pear': '1kg          49  Birr ',
        'Tomatoes': '1kg      49  Birr ',
        'Potatoes': '1kg      102  Birr',
        'Onions': '1kg        Birr',
        'Apples': '1kg       130 Birr',
        'Avocado': '1kg      150 Birr ',
        'Banana': '1Kg       60 Birr',
        'Earth  Pea': '1Kg    100 Birr',
        'Bell Pepper': '1Kg     50 Birr',
        'Cabbage': '1Kg      50 Birr',
        'Carrot': '1Kg       60 Birr',
        'Coffee': '1Kg       320 Birr',
        'Dates': '1Kg        388 Birr',
        'Green Pepper': '1Kg          100 Birr',
        'Grape': '1Kg          454.425 Birr',
        'Strawberry': '1Kg        235.5775 Birr',
        'Lemon': '1Kg             50 Birr',
        'Lettuce': '1Kg           100 Birr',
        'Salad': '1Kg             80 Birr',
        'Spinach': '1Kg         50 Birr',
        'Mandarin': '1Kg         50 Birr',
        'Mango': '1Kg          120 Birr',
        'Mushroom': '1Kg        100 Birr',
        'Onion': '1Kg            75 Birr',
        'Garlic': '1Kg            200 Birr',
        'Orange': '1Kg             150  Birr',
        'Pea': '1Kg                100 Birr',
        'Pine Apple': '1Kg           150 Birr',
        'Potato': '1Kg               60 Birr',
        'Pumpkin': '1Kg              60 Birr',
        'linseed': '1Kg              100 Birr',
        'Tomato': '1Kg                80 Birr',
        'Watermelon': '1Kg             200 Birr',
        'Sweet potato(yam)': '1Kg          80 Birr',
        'Zucchini': '1Kg                  75 Birr',
        'Sugarcane': '1Kg                  150 Birr',
        'Red pepper': '1Kg                  500 Birr',
        'Apple': '1Kg            140 Birr',
        // Add more plant types and prices as needed
        'teff': '1kg      102  Birr',
        'maize': '1kg      49  Birr ',
        'wheat': '1kg      70  Birr',
        'barley': '1kg     52  Birr ',
        'rice': '1kg        77  Birr',
        'sorghum': '1kg      56  Birr ',
        'beans': '1kg         49  Birr ',
        'pear': '1kg          49  Birr ',
        'tomatoes': '1kg      49  Birr ',
        'potatoes': '1kg      102  Birr',
        'onions': '1kg        Birr',
        'apples': '1kg       130 Birr',
        'avocado': '1kg      150 Birr ',
        'banana': '1Kg       60 Birr',
        'earth  Pea': '1Kg    100 Birr',
        'bell Pepper': '1Kg     50 Birr',
        'cabbage': '1Kg      50 Birr',
        'carrot': '1Kg       60 Birr',
        'coffee': '1Kg       320 Birr',
        'dates': '1Kg        388 Birr',
        'green pepper': '1Kg          100 Birr',
        'grape': '1Kg          454.425 Birr',
        'strawberry': '1Kg        235.5775 Birr',
        'lemon': '1Kg             50 Birr',
        'lettuce': '1Kg           100 Birr',
        'salad': '1Kg             80 Birr',
        'spinach': '1Kg         50 Birr',
        'mandarin': '1Kg         50 Birr',
        'mango': '1Kg          120 Birr',
        'mushroom': '1Kg        100 Birr',
        'onion': '1Kg            75 Birr',
        'garlic': '1Kg            200 Birr',
        'orange': '1Kg             150  Birr',
        'pea': '1Kg                100 Birr',
        'pine apple': '1Kg           150 Birr',
        'potato': '1Kg               60 Birr',
        'pumpkin': '1Kg              60 Birr',
        'Linseed': '1Kg              100 Birr',
        'tomato': '1Kg                80 Birr',
        'watermelon': '1Kg             200 Birr',
        'sweet potato(yam)': '1Kg          80 Birr',
        'zucchini': '1Kg                  75 Birr',
        'sugarcane': '1Kg                  150 Birr',
        'red pepper': '1Kg                  500 Birr',
        'apple': '1Kg            140 Birr',
      };

      final response = plantTypePriceMap[plantType] ?? 'Price not available';

      setState(() {
        messages.add(Message(text: response, isMe: false));
      });
    });
  }
}

class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}

class PlantInput extends StatefulWidget {
  final Function(String) onSend;

  PlantInput({required this.onSend});

  @override
  _PlantInputState createState() => _PlantInputState();
}

class _PlantInputState extends State<PlantInput> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              labelText: 'Plant Type',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        MaterialButton(
          child: Text(
            'More Info',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            launch('https://www.selinawamucii.com/insights/prices/ethiopia/');
          },
          color: Colors.green,
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            final plantType = _textEditingController.text.trim();
            if (plantType.isNotEmpty) {
              _textEditingController.clear();
              widget.onSend(plantType);
            }
          },
        ),
      ],
    );
  }
}
