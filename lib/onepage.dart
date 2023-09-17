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
        "https://w7.pngwing.com/pngs/787/17/png-transparent-green-chili-serrano-pepper-bell-pepper-chili-pepper-cayenne-pepper-green-chili-pepper-food-birds-eye-chili-vegetables-thumbnail.png",
        'Ethiopian_Peppers.md'),
    CropModel(
        "Ethiopia rosewood: Dalbergia melanoxylon",
        "https://images.unsplash.com/photo-1602062083396-750ace19e226?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UEVQUEVSU3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Ethiopian_rose_wood.md'),
    CropModel("Grape:Vitis Vinifera L.",
        "https://images4.alphacoders.com/884/884560.jpg", 'Grapes.md'),
    CropModel(
        "Green peppers: Capsicum annuum",
        "https://images.unsplash.com/photo-1576181235989-714125739ed7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGdyZWVuJTIwcGVwcGVyc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Green_pepper.md'),
    CropModel(
        "Guavas:  Psidium guajava",
        "https://images.unsplash.com/photo-1629367308496-a2496ba22f88?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z3VhdmFzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Guavas.md'),
    CropModel(
        "Kale:   Brassica oleracea var. sabellica",
        "https://images.unsplash.com/photo-1622943495354-f49d2964094c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8a2FsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Kale.md'),
    CropModel(
        "Legumes:  Chickpea, Garbanzo bean ",
        "https://images.unsplash.com/photo-1564894809611-1742fc40ed80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVndW1lc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Legumes.md'),
    CropModel(
        "Lemon:Citrus Limon",
        "https://images.unsplash.com/photo-1568569350062-ebfa3cb195df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGxlbW9ufGVufDB8fDB8fHww&w=1000&q=80",
        'Lemon.md'),
    CropModel(
        "Lettuce:  Lactuca sativa",
        "https://images.unsplash.com/photo-1515356956468-873dd257f911?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bGV0dHVjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Lttuce.md'),
    CropModel(
        "Limes:   Citrus aurantifolia",
        "https://images.unsplash.com/photo-1578855691621-8a08ea00d1fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGltZXMlNUN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Limes.md'),
    CropModel("Maize:Zea mays", "https://wallpapercave.com/wp/wp2570209.jpg",
        'Maize.md'),
    CropModel(
        "Mandarin:  Kid glove oranges, loose-skin oranges, tangerine oranges, tangerines",
        "https://images.unsplash.com/photo-1603638925702-37e1936b6d19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFuZGFyaW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Mandarin.md'),
    CropModel(
        "Mango:Mangifera Indica",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Mango.md'),
    CropModel(
        "Millet:Pennisetum glaucom",
        "https://media.istockphoto.com/id/1480315434/photo/millet-or-sorghum-an-important-cereal-crop-in-field.webp?b=1&s=170667a&w=0&k=20&c=O_kCbAp6ow7i7RrTwKKjatkmDHZCR2UyL1MWaNPSbKI=",
        'Millet.md'),
    CropModel(
        "Mushrooms: Agaricus spp",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_Cy-AJpX0fNbrLyD1e4VDO-RmbnA6HzrVMA&usqp=CAU",
        'Mushrooms.md'),
    CropModel(
        "Oilpalm:Elaeis Guineensis",
        "https://images.squarespace-cdn.com/content/v1/5e14f5138c826a2d6387038e/1595994935871-QFIGQSMHF70JBM26C7ZD/63074437_l_edited_v2.jpg",
        'Oil_palm.md'),
    CropModel(
        "Oil seed:  Helianthus annuus ",
        "https://plus.unsplash.com/premium_photo-1683547021445-21d157e96d7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8b2lsJTIwc2VlZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Oil_seed.md'),
    CropModel(
        "Okra:  Abelmoschus esculentus",
        "https://images.unsplash.com/photo-1632742315671-d77e6feed874?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG9rcmF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Okra.md'),
    CropModel(
        "Onion:Allium cepa",
        "https://media.istockphoto.com/id/182501139/photo/red-onion.jpg?s=612x612&w=0&k=20&c=7Lb6xfyhxDabRgoPTkBmQkImNRsKdbAJ2bdWsKWcq5M=",
        'Onion.md'),
    CropModel(
        "Orange:Citrus x sinensis",
        "https://i.pinimg.com/originals/54/30/b3/5430b3f6290a4bfc483eafc3bba2d4b5.png",
        'Orange.md'),
    CropModel(
        "Papaya:  Carica papaya",
        "https://images.unsplash.com/photo-1581242335635-ce8631489ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGFwYXlhfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Papaya.md'),
    CropModel(
        "Peaches:  Prunus persica",
        "https://images.unsplash.com/photo-1634021607990-e3c98ff1e76d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlYWNoZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Peaches.md'),
    CropModel(
        "Peas:    Pisum sativum",
        "https://images.unsplash.com/photo-1590685006710-2b478c69b26b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVhc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Pear.md'),
    CropModel(
        "Pine apple:   Ananas comosus",
        "https://images.unsplash.com/photo-1512578101635-3d8804b016c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGluZSUyMGFwcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Pine_apple.md'),
    CropModel("Potato:Solanum tuberosum",
        "https://images7.alphacoders.com/376/376174.jpg", 'potato.md'),
    CropModel(
        "Pulse:   Phaseolus vulgaris",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTdKOf6KqvhNVZF4DGaTUN3Xms1BgCkffXA&usqp=CAU",
        'Pulses.md'),
    CropModel(
        "Pumpkin:   Cucurbita pepo",
        "https://images.unsplash.com/photo-1566220036246-08bc2fc902a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHVtcGtpbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Pumpkin.md'),
    CropModel(
        "Radish:  Raphanus sativus ",
        "https://images.unsplash.com/photo-1593026122758-19bebc625104?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFkaXNofGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Radish.md'),
    CropModel(
        "Red  peppers: Capsicum annuum ",
        "https://images.unsplash.com/photo-1566045023256-fb2339a82526?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHJlZCUyMHBlcHBlcnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        'Red_pepper.md'),
    CropModel(
        "Rice:Orzya Sativa",
        "https://w0.peakpx.com/wallpaper/800/691/HD-wallpaper-summer-growing-rice-plant-graphy-closeup.jpg",
        'Rice.md'),
    CropModel(
        "Rose:Rosa rubiginosa",
        "https://images.unsplash.com/photo-1601039641847-7857b994d704?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZvY2Fkb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Rose.md'),
    CropModel(
        "Sorghum:Sorghum bicolor(L.)Moench",
        "https://media.istockphoto.com/id/179072932/photo/close-up-of-sorghum-in-morning-sun-light.jpg?s=612x612&w=0&k=20&c=IIYcKWtokaVXlfNqJekS4_R6wHKiBpoo1rqHLGLrZ_M=",
        'Sorghum.md'),
    CropModel(
        "Spinach: Spinacia oleracea",
        "https://images.unsplash.com/photo-1576045057995-568f588f82fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpbmFjaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Spinach.md'),
    CropModel(
        "Sugar cane: Saccharum officinarum",
        "https://media.istockphoto.com/id/965303384/photo/the-sugar-cane.webp?b=1&s=170667a&w=0&k=20&c=yRcBuHSqaSyGvXAEyzuwDYGghvmjqDEV9c0A_6hCvcc=",
        'Sugaracane.md'),
    CropModel(
        "Sunflower:Carthamus tinctorius",
        "https://i.pinimg.com/736x/54/a4/22/54a4221459e9ea656250d17e0453c7ac--sunflowers-bipolar.jpg",
        'sunflower.md'),
    CropModel(
        "Sweet potatoes: pomoea batatas",
        "https://images.unsplash.com/photo-1580324613766-3b5d415bb34a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3dlZXQlMjBwb3RhdG9lc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'sweet_potatoes .md'),
    CropModel(
        "Swiss chard:   Beta vulgaris subsp. cicla.",
        "https://plus.unsplash.com/premium_photo-1666270423761-b39aeb537ea7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3dpc3MlMjBjaGFyZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Swiss_chard.md'),
    CropModel(
        "Tea: Camellia sinensis",
        "https://c4.wallpaperflare.com/wallpaper/465/306/506/fresh-green-tea-leaves-sunlight-wallpaper-preview.jpg",
        'Tea.md'),
    CropModel(
        "Teff: Eragrostis tefF",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM8oR3WLydgIvX2aDlxeKDiYWwkWmd2seEsfPUFkmd8_v_Dh20WM-r78m-nifRUj_LCTo&usqp=CAU",
        'Teff.md'),
    CropModel(
        "Tobacco:  Grand title Nicotiana",
        "data:image/jpeg;base64,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",
        'Tobacco.md'),
    CropModel(
        "Tomato: Solanum lycopersicum",
        "https://free4kwallpapers.com/uploads/originals/2015/05/06/tomato-bowl.jpg",
        'Tomato.md'),
    CropModel(
        "Turnips: Brassica rapa subsp. rapa",
        "https://www.shutterstock.com/image-photo/beautiful-green-turnip-leaves-garden-radish-2187333855",
        'Turnips.md'),
    CropModel(
        "Watermelons: Genus Citrullus",
        "https://images.unsplash.com/photo-1582281298055-e25b84a30b0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8d2F0ZXJtZWxvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        'Watermelons.md'),
    CropModel(
        "Wheat:Triticum",
        "https://w0.peakpx.com/wallpaper/788/251/HD-wallpaper-wheat-crop-green-nature-view.jpg",
        'Wheat.md'),
    CropModel(
        "Yam: Purple yam, winged yam, greater yam",
        "https://images.unsplash.com/photo-1580324613766-3b5d415bb34a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8eWFtfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        'Yam.md'),
    CropModel(
        "Zucchini: Cucurbita pepo",
        "https://images.unsplash.com/photo-1563252722-6434563a985d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8enVjY2hpbml8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
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
