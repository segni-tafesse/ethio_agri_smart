import 'package:flutter/material.dart';

class banana extends StatelessWidget {
  const banana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(1)),
            Center(
              child: Text(
                '                INTRODUCTION(WHAT IS APPLE?)  \n Apples, scientifically known as Malus domestica, are one of the most popular and widely consumed fruits in the world. Belonging to the Rosaceae family, apples are native to Central Asia and have been cultivated for thousands of years. They are renowned for their crisp texture, sweet or tart taste, and vibrant colors, making them a favorite among both children and adults. With a rich history, diverse varieties, and numerous health benefits, apples have become an essential part of various cuisines, desserts, beverages, and even folklore.  ',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
            ),
            Image(
              image: NetworkImage(
                  'https://c4.wallpaperflare.com/wallpaper/568/403/810/table-basket-apples-red-wallpaper-preview.jpg'),
            ),
            Center(
              child: Text(
                " NAMES: \n \n 1,Scientific/Botanical name : Malus sylvestris \n  2,Common name:Apple \n  \n CHARACTERISTICS OF APPLE  \n \n Plant type: Rose family(Rosaceae) \n \n Mature Size:7 to 8.5 cm \n \n Sun Exposure: full sun  \n \n Soil type :well-drained, loam soil . \n \n Soil Ph:  5.8-7.0 \n \n Bloom time: early spring to late summer. \n \n Color: Red, green and yellow \n \n Hardiness Zones: 3 to 5 or 5 to 8 \n \n .Native Area: Kazakhstan, in central Asia east of the Caspian sea. \n \n Toxicity: Apple flesh and peel are very healthful and pose no risk. Yet seeds release small amounts of Cyanide, which is highly toxic.\n",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
