import 'package:ethio_agri_smart/MarkDownPage.dart';
import 'package:ethio_agri_smart/Setting.dart';
import 'package:ethio_agri_smart/main.dart';
import 'package:ethio_agri_smart/model/crop_model.dart';
import 'package:ethio_agri_smart/onePsound.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

/*
Image.asset("images/apple")

*/
class _SearchPageState extends State<SearchPage> {
  static List<CropModel> main_crops_list = [
    CropModel(
        "African lily: Agapanthus ",
        "https://w7.pngwing.com/pngs/190/780/png-transparent-water-lily-water-lily-computer-wallpaper-sacred-lotus-flower-thumbnail.png",
        'African_lily.md'),
    CropModel(
        "African violet: Saintpaulia spp ",
        "https://w7.pngwing.com/pngs/907/75/png-transparent-sweet-violet-african-violets-parma-violet-others-purple-violet-color-thumbnail.png",
        'African_violet.md'),
    CropModel(
        "Apple:Malus sylvestris",
        "https://w7.pngwing.com/pngs/653/960/png-transparent-apple-apple-food-heart-fruit-thumbnail.png",
        'apple.md'),
    CropModel(
        "Avocado:Persea Americana",
        "https://w7.pngwing.com/pngs/381/546/png-transparent-avocado-guacamole-euclidean-fruit-avocado-natural-foods-food-logo-thumbnail.png",
        'avocado.md'),
    CropModel(
        "Banana:Musa acuminata",
        "https://w7.pngwing.com/pngs/731/89/png-transparent-banana-yellow-bananas-image-file-formats-food-orange-thumbnail.png",
        'Banana.md'),
    CropModel(
        "Berries: Fragaria ananassa",
        "https://w7.pngwing.com/pngs/834/345/png-transparent-sour-cherry-berry-cherry-natural-foods-food-photography-thumbnail.png",
        'Berries.md'),
    CropModel(
        "Barley: Hordeum vulgare",
        "https://w7.pngwing.com/pngs/911/669/png-transparent-beer-barley-cereal-beer-grass-beer-rice-thumbnail.png",
        'Barley.md'),
    CropModel(
        "Beans: Phaseolus vulgaris ",
        "https://w7.pngwing.com/pngs/345/888/png-transparent-kidney-bean-common-bean-red-beans-and-rice-drybeans-food-photography-adzuki-bean-thumbnail.png",
        'Beans.md'),
    CropModel(
        "Bell  peppers: Capsicum annuum ",
        "https://w7.pngwing.com/pngs/446/457/png-transparent-bell-pepper-chili-pepper-vegetable-paprika-bell-pepper-natural-foods-food-tomato-thumbnail.png",
        'Bell_peppers.md'),
    CropModel(
        "Broccoli: Brassica oleracea ",
        "https://w7.pngwing.com/pngs/362/547/png-transparent-broccoli-broccoli-fresh-fruits-thumbnail.png",
        'Broccoli.md'),
    CropModel(
        "Cabbage:Hordeum vulgare",
        "https://w7.pngwing.com/pngs/874/309/png-transparent-cabbage-roll-carrot-napa-cabbage-vegetable-cabbage-leaf-vegetable-food-napa-cabbage-thumbnail.png",
        'Barley.md'),
    CropModel(
        "Carrot:Daucus carota",
        "https://w7.pngwing.com/pngs/140/351/png-transparent-carrot-vegetable-carrot-natural-foods-food-orange-thumbnail.png",
        'Carrot.md'),
    CropModel(
        "Cauliflower: Brassica oleracea var. botrytis",
        "https://w7.pngwing.com/pngs/749/252/png-transparent-fried-cauliflower-dal-broccoli-cauliflower-leaf-vegetable-food-recipe-thumbnail.png",
        'Cauliflower.md'),
    CropModel(
        "Coffee: Cofea",
        "https://w7.pngwing.com/pngs/75/914/png-transparent-arabica-coffee-cafe-coffee-bean-coffee-roasting-coffee-food-cafe-coffee-thumbnail.png",
        'Coffee.md'),
    CropModel(
        "Cotton: Gossypium hirsutum  or Gossypium barbadense",
        "https://w7.pngwing.com/pngs/757/531/png-transparent-white-cotton-sea-island-cotton-sateen-bt-cotton-seed-cotton-plant-textile-branch-computer-wallpaper-thumbnail.png",
        'Cotton.md'),
    CropModel(
        "Dates:Phoenix Dactylifera",
        "https://w7.pngwing.com/pngs/1022/516/png-transparent-date-palm-dates-dried-fruit-food-date-palm-eating-arecaceae-fruit-thumbnail.png",
        'Dates.md'),
    CropModel(
        "EarthPea:Tuberous Pea",
        "https://w7.pngwing.com/pngs/889/806/png-transparent-pea-pod-peas-natural-foods-food-sticker-thumbnail.png",
        'Earth-Pea.md'),
    CropModel(
        "Eggplants: Solanum melongena",
        "https://w7.pngwing.com/pngs/27/797/png-transparent-eggplant-vegetable-eggplant-purple-food-violet-thumbnail.png",
        'Eggplants.md'),
    CropModel(
        "Ethiopian Banana: Ensete ventricosum",
        "https://w7.pngwing.com/pngs/332/204/png-transparent-banana-banana-natural-foods-food-fitness-thumbnail.png",
        'Ethiopian_Banana.md'),
    CropModel(
        "Ethiopia mustard: Brassica carinata ",
        "https://w7.pngwing.com/pngs/698/159/png-transparent-sarso-oil-mustard-oil-thumbnail.png",
        'Ethiopian_mustard.md'),
    CropModel(
        "Ethiopia peppers: Aframomum corrorima",
        "https://w7.pngwing.com/pngs/846/598/png-transparent-serrano-pepper-chili-con-carne-pasilla-chili-pepper-pepper-creative-leaf-creative-artwork-creative-ads-thumbnail.png",
        'Ethiopian_Peppers.md'),
    CropModel(
        "Ethiopia rosewood: Dalbergia melanoxylon",
        "https://w7.pngwing.com/pngs/47/472/png-transparent-narra-tree-dalbergieae-rosewood-plumeria-branch-plane-trees-arecaceae-thumbnail.png",
        'Ethiopian_rose_wood.md'),
    CropModel(
        "Grape:Vitis Vinifera L.",
        "https://w7.pngwing.com/pngs/456/89/png-transparent-grapes-juice-isabella-common-grape-vine-table-grape-grape-pattern-natural-foods-frutti-di-bosco-food-thumbnail.png",
        'Grapes.md'),
    CropModel(
        "Green peppers: Capsicum annuum",
        "https://w7.pngwing.com/pngs/357/687/png-transparent-green-bell-pepper-chili-pepper-peppers-natural-foods-image-file-formats-food-thumbnail.png",
        'Green_pepper.md'),
    CropModel(
        "Guavas:  Psidium guajava",
        "https://w7.pngwing.com/pngs/62/197/png-transparent-sliced-guava-fruits-common-guava-tropical-fruit-strawberry-guava-guava-natural-foods-food-orange-thumbnail.png",
        'Guavas.md'),
    CropModel(
        "Kale:   Brassica oleracea var. sabellica",
        "https://w7.pngwing.com/pngs/152/4/png-transparent-minestrone-kale-leaf-vegetable-smoothie-kale-food-spinach-cabbage-thumbnail.png",
        'Kale.md'),
    CropModel(
        "Legumes:  Chickpea, Garbanzo bean ",
        "https://w7.pngwing.com/pngs/174/7/png-transparent-peanut-lot-peanut-seed-legume-pistachio-peanut-miscellaneous-food-wholesale-thumbnail.png",
        'Legumes.md'),
    CropModel(
        "Lemon:Citrus Limon",
        "https://w7.pngwing.com/pngs/486/920/png-transparent-lemon-fruit-lemon-natural-foods-food-citrus-thumbnail.png",
        'Lemon.md'),
    CropModel(
        "Lettuce:  Lactuca sativa",
        "https://w7.pngwing.com/pngs/88/637/png-transparent-romaine-lettuce-graphy-lettuce-leaves-vegetables-watercolor-leaves-leaf-vegetable-food-thumbnail.png",
        'Lettuce.md'),
    CropModel(
        "Limes:   Citrus aurantifolia",
        "https://w7.pngwing.com/pngs/274/772/png-transparent-key-lime-sweet-lemon-lemon-lime-drink-lime-natural-foods-food-citrus-thumbnail.png",
        'Limes.md'),
    CropModel("Maize:Zea mays", "https://wallpapercave.com/wp/wp2570209.jpg",
        'Maize.md'),
    CropModel(
        "Mandarin:  Kid glove oranges, loose-skin oranges, tangerine oranges, tangerines",
        "https://w7.pngwing.com/pngs/520/639/png-transparent-mandarin-orange-desktop-others-natural-foods-food-orange-thumbnail.png",
        'Mandarin.md'),
    CropModel(
        "Mango:Mangifera Indica",
        "https://w7.pngwing.com/pngs/733/28/png-transparent-red-mangoes-juice-smoothie-mango-health-eating-mango-natural-foods-food-orange-thumbnail.png",
        'Mango.md'),
    CropModel(
        "Millet:Pennisetum glaucom",
        "https://w7.pngwing.com/pngs/548/594/png-transparent-finger-millet-organic-food-proso-millet-millet-miscellaneous-food-glitter-thumbnail.png",
        'Millet.md'),
    CropModel(
        "Mushrooms: Agaricus spp",
        "https://w7.pngwing.com/pngs/846/566/png-transparent-mushroom-fungus-mushroom-food-animation-common-mushroom-thumbnail.png",
        'Mushrooms.md'),
    CropModel(
        "Oilpalm:Elaeis Guineensis",
        "https://w7.pngwing.com/pngs/645/649/png-transparent-palm-oil-palm-kernel-oil-cooking-oils-african-oil-palm-oil-miscellaneous-nutrition-oil-thumbnail.png",
        'Oil_palm.md'),
    CropModel(
        "Oil seed:  Helianthus annuus ",
        "https://w7.pngwing.com/pngs/147/606/png-transparent-castor-oil-ricinus-sesame-oil-seed-oil-oil-miscellaneous-olive-oil-thumbnail.png",
        'Oil_seed.md'),
    CropModel(
        "Okra:  Abelmoschus esculentus",
        "https://w7.pngwing.com/pngs/217/236/png-transparent-lady-finger-vegetable-gumbo-ladyfinger-okra-vegetable-fruit-okra-natural-foods-leaf-vegetable-food-thumbnail.png",
        'Okra.md'),
    CropModel(
        "Onion:Allium cepa",
        "https://w7.pngwing.com/pngs/992/6/png-transparent-red-onion-food-vegetable-shallot-yellow-onion-onion-food-nutrition-onion-thumbnail.png",
        'Onion.md'),
    CropModel(
        "Orange:Citrus x sinensis",
        "https://w7.pngwing.com/pngs/193/536/png-transparent-orange-citrus-fruit-orange-juice-fruit-fresh-orange-natural-foods-food-olive-thumbnail.png",
        'Orange.md'),
    CropModel(
        "Papaya:  Carica papaya",
        "https://w7.pngwing.com/pngs/19/949/png-transparent-papaya-fruit-papaya-fruit-auglis-papaya-natural-foods-dried-fruit-food-thumbnail.png",
        'Papaya.md'),
    CropModel(
        "Peaches:  Prunus persica",
        "https://w7.pngwing.com/pngs/642/518/png-transparent-peach-peach-food-orange-sticker-thumbnail.png",
        'Peaches.md'),
    CropModel(
        "Peas:    Pisum sativum",
        "https://w7.pngwing.com/pngs/939/560/png-transparent-pea-pea-natural-foods-food-fruit-thumbnail.png",
        'Pear.md'),
    CropModel(
        "Pine apple:   Ananas comosus",
        "https://w7.pngwing.com/pngs/9/79/png-transparent-pineapple-fruit-pineapple-pineapple-fruit-pineapple-clipart-thumbnail.png",
        'Pine_apple.md'),
    CropModel(
        "Potato:Solanum tuberosum",
        "https://w7.pngwing.com/pngs/320/313/png-transparent-potato-vegetable-tomato-onion-food-potato-food-tomato-onion-thumbnail.png",
        'potato.md'),
    CropModel(
        "Pulse:   Phaseolus vulgaris",
        "https://w7.pngwing.com/pngs/847/797/png-transparent-edamame-soy-milk-organic-food-soybean-pea-food-fruit-vegetables-thumbnail.png",
        'Pulses.md'),
    CropModel(
        "Pumpkin:   Cucurbita pepo",
        "https://w7.pngwing.com/pngs/43/981/png-transparent-pumpkin-pumpkin-pumpkin-natural-foods-food-orange-thumbnail.png",
        'Pumpkin.md'),
    CropModel(
        "Radish:  Raphanus sativus ",
        "https://w7.pngwing.com/pngs/245/365/png-transparent-sugar-beet-vegetable-beetroot-radish-beet-leaf-vegetable-food-leaf-thumbnail.png",
        'Radish.md'),
    CropModel(
        "Red  peppers: Capsicum annuum ",
        "https://w7.pngwing.com/pngs/993/988/png-transparent-red-bell-pepper-bell-pepper-chili-pepper-red-pepper-natural-foods-food-vegetables-thumbnail.png",
        'Red_pepper.md'),
    CropModel(
        "Rice:Orzya Sativa",
        "https://w7.pngwing.com/pngs/975/501/png-transparent-rice-field-rice-cake-rice-pudding-rice-food-grass-plant-stem-thumbnail.png",
        'Rice.md'),
    CropModel(
        "Rose:Rosa rubiginosa",
        "https://w7.pngwing.com/pngs/731/230/png-transparent-red-rose-illustration-blue-rose-red-rose-purple-blue-image-file-formats-thumbnail.png",
        'Rose.md'),
    CropModel(
        "Sorghum:Sorghum bicolor(L.)Moench",
        "https://w7.pngwing.com/pngs/954/242/png-transparent-broom-corn-sweet-sorghum-grain-seed-food-sorghum-white-nutrition-superfood-thumbnail.png",
        'Sorghum.md'),
    CropModel(
        "Spinach: Spinacia oleracea",
        "https://w7.pngwing.com/pngs/644/961/png-transparent-vegetarian-cuisine-leaf-vegetable-spinach-salad-spinach-food-leaf-eating-thumbnail.png",
        'Spinach.md'),
    CropModel(
        "Sugar cane: Saccharum officinarum",
        "https://w7.pngwing.com/pngs/525/609/png-transparent-green-sugarcane-sugarcane-saccharum-officinarum-icon-green-cane-cane-sugar-cane-real-shot-chart-food-green-apple-fruit-thumbnail.png",
        'Sugaracane.md'),
    CropModel(
        "Sunflower:Carthamus tinctorius",
        "https://w7.pngwing.com/pngs/563/723/png-transparent-three-sunflowers-common-sunflower-sunflower-seed-sunflower-sunflower-flower-flowers-thumbnail.png",
        'sunflower.md'),
    CropModel(
        "Sweet potatoes: pomoea batatas",
        "https://w7.pngwing.com/pngs/908/946/png-transparent-sweet-potato-illustration-sweet-potato-nutrition-vegetable-yam-sweet-potato-food-cooking-sweetness-thumbnail.png",
        'sweet_potatoes .md'),
    CropModel(
        "Swiss chard:   Beta vulgaris subsp. cicla.",
        "https://w7.pngwing.com/pngs/815/716/png-transparent-spinach-illustration-chard-switzerland-vegetable-rainbow-swiss-chard-leaf-vegetable-food-leaf-thumbnail.png",
        'Swiss_chard.md'),
    CropModel(
        "Tea: Camellia sinensis",
        "https://w7.pngwing.com/pngs/644/368/png-transparent-green-tea-herbal-tea-tea-bag-green-tea-leaf-tea-herbal-tea-thumbnail.png",
        'Tea.md'),
    CropModel(
        "Teff: Eragrostis tefF",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM8oR3WLydgIvX2aDlxeKDiYWwkWmd2seEsfPUFkmd8_v_Dh20WM-r78m-nifRUj_LCTo&usqp=CAU",
        'Teff.md'),
    CropModel(
        "Tobacco:  Grand title Nicotiana",
        "https://w7.pngwing.com/pngs/516/430/png-transparent-cigarette-tobacco-vices-addictions-thumbnail.png",
        'Tobacco.md'),
    CropModel(
        "Tomato: Solanum lycopersicum",
        "https://w7.pngwing.com/pngs/974/789/png-transparent-tomato-soup-tomato-juice-tomato-thumbnail.png",
        'Tomato.md'),
    CropModel(
        "Turnips: Brassica rapa subsp. rapa",
        "https://w7.pngwing.com/pngs/1008/20/png-transparent-radish-food-turnip-graphy-vegetable-natural-foods-food-photography-thumbnail.png",
        'Turnips.md'),
    CropModel(
        "Watermelons: Genus Citrullus",
        "https://w7.pngwing.com/pngs/816/249/png-transparent-watermelon-fruit-vegetable-food-watermelon-natural-foods-food-orange-thumbnail.png",
        'Watermelons.md'),
    CropModel(
        "Wheat:Triticum",
        "https://w7.pngwing.com/pngs/848/147/png-transparent-wheat-wheat-food-photography-plant-stem-thumbnail.png",
        'Wheat.md'),
    CropModel(
        "Yam: Purple yam, winged yam, greater yam",
        "https://w7.pngwing.com/pngs/360/470/png-transparent-sweet-potato-vegetable-yam-organic-food-sweet-potato-food-nutrition-eating-thumbnail.png",
        'Yam.md'),
    CropModel(
        "Zucchini: Cucurbita pepo",
        "https://w7.pngwing.com/pngs/17/91/png-transparent-green-zucchini-cucumber-israeli-salad-vegetable-fruit-food-cucumber-pickled-cucumber-melon-vegetables-thumbnail.png",
        'Zucchini.md'),
  ];

  List<CropModel> display_list = List.from(main_crops_list);
  void updateList(String value) {
    setState(() {
      display_list = main_crops_list
          .where((element) =>
              element.crop_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search for crops"),
        backgroundColor: Colors.green,
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.volume_up_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return TextToSpeechApp1();
                  },
                ));
              }),
          IconButton(
              icon: Icon(Icons.more_vert_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ));
              }),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 20.0,
            // ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Type here to Search...",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.isEmpty
                  ? const Center(
                      child: Text(
                        "No Result found",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      //itemCount: 3,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MarkDownPage(
                                title: display_list[index].crop_title,
                                mdName:
                                    display_list[index].mdPath ?? 'default.md',
                              );
                            },
                          ));
                        },
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(8.0),
                              title: Text(
                                display_list[index].crop_title!,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: Image.network(
                                  display_list[index].crop_poster_url!),
                            ),
                            const Divider()
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
