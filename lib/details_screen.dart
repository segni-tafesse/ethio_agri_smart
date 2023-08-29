import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
        actions: [
          IconButton(icon: Icon(Icons.more_vert_outlined), onPressed: () {}),
        ],
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
              image: AssetImage('images/apple.jpg'),
            ),
            Divider(
              height: 20,
            ),
            Center(
                child: DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                    value: '5',
                    child: Center(
                      child: Text(
                        " NAMES: \n \n 1,Scientific/Botanical name : Malus sylvestris \n ",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
              onChanged: (_value) => {
                print(_value.toString()),
              },
              hint: Text('Names'),
            )),
            Center(
                child: DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                    value: '5',
                    child: Center(
                      child: Text(
                        " HOW TO GROW APPLES? \n  1.  Choosing the Right Variety: Start by selecting an apple variety suitable for your climate zone. Consider factors such as taste, texture, and whether you prefer dessert apples or cooking apples. \n 2.  Planting Location: Apple trees need a sunny location with well-drained soil. The soil should have a slightly acidic to neutral pH. Test the soil and make amendments if necessary before planting. \n 3.  Planting Process: Dig a hole that is wide and deep enough to accommodate the tree's roots. Place the tree in the hole and spread out the roots carefully. Backfill the hole with soil, firming it gently around the roots. Ensure that the graft union (the swollen area where the cultivar is grafted onto the rootstock) is above the soil level. \n 4.  Watering and Mulching: Water the newly planted tree thoroughly and regularly during the first growing season. Mulching around the base of the tree with organic material like wood chips or straw helps retain moisture, suppress weeds, and regulate soil temperature. \n 5.  Pruning and Training: Pruning is important for managing the shape, size, and productivity of the tree. Prune during the dormant season, removing dead, damaged, or crossing branches. \n 6.  Fertilizing: Apple trees benefit from regular fertilization. Apply a balanced fertilizer in early spring and late fall, following the instructions on the product packaging. \n 7.  Pest and Disease Management: Monitor your apple tree for common pests like aphids, codling moths, or apple maggots, and implement appropriate control measures if necessary. Organic approaches like maintaining good tree hygiene, promoting biodiversity, and using biological controls are often preferred. \n 8.  Harvesting: Apples typically ripen in late summer or fall, depending on the variety. Harvest the fruit when it reaches its proper maturity stage by gently twisting it or lifting and testing for easy separation.\n ",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
              onChanged: (_value) => {
                print(_value.toString()),
              },
              hint: Text('How to Grow'),
            )),
            Center(
              child: Text(
                  "Light \n \n Apple trees need full sun to grow properly and produce fruit. This level of exposure means the tree will see at least six to eight hours of direct sunlight each day. Anything less than this will result in poor fruit yields or a lack of fruit entirely. \n Soil \n Apples grow best on a well-drained, loam soils having a depth of 45 cm and a pH range of pH 5.5-6.5. The soil should be free from hard substrata and water-logged conditions. Soils with heavy clay or compact subsoil are to be avoided.\n Water \n Apple tree water requirements depend on rainfall. In general, for an established tree, you won't need to water it unless you are not getting much rain or there is a particularly dry spell or even drought. About an inch (2.5 cm.) or so of rainfall every week to ten days is adequate for most apple trees.\n "),
            ),
            Center(
              child: Text(
                  ' \n Temperature and Humidity \n Apples are best stored at 30°- 32°F, with a relative humidity of 90 percent and some air circulation. These conditions provide the greatest delay in the normal ripen- ing and aging process of the fruit.\n'),
            ),
            Center(
              child: Text(
                  'FERTILIZERS/n Experts recommend fertilizing your apple tree right after you plant it, and then a second time in early summer. During the second year, experts suggest fertilizing once in early spring, and a second time in early summer. Fertilize mature apple trees once a year during the spring. Apple trees mainly prefer high nitrogen fertilizer. Composted chicken manure, blood, soybean, cottonseed, and feather are excellent organic nitrogen sources. Organic fertilizers provide the Apple trees with the nutrients they need to grow healthy Apples and grow stronger.\n\n PESTICIDES: The best way to control pests in Apple is while those pests are mating and looking for potential egg-laying sites, so during this period we can use pesticides like: \n Chlorantrani liprole  41.2% \n Acetamiprid. 28.7%\n Lmidacloprid 20.2% \n Carbendazlm(MBC) 17.3% \n There are several herbicides that can be used for apple orchards, depending on the specific weed species and the stage of growth. \n HERBICIDES: Some commonly used herbicides for apple trees include glyphosate, glufosinate-ammonium, diuron, simazine, and 2,4-D. '),
            ),
            Center(
              child: Text(
                  '\n HARVESTING \n The fruits mature within 130-150 days after the full bloom stage depending upon the variety grown. The ripening of fruits is associated with the change in colour, texture, quality and the development of the characteristic flavour. The fruits at the time of harvest should be uniform, firm and crisp.\n PRUNING:\nPruning\nWhat is pruning in Apple?\n We prune apple trees for four main reasons. First, to make the tree easy to maintain and harvest by controlling the height and shape. Secondly, to maintain a healthy tree by removing dead, diseased or damaged wood. Thirdly, to improve air circulation which reduces pests and diseases.\n What is the best time to prune apple trees? Spring\n PROCESS \n Prune out strong shoots growing towards the centre. You can leave weaker shoots (up to 20cm/8in long) unpruned. Look for any downward-growing branches low on the tree that receive little light and could cause an obstruction. Prune to a more upward-growing branch or back to the main trunk.'),
            ),
            Center(
              child: Text(
                  '\n TOXICITY:\nToxicity \n Apple flesh and peel are very healthful and pose no risks. Yet chewed or crushed apple seeds release small amounts of cyanide, which is highly toxic. '),
            )
          ],
        ),
      ),
    );
  }
}
